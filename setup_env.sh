#!/bin/bash
conda create -n py38-rapids-21.12 -c rapidsai -c nvidia -c conda-forge rapids=21.12 python=3.8 cudatoolkit=11.5 dask-sql jupyterlab
conda init bash
conda activate py38-rapids-21.12
pip install ipykernel
python -m ipykernel install --name=rapids-21.12
