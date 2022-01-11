# nvidia-rapids-ml-sample

## Check Unix version

cat /etc/lsb-release

uname -a

## upgrade python

./upgrade.sh

./setup_env.sh 

python --version

which python

unlink /opt/conda/envs/rapids/bin/python

ln -s /opt/conda/envs/py38-rapids-21.12/bin/python /opt/conda/envs/rapids/bin/python

## Restart for changes to take effect

## Julia setup

wget https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.1-linux-x86_64.tar.gz

tar zxvf julia-1.7.1-linux-x86_64.tar.gz

mkdir julia && cd julia

export PATH="$PATH:/dli/task/julia/julia-1.7.1/bin"

julia -e 'using Pkg; Pkg.add("IJulia")' 

### REPL
using Pkg

Pkg.add("IJulia")

using Pkg; Pkg.activate("/dli/task/DataScience")

Pkg.instantiate()

## Misc

do-release-upgrade &&  apt-get autoremove

vi /etc/update-manager/release-upgrades


