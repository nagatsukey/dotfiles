# プロンプトを2行で表示、時刻を表示
PROMPT='%F{cyan}[%f%F{red}%n%f%F{yellow}@%f%F{blue}%m%f%F{cyan}]%f%F{cyan}[%f%F{green}%~%f%F{cyan}]%f
%F{cyan}$ >%f '

# ls
if [ "$(uname)" = 'Darwin' ]; then
  export LSCOLORS=xbfxcxdxbxegedabagacad
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi

# alias
alias gls='git status'
alias gch='git checkout'
alias gbr='git branch'
alias gad='git add'
alias gco='git commit'
alias regco='git commit --amend'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset - %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%C(yellow)%d%Creset' --abbrev-commit --date=relative"
