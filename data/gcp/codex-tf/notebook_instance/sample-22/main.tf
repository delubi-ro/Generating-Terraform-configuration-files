terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_compute_instance" "name_0" {
  name         = "notebook-instance"
  machine_type = "e2-medium"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/deeplearning-platform-release/global/images/tf-latest-cpu"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    startup-script = "sudo apt-get update && sudo apt-get install -y python-pip && pip install --upgrade pip && pip install jupyter && pip install tensorflow && pip install keras && pip install matplotlib && pip install pandas && pip install scikit-learn && pip install seaborn && pip install scipy && pip install numpy && pip install pillow && pip install opencv-python && pip install h5py && pip install tqdm && pip install plotly && pip install bokeh && pip install ggplot && pip install plotnine && pip install missingno && pip install pyarrow && pip install xgboost && pip install shap && pip install lime && pip install eli5 && pip install pdpbox && pip install pyspark && pip install dask && pip install dask-ml && pip install dask-xgboost && pip install dask-ml && pip install dask-tensorflow && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-cuda && pip install dask-cudf && pip install dask-c
}

