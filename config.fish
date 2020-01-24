set PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin

set EDITOR atom

alias b bundle
alias be "bundle exec"
alias dbm "bundle exec rake db:migrate"
alias dbr "bundle exec rake db:rollback"
alias dbtp "bundle exec rake db:test:prepare"
alias g git
alias k rake
alias ni "npm install --no-save"
alias nm "npm run mobile"
alias nr "npm run"
alias ns "npm run start"
alias r rails
alias sk "bundle exec sidekiq -C ./config/sidekiq.yml"
alias un "bundle exec unicorn -c ./config/unicorn.development.rb"
alias wps "env NODE_ENV=development ./node_modules/.bin/webpack-dev-server -d --config ./config/webpack.config.js"

set DOCKER_HOST tcp://192.168.64.2:2375

function eyd --description 'ey deploy' --argument-names environment ref
  ey deploy --serverside-version=2.6.19 -e $environment -R $ref
end

function eydm --description 'ey deploy master' --argument-names environment
  ey deploy --serverside-version=2.6.19 -e $environment -R master
end

function fish_prompt
  echo '❯ '
end

function fish_right_prompt
  echo (pwd | sed -e "s|^$HOME|~|")
end

set fish_greeting

status --is-interactive; and source (rbenv init -|psub)
