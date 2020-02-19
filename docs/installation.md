# Installation guide
How to install AISAR InSAR code.

* Set the required environment variables in your [.bashrc](./bashrc_contents.md) 
. There are several other customizable environment variables. The defaults are given [here](./custom_variables.md). 

* Go to the area where you want to install the code:

```
cd ~/
```

* Install the code using the commands below (you need a reasonable recent git version ). 

```
bash
git clone https://github.com/xiechou/AISAR.git ;
cd AISAR/setup

rm -r ../3rdparty/miniconda3
miniconda_version=Miniconda3-4.6.14-Linux-x86_64.sh
wget http://repo.continuum.io/miniconda/$miniconda_version --no-check-certificate #; if ($? != 0) exit; 
chmod 755 $miniconda_version
mkdir -p ../3rdparty
./$miniconda_version -b -p ../3rdparty/miniconda3
../3rdparty/miniconda3/bin/conda config --add channels conda-forge


```

* Install gdal and fftw lib for AISAR
```
../3rdparty/miniconda3/bin/conda install gdal --yes
ln -s ../3rdparty/miniconda3/lib/libgdal.so ../3rdparty/miniconda3/lib/libgdal1.5.0.so.1
mv setup/*fftw.so.2 ../3rdparty/miniconda3/lib
mv setup/*fftw.h ../3rdparty/miniconda3/include
```