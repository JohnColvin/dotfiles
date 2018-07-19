set PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin

set EDITOR atom

alias b bundle
alias be "bundle exec"
alias g git
alias k rake
alias n npm
alias ni "npm install"
alias nm "npm run mobile"
alias nr "npm run"
alias ns "npm run start"
alias r rails


set DOCKER_HOST tcp://192.168.64.2:2375

function fish_prompt
  echo '❯ '
end

function fish_right_prompt
  echo (pwd | sed -e "s|^$HOME|~|")
end

set fish_greeting

status --is-interactive; and source (rbenv init -|psub)
