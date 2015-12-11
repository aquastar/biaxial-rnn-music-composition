sudo apt-get update
sudo apt-get install -y gcc g++ gfortran build-essential git wget linux-image-generic libopenblas-dev python-dev python-pip python-nose python-numpy python-scipy 

#sudo pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git 
wget https://pypi.python.org/packages/source/T/Theano/Theano-0.7.0.tar.gz#md5=099a9575801b71252b5bbbc3c34ed45a
tar -xzvf Theano-0.7.0.tar.gz
cd Theano-0.7.0
sudo python setup.py install

sudo apt-get update
sudo apt-get -y dist-upgrade
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.0-28_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1404_7.0-28_amd64.deb
sudo apt-get update
sudo apt-get install -y cuda  
echo "\nexport PATH=/usr/local/cuda/bin:$PATH\n\nexport LD_LIBRARY_PATH=/usr/local/cuda/lib64" >> ~/.bashrc  
echo "[global]\nfloatX=float32\ndevice=gpu\noptimizer=fast_compile\nmode=FAST_RUN\n\n[nvcc]\nfastmath=True\n\n[cuda]\nroot=/usr/local/cuda\n" >> ~/.theanorc
sudo pip install theano-lstm python-midi
sudo apt-get install vim git curl
curl http://j.mp/spf13-vim3 -L -o - | sh