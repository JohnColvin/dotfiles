set PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin

set EDITOR atom

alias b bundle
alias g git
alias k rake
alias r rails

set DOCKER_HOST tcp://192.168.64.2:2375

function fish_prompt
  echo '❯ '
end

function fish_right_prompt
  echo (pwd | sed -e "s|^$HOME|~|")
end

set -e fish_greeting

status --is-interactive; and . (rbenv init -|psub)
