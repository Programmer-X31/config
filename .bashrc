#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=never'
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias l.='exa -a | egrep "^\."'
alias vim="nvim"
alias snap="sudo shutdown now"
alias doom="~/.emacs.d/bin/doom"
alias dos="bash"
# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias jv="jva"
alias eclimd="/home/sachin/.eclipse/org.eclipse.platform_4.20.0_1473617060_linux_gtk_x86_64/eclimd"


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# Emulate an MS-DOS prompt in your Linux shell.
# Laszlo Szathmary (jabba.laci@gmail.com), 2011
# Project home page:
# https://ubuntuincident.wordpress.com/2011/02/08/emulate-the-ms-dos-prompt/
#
#
# Modified by Soldier of Fortran
#
# Add to you ~/.bashrc file with: 'source ~/.themes/95/bashrc'

function msdos_pwd
{
    local dir="`pwd`"

    echo $dir | tr '/' '\\'
}

export PS1='C:`msdos_pwd`>'

echo "Microsoft(R) Windows 95"
echo "   (C)Copyright Microsoft Corp 1981-1996."
echo
