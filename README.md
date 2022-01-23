# nvidia-rapids-ml-sample

## Check Unix version

cat /etc/lsb-release
lsb_release -a  
uname -a

## check ubuntu lts setup
vi /etc/update-manager/release-upgrades


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

mkdir /dli/task/julia && cd /dli/task/julia

export PATH="$PATH:/dli/task/julia/julia-1.7.1/bin"

julia -e 'using Pkg; Pkg.add("IJulia")' 

cd /dli/task/julia
git clone https://github.com/JuliaAcademy/DataScience

### REPL
using Pkg; Pkg.activate("/dli/task/julia/DataScience")

Pkg.instantiate()

using Pkg
Pkg.add("IJulia")

## Misc

### check ec2 instance type
curl http://169.254.169.254/latest/meta-data/instance-type

do-release-upgrade &&  apt-get autoremove



