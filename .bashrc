#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim
export GIT_EDITOR=$EDITOR
export SYSTEMD_EDITOR=$EDITOR
export MANWIDTH=80

source ~/.aliases
source ~/.bashcolors
source ~/.functions

export PS1="${Yellow}\d \A ${Off}${Cyan}\u@\h: ${Off}\w ${Green}\$(parse_git_branch)${BPurple}\$(parse_fossil_branch)${Off}\n-$ "

export PYTHONDONTWRITEBYTECODE=1
export PYTHONUSERBASE=~/.env/python
export PATH=~/.env/python/bin:~/bin:$PATH

export HISTCONTROL=ignoredups:erasedups  # Avoid duplicates
export HISTSIZE=100000000                # big big history
export HISTFILESIZE=100000000            # big big history
shopt -s histappend                      # append to history, don't overwrite

export LIBVIRT_DEFAULT_URI='qemu:///system'

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null
