# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
shopt -s expand_aliases

#modules_shell="bash"
#[ -n module ] && module purge
umask 002

alias s.bgood='s.bnew'

export AISAR_HOME=~/aisar
export GIANT_HOME=~/giant/GIAnT
export RSMASINSAR_HOME=~/rsmas_insar
#export RSMASINSAR_HOME=~/test/test1/rsmas_insar
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


alias s.bnew='cd $RSMASINSAR_HOME; source setup/environment.bash;'  
alias s.bnew='cd $RSMASINSAR_HOME; source ~/accounts/platforms_defaults.bash; source setup/environment.bash; source ~/accounts/alias.bash; source ~/accounts/login_alias.bash; cd -;'
alias s.giant='cd $GIANT_HOME; source ~/giant/setup/environment.bash;' 
alias s.aisar='cd $AISAR_HOME; source setup/environment.bash; source ~/accounts/alias.bash;' 
export HISTSIZE=1000
export HOST=centos7.bogon105.com