# Installation guide
How to install AISAR InSAR code.

* Set the required environment variables (`$RSMASINSAR_HOME, $JOBSCHEDULER, $QUEUENAME, $SCRATCHDIR`) in your [.bashrc](./bashrc_contents.md) 
. There are several other customizable environment variables. The defaults are given [here](./custom_variables.md). You may want to set your variables in an external file as we do in Miami (see [example](https://gist.github.com/falkamelung/f1281c38e301a3296ab0483f946cac4b)).

- 

* Go to the area where you want to install the code:

```
cd ~/aisar
```

* Install the code using the commands below (you need a reasonable recent git version ). 

```
bash
[ -f ~/local_git/miniconda3/bin/git ] && alias git=~/local_git/miniconda3/bin/git	

git clone https://github.com/xiechou/AISAR.git ;
cd aisar


cd setup
rm -r ../3rdparty/miniconda3
miniconda_version=Miniconda3-4.6.14-Linux-x86_64.sh
wget http://repo.continuum.io/miniconda/$miniconda_version --no-check-certificate #; if ($? != 0) exit; 
chmod 755 $miniconda_version
mkdir -p ../3rdparty
./$miniconda_version -b -p ../3rdparty/miniconda3
../3rdparty/miniconda3/bin/conda config --add channels conda-forge
../3rdparty/miniconda3/bin/conda install --yes --file ./conda.txt
```