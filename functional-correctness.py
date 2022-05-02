import os
import re
import shutil
import sys
import numpy as np
import json
import time
from collections import defaultdict

def make_tf(tf_path, easy, human=False):
    os.system(f'terraform -chdir={tf_path} init')
    if not easy:
        os.system(f'terraform -chdir={tf_path} plan -out=binary')
        os.system(f'terraform -chdir={tf_path} show -json binary > {tf_path}/plan.json')
    if easy:
        os.system(f'terraform -chdir={tf_path} plan -json > {tf_path}/plan.json')
    
    if human:
        file = open(str(tf_path)+'/plan.json', 'r', encoding='utf-8', errors='ignore')
        stringPlan = file.read()
        file.close()
        if stringPlan == '':
            shutil.rmtree(tf_path)
            sys.exit('Error '+tf_path)
    try:
        shutil.rmtree(f'{tf_path}/.terraform')
    except:
        print('----------------------------------')
        print(f"Can't delete {tf_path}/.terraform")

def remove_identifiers(txt_file):
    with open(txt_file, 'r', encoding='utf-8', errors='ignore') as file:
        identifiers = {}
        reference = {}
        i = 0
        for line in file:
            words = line.split(' ')
            if words[0] == 'resource' and len(words)>=3:
                reference[words[1][1:-1]+'.'+words[2][1:-1]] = words[1][1:-1]+'.name_'+str(i)
                identifiers[words[1]+' '+words[2]] = words[1]+' "name_'+str(i)+'"'
                i+=1
            if words[0]=='data' and len(words)>=3:
                reference['data.'+words[1][1:-1]+'.'+words[2][1:-1]] = 'data.'+words[1][1:-1]+'.name_'+str(i)
                identifiers[words[1]+' '+words[2]] = words[1]+' "name_'+str(i)+'"'
                i+=1
            if words[0]=='variable' and len(words)>=2:
                reference['var.'+words[1][1:-1]] = 'var.name_'+str(i)
                identifiers['variable '+words[1]] = 'variable "name_'+str(i)+'"'
                i+=1
            if words[0]=='output' and len(words)>=2:
                reference['output.'+words[1][1:-1]] = 'output.name_'+str(i)
                identifiers['output '+words[1]] = 'output "name_'+str(i)+'"'
                i+=1
        file.seek(0)
        main = file.read()

    for k in sorted(identifiers.keys(), reverse=True):
        main = main.replace(k, identifiers[k])
    for k in sorted(reference.keys(), reverse=True):
        main = main.replace(k, reference[k])
    return main
    

def compare_json(ref_path, generated):
    ref_file = open(ref_path, 'r', encoding='utf-8', errors='ignore')
    reference = ref_file.read()
    for folder in sorted(os.listdir(generated)):
        with open(generated+'/'+folder+'/plan.json', 'r', encoding='utf-8', errors='ignore') as file:
            json_plan = file.read()
            if json_plan == reference:
                print(folder+' are identical')
            else:
                print(folder+' are different')

def clean_json(input):
    input = re.sub('"(tags|tags_all)":.+?},','', input)
    input = re.sub('"(description|name|constant_value)":".+?"','', input)
    return  re.sub('({|}|,|[|]|"|:)','', input)

def remove_brackets(input):
    input = re.sub('\[.+\]','', input)
    return input

def pass1(provider, model):
    task_names = []
    out_txt = open(f'data/{provider}/result_{model}_{provider}.txt', 'w', encoding='utf-8', errors='ignore')
    out_txt.write('Task | Success rate | Errors\n')
    total_success_rate = []
    for task in sorted(os.listdir(f'data/{provider}/human-tf')):
        task_names.append(task)
        n_samples = len(os.listdir(f'data/{provider}/{model}-tf/{task}'))
        # find the number of duplicates
        i = 0
        sample_to_int = {}
        distr = [0]*n_samples
        for sample in sorted(os.listdir(f'data/{provider}/{model}-tf/{task}')):
            sample_to_int[sample]=i
            if not os.path.exists(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json'):
                duplicate = os.listdir(f'data/{provider}/{model}-tf/{task}')[0]
                distr[sample_to_int[duplicate]]+=1
            else:
                distr[i] +=1
            i+=1
        print('Distribution ', distr)
        # calculate success rate on tasks
        errors = []
        human_file = open(f'data/{provider}/human-tf/{task}/plan.json', 'r', encoding='utf-8', errors='ignore')
        human_json = human_file.read()
        human_json = clean_json(human_json)
        success_rate=[0]*n_samples
        for sample in sorted(os.listdir(f'data/{provider}/{model}-tf/{task}')):
            if os.path.exists(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json'):
                model_file = open(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json', 'r', encoding='utf-8', errors='ignore')
                model_json = model_file.read()
                model_json = clean_json(model_json)
                if model_json == human_json:
                    success_rate[sample_to_int[sample]] += distr[sample_to_int[sample]]
                else: 
                    errors.append(int(sample[7:]))

        total_success_rate.append(np.mean(success_rate))
        out_txt.write(f'{task} | {np.mean(success_rate)*100}% | {sorted(errors)} \n')
    out_txt.write(f'Average success rate {np.mean(total_success_rate)*100}%\n')
    
def compile_check(provider, model):
    task_names = []
    out_txt = open(f'data/{provider}-easy/result_{model}_{provider}.txt', 'w', encoding='utf-8', errors='ignore')
    out_txt.write('Task | Success rate | Errors\n')
    total_success_rate = []
    for task in sorted(os.listdir(f'data/{provider}-easy/human-tf')):
        task_names.append(task)
        n_samples = len(os.listdir(f'data/{provider}/{model}-tf/{task}'))
        # find the number of duplicates
        i = 0
        sample_to_int = {}
        distr = [0]*n_samples
        for sample in sorted(os.listdir(f'data/{provider}/{model}-tf/{task}')):
            sample_to_int[sample]=i
            if not os.path.exists(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json'):
                duplicate = os.listdir(f'data/{provider}/{model}-tf/{task}')[0]
                distr[sample_to_int[duplicate]]+=1
            else:
                distr[i] +=1
            i+=1
        print('Distribution ', distr)
        # calculate success rate on tasks
        success_rate=[0]*n_samples
        errors = []
        human_file = open(f'data/{provider}-easy/human-tf/{task}/plan.json', 'r', encoding='utf-8', errors='ignore')
        human_plan = human_file.readlines()
        for sample in sorted(os.listdir(f'data/{provider}-easy/{model}-tf/{task}')):
            correct = distr[sample_to_int[sample]]
            model_file = open(f'data/{provider}-easy/{model}-tf/{task}/{sample}/plan.json', 'r', encoding='utf-8', errors='ignore')
            model_plan = model_file.readlines()
            for i in range(len(human_plan)-1):
                line_human = json.loads(human_plan[i])
                if line_human['@level'] =='info':
                    if len(model_plan) > i and '{' in model_plan[i]:
                        line_model = json.loads(model_plan[i])
                        if remove_brackets(line_model['@message']) != remove_brackets(line_human['@message']):
                            correct = 0
                            if int(sample[7:]) not in errors:
                                errors.append(int(sample[7:]))
                    else:
                        correct = 0
                        if int(sample[7:]) not in errors:
                                errors.append(int(sample[7:]))
                        #print('length error')
            success_rate.append(correct)
            
        if success_rate == []: success_rate=[0]
        total_success_rate.append(np.mean(success_rate))
        out_txt.write(f'{task} | {np.mean(success_rate)*100}% | {sorted(errors)} \n')
    out_txt.write(f'Average success rate {np.mean(total_success_rate)*100}%\n')

def make_json_human(provider):
    print('------------------------------------\nhuman')
    for task in sorted(os.listdir(f'data/{provider}/human-txt')):
        print(task)
        tf_path = f'data/{provider}/human-tf/{task[:-4]}'
        if not os.path.exists(tf_path):
            os.makedirs(tf_path)
            clean_txt = remove_identifiers(f'data/{provider}/human-txt/{task}')
            tf_file = open(tf_path+'/main.tf', 'w', encoding='utf-8', errors='ignore')
            tf_file.write(clean_txt)
            tf_file.close()
            easy = True if 'easy' in provider else False
            make_tf(tf_path, easy, human=True)

def make_json_model(provider, model):
    print(f'------------------------------------\n{model}')
    if not os.path.exists(f'data/{provider}/{model}-tf'): os.makedirs(f'data/{provider}/{model}-tf')
    for task in sorted(os.listdir(f'data/{provider}/{model}-txt')):
        print(task)

        hash_to_sample = {}
        sample_to_int = defaultdict(int)
        
        tf_path = f'data/{provider}/{model}-tf/{task}'
        if not os.path.exists(tf_path): 
            os.makedirs(tf_path)

        for sample_txt in sorted(os.listdir(f'data/{provider}/{model}-txt/{task}')):
            sample = sample_txt[:-4]
            if not os.path.exists(f'{tf_path}/{sample}'):
                os.makedirs(f'{tf_path}/{sample}')
                clean_txt = remove_identifiers(f'data/{provider}/{model}-txt/{task}/{sample_txt}',)
                
                if hash(clean_txt) not in hash_to_sample:
                    hash_to_sample[hash(clean_txt)] = sample
                    tf_file = open( f'{tf_path}/{sample}/main.tf', 'w', encoding='utf-8', errors='ignore')
                    tf_file.write(clean_txt)
                    tf_file.close()
                    easy = True if 'easy' in provider else False
                    make_tf(f'{tf_path}/{sample}', easy)
                    sample_to_int[sample] += 1
                else:
                    duplicate = hash_to_sample[hash(clean_txt)]
                    sample_to_int[duplicate] += 1
                    tf_file = open(f'{tf_path}/{sample}/{duplicate}.txt', 'w', encoding='utf-8', errors='ignore')

if __name__ == "__main__":
    model = 'codeparrot'
    for provider in ['aws', 'aws-easy', 'gcp', 'gcp-easy', 'aws', 'aws-easy']:
        print(f'-----------------------------------------\n{provider}')
        make_json_human(provider)
        make_json_model(provider, 'codeparrot')
        easy = True if 'easy' in provider else False
        if not easy:
            pass1(provider, model)
        else:
            compile_check(provider, model)
            
