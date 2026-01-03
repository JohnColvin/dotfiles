set PATH /opt/homebrew/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin

set EDITOR code

alias bs ./bin/setup
alias d docker
alias dk "d compose"
alias dku "dk up"
alias dkr "dk run --rm"
alias dkra "dkr --rm app"
alias dkrw "dkr --rm webpack"
alias d- "docker compose run --rm app"
alias d-b "dkra bundle"
alias d-rc "dkra rails c"
alias d-ni "dkrw npm install --no-save"
alias d-nr "dkrw npm run"
alias d-nrw "dkrw npm run watch"
alias d-nt "dkrw npm test"
alias g git

set DOCKER_HOST tcp://192.168.64.2:2375

function eyd --description 'ey deploy with defaults' --argument-names environment ref
  test -n "$ref" || set ref master
  ey deploy --serverside-version=2.6.19 -e $environment -R $ref
end

function fish_prompt
  echo '❯ '
end

function fish_right_prompt
  echo (pwd | sed -e "s|^$HOME|~|")
end

set fish_greeting

status --is-interactive

source /opt/homebrew/opt/asdf/libexec/asdf.fish

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
