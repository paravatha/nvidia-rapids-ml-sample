#!/bin/bash

# Python setup
/opt/conda/condabin/conda create -n py38-rapids-21.12 -c rapidsai -c nvidia -c conda-forge rapids=21.12 python=3.8 cudatoolkit=11.5 dask-sql
/opt/conda/condabin/conda init bash
/opt/conda/condabin/conda activate py38-rapids-21.12
pip install ipykernel
python -m ipykernel install --name=py38-rapids-21.12

# Julia setup
mkdir julia
cd /dli/task/julia
wget https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.1-linux-x86_64.tar.gz
tar zxvf julia-1.7.1-linux-x86_64.tar.gz
export PATH="$PATH:/dli/task/julia/julia-1.7.1/bin"
julia -e 'using Pkg; Pkg.add("IJulia")' 
