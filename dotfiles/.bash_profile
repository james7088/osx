PATH=/usr/local/bin:$PATH
export HISTSIZE=10000
#export HISTIGNORE="ls:exit:df:w:h:ll:apollo:top"
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

V=.vcloud-int.net
Q=.vcloudqa-int.net
alias con_twc="sudo /usr/local/bin/openconnect --user=E222249 vpn-nce.twcable.com"
#alias con_twc="sudo /usr/local/bin/openconnect --user=E222249 cdc-era.twcable.com"
alias con_an01="sudo /usr/local/bin/openconnect --no-cert-check  --user=jtrickel 209.235.112.20"
alias con_ch01="sudo /usr/local/bin/openconnect --no-cert-check  --user=jtrickel 207.211.240.36"
alias con_re01="sudo /usr/local/bin/openconnect --no-cert-check --user=jtrickel 213.35.4.36"
alias con_wo01="sudo /usr/local/bin/openconnect --no-cert-check --user=jtrickel 213.35.0.36"
alias con_qa="sudo /usr/local/bin/openconnect --no-cert-check  --user=jtrickel 209.235.62.212"
alias rdps='open -na /Applications/Microsoft\ Remote\ Desktop.app/Contents/MacOS/Microsoft\ Remote\ Desktop --args'
alias an_mirror='ssh plat@209.235.68.21'
alias ch_mirror='ssh plat@207.211.242.127'
alias sa_mirror='ssh plat@204.216.66.29'
alias wo_mirror='ssh plat@213.35.2.14'
alias re_mirror='ssh plat@213.35.6.61'
alias sn='ssh -p 8822 192.168.1.10'
alias sshaal='ssh an01-auto-lin$V'
alias sshcal='ssh ch01-auto-lin$V'
alias sshral='ssh re01-auto-lin$V'
alias sshsal='ssh sa01-auto-lin$V'
alias sshwal='ssh wo01-auto-lin$V'
alias sshbjl1='ssh rnd@22.238.128.44'
alias grep='grep --colour'
alias findn='find . -name '"${1}"''
#alias drc='docker run -it -v /Users/james/src:/powershell/src --dns=172.22.2.1 --dns-search=vcloud-int.net --entrypoint='/usr/bin/powershell' vmware/powerclicore /powershell/src/$1'

drc() {
docker run -it -v /Users/james/src:/powershell/src --dns=172.22.2.1 --dns-search=vcloud-int.net --entrypoint='/usr/bin/powershell' -e VI_USER=jtrickel -e VI_PASS=Urukhai0667! vmware/powerclicore /powershell/src/$1
}
drc_prompt() {
docker run -it -v /Users/james/src:/powershell/src --dns=172.22.2.1 --dns-search=vcloud-int.net --entrypoint='/usr/bin/powershell' vmware/powerclicore /powershell/src/$1
}
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
fi
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
fi

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

#PS1='\h:\W \u\$'
#PS1='[$(__git_ps1)]\u@\h:\w\$ '
#export PS1=$LIGHT_GRAY"[\u@\h] - "$WHITE"["$YELLOW"\w"$WHITE"] - ["$GREEN"\D{%F %T}"$LIGHT_GRAY"]\n"'$(
    #if [[ $(__git_ps1) =~ \*\)$ ]]
    ## a file has been modified but not added
    #then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    #elif [[ $(__git_ps1) =~ \+\)$ ]]
    ## a file has been added, but not commited
    #then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    ## the state is clean, changes are commited
    #else echo "'$CYAN'"$(__git_ps1 " (%s)")
    #fi)'$GREEN": "

# enable the git bash completion commands
#source ~/.git-completion.bash
# enable git unstaged indicators - set to a non-empty value
GIT_PS1_SHOWDIRTYSTATE="."
# enable showing of untracked files - set to a non-empty value
GIT_PS1_SHOWUNTRACKEDFILES="."
# enable stash checking - set to a non-empty value
GIT_PS1_SHOWSTASHSTATE="."
# enable showing of HEAD vs its upstream
GIT_PS1_SHOWUPSTREAM="auto"

PYTHONPATH=/usr/local/Cellar/powerline/2.3/lib/python2.7/site-packages/
export PYTHONPATH
LANG=en_US.utf8
export LANG
#if [ -f `which powerline-daemon` ]; then
  #powerline-daemon -q
  #POWERLINE_BASH_CONTINUATION=1
  #POWERLINE_BASH_SELECT=1
  #-not used#. /usr/share/powerline/bash/powerline.sh
  #. /usr/local/Cellar/powerline/2.3/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi
#export PS1='[\u@mbp \w$(__git_ps1)]\$ '
#export PS1='\u@\h:\w$(__git_ps1)$ '

export GIT_PROMPT_THEME=Single_line_Solarized
#export GIT_PROMPT_THEME=Solarized_Extravagant
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# List of folders to look into for `git` commits, comma separated.
export TTC_REPOS='~/src/phdz'

# Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# _should_ be ok (the zip code doesn't always work -- use a location
# first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='Syracuse, NY'

# Set to false if you're an imperial savage. <3
export TTC_CELSIUS=false
export TTC_APIKEYS=false

eval $(/usr/libexec/path_helper -s)
