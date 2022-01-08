su 
apt-get install vim  
apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
apt-get install update-manager-core
apt-get install cuda

conda create -n py38-rapids-21.12 -c rapidsai -c nvidia -c conda-forge rapids=21.12 python=3.8 cudatoolkit=11.5 dask-sql jupyterlab
conda init bash
conda activate py38-rapids-21.12
pip install --user ipykernel
python -m ipykernel install --user --name=rapids-21.12