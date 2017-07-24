## Welcome to AISAR!

[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/xiechou/AISAR.git)
[![Badges](http://img.shields.io/:badges-7/7-ff6799.svg)](https://github.com/xiechou/AISAR.git)

AISAR is a Python package for InSAR (Interferometric Synthetic Aperture Radar) time series analysis.
It reads stack of orginal SLC data, and produces three dimensional (2D in space and 1D in time) ground displacement.   

### 1. Installation   

#### 1.1 Pre-requisite
We recommend using Anaconda to install the python environment and the prerequisite packages. You will need:   
- [Python2.7](https://www.continuum.io/downloads)
- Numpy
- Scipy
- h5py
- Matplotlib

##### 1.2 AISAR   
To use the package add the path to AISAR directory to your $PYTHONPATH and add AISAR to your $path. Depending on your shell you may use commands such as the following examples to setup pysar:   

    cd ~/Documents/development/python
    git clone https://github.com/xiechou/AISAR.git
   
Then add the following to your source file:
For bash user, add to your .bashrc file:   
    export AISAR_HOME="~/python/AISAR"
    export PYTHONPATH=${PYSAR_HOME}:${PYTHONPATH}   
    export PATH="${PYSAR_HOME}/pysar:$PATH"   
   
  
### 2. Running AISAR


    .py 

   
### 3. Documentation
   
