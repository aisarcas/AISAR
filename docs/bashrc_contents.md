.bashrc file contents:

```# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
shopt -s expand_aliases

#modules_shell="bash"
#[ -n module ] && module purge
umask 002

export AISAR_HOME=~/AISAR
export JOBSCHEDULER=LSF
export QUEUENAME=general
export SCRATCHDIR=/data/xiechou

export WORKDIR=/data/xiechou
export USER_PREFERRED=$USER
export DOWNLOADHOST=local
export PROJECTNAME=insarlab
export SENTINEL_ORBITS=${WORKDIR}/S1orbits
export SENTINEL_AUX=${WORKDIR}/S1aux
export WEATHER_DIR=${WORKDIR}/WEATHER
export TESTDATA_ISCE=${WORKDIR}/TESTDATA_ISCE


alias s.aisar='cd $AISAR_HOME; source setup/environment.bash; source setup/alias.bash;' 
export HISTSIZE=1000
export HOST=centos7.bogon105.com
```