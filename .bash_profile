# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export DOCKERHOST=172.17.0.1
export ORACLE_HOME=/usr/lib/oracle/19.8/client64
NVM_DIRS=(/home/jbarreto/.nvm/versions/node/v*/bin)
NVM_PATH=`echo "${NVM_DIRS[@]}" | tr " " "\n" | sort -fVr | head -c-1 | tr "\n" ":"`
#NVM_PATH=`printf "%s:" "${NVM_DIRS[@]}"`
export PATH=$NVM_PATH:$ORACLE_HOME/bin:$PATH
export LD_LIBRARY_PATH=$ORACLE_HOME/lib
