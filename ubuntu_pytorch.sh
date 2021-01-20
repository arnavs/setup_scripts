sudo apt update && sudo apt upgrade -y
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash Anaconda3-2020.11-Linux-x86_64.sh
rm Anaconda3-2020.11-Linux-x86_64.sh
sudo apt update -y
sudo apt-get upgrade -y
export PATH=~/anaconda3/bin:$PATH
conda install pytorch cudatoolkit=11.0 -c pytorch
pip install -r pytorch_requirements.txt