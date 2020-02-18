#!/usr/bin/env bash
echo "sourcing ${AISAR_HOME}/setup/environment.bash ..."

##############  PYTHON  ##############
export PYTHON3DIR=${AISAR_HOME}/3rdparty/miniconda3
export CONDA_ENVS_PATH=${PYTHON3DIR}/envs
export CONDA_PREFIX=${PYTHON3DIR}
export PROJ_LIB=${PYTHON3DIR}/share/proj
export GDAL_DATA=${PYTHON3DIR}/share/gdal

export PYTHONPATH=${PYTHONPATH-""}
export PYTHONPATH=${PYTHONPATH}:${PYTHON3DIR}/lib/python3.7/site-packages
#export PYTHONPATH=${PYTHONPATH}:${AISAR_HOME}/geocode
#export PYTHONPATH=${PYTHONPATH}:${AISAR_HOME}/SCR
#export PYTHONPATH=${PYTHONPATH}:${AISAR_HOME}/sovler
export PYTHONPATH=${PYTHONPATH}:${AISAR_HOME}/aisar 
export PYTHONPATH=${PYTHONPATH}:${AISAR_HOME}
export PYTHONPATH_RSMAS=${PYTHONPATH}

######### Ignore warnings ############
export PYTHONWARNINGS="ignore:Unverified HTTPS request"

#####################################
############  PATH  #################
#####################################

export GAMMA_HOME=${AISAR_HOME}/3rdparty/GAMMA_SOFTWARE-20111212
export MSP_HOME=$GAMMA_HOME/MSP
export ISP_HOME=$GAMMA_HOME/ISP
export DIFF_HOME=$GAMMA_HOME/DIFF
export LAT_HOME=$GAMMA_HOME/LAT
export DISP_HOME=$GAMMA_HOME/DISP
export IPTA_HOME=$GAMMA_HOME/IPTA
export PATH=$MSP_HOME/bin:$MSP_HOME/scripts:$ISP_HOME/bin:$ISP_HOME/scripts:$DIFF_HOME/bin:$DIFF_HOME/scripts:$LAT_HOME/bin:$LAT_HOME/scripts:$DISP_HOME/bin:$DISP_HOME/scripts:$IPTA_HOME/bin:$IPTA_HOME/scripts:$PATH

export PATH=${PATH}:${AISAR_HOME}/scripts:${AISAR_HOME}/source

export PATH=${PATH}:${PYTHON3DIR}/lib/python3.7/site-packages
export PATH=${PYTHON3DIR}/bin:${PATH}
export PATH=${PATH}:${PROJ_LIB}


export LD_LIBRARY_PATH=${LD_LIBRARY_PATH-""}
export LD_LIBRARY_PATH=${PYTHON3DIR}/lib
export LD_RUN_PATH=${PYTHON3DIR}/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GAMMA_HOME/lib

if [ -n "${prompt}" ]
then
    echo "AISAR_HOME:" ${AISAR_HOME}
    echo "PYTHON3DIR:     " ${PYTHON3DIR}
fi
