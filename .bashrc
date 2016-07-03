# prompt
export PS1="\[\e[0;36m\][\[\e[00m\]\[\e[1;31m\]\u\[\e[00m\]\[\e[1;33m\]@\[\e[00m\]\[\e[0;34m\]\h\[\e[00m\]\[\e[0;36m\]]\[\e[00m\]\[\e[0;36m\][\[\e[00m\]\[\e[1;32m\]\w\[\e[00m\]\[\e[0;36m\]]\[\e[00m\]\[\e[0;36m\]\n\$ > \[\e[00m\]"


# alias
alias gls='git status'
alias gch='git checkout'
alias gbr='git branch'
alias gad='git add'
alias gco='git commit'
alias regco='git commit --amend'
alias glg='git log --graph --pretty=format:'%Cred%h%Creset - %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%C(yellow)%d%Creset' --abbrev-commit --date=relative'

