# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source git completions
if [ -f ~/.config/scripts/git_completions.sh ]; then
	source ~/.config/scripts/git_completions.sh;
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vi='vimx'
alias vim='vimx'

alias slasd="time docker-compose -f docker-compose.yml -f docker-compose.linux.yml"
alias slasdu="slasd up -d"
alias slasduf="slasdu --force-recreate --build"
alias slasdr="slasdu --force-recreate --build --no-deps"
alias slasdd="slasd down"
alias slasdl="slasd logs -f --tail='1000'"
alias slasdufl="slasduf && slasdl"
alias slasdul="slasdu && slasdl"

alias slasD="slasd -f docker-compose.local.yml"
alias slasDu="slasD up -d"
alias slasDuf="slasDu --force-recreate --build"
alias slasDr="slasDu --force-recreate --build --no-deps"
alias slasDd="slasD down"
alias slasDl="slasD logs -f --tail='1000'"
alias slasDb="slasD build --parallel && slasDu --force-recreate"
alias slasDufl="slasDuf && slasDl"
alias slasDul="slasDu && slasDl"
alias slasDbl="slasDb && slasDul"

alias slasc="time docker-compose -f docker-compose.webapps.yml -f docker-compose.webapps.linux.yml"
alias slascu="slasc up -d"
alias slascuf="slascu --force-recreate --build"
alias slascr="slascu --force-recreate --build --no-deps"
alias slascd="slasc down"
alias slascl="slasc logs -f --tail='1000'"
alias slascb="slasc build --parallel"
alias slascul="slascu && slascl"
alias slascufl="slascuf && slascl"
alias slascbl="slascb && slascul"

alias slasvpn="sudo openconnect --script /etc/vpnc/vpnc-script https://vulcan.fslso.com/ --servercert pin-sha256:DBApSF+E7U8jIwdJq/7yTarfC5N+ScJWT1hR3vQ4dPY="
alias update_slas="cd ~/work && docker-compose pull"

genpw() {
   tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\\]^_\`{|}~' </dev/urandom | head -c ${1:-'16'}  ; echo ;
};

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export HISTSIZE=20000
export HISTFILESIZE=200000
export EDITOR=vi
