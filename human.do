Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Make src dir
mkdir ~/src

Clone dotfiles
git clone https://github.com/JohnColvin/dotfiles.git ~/src/dotfiles

Run dotfiles setup
bash ~/src/dotfiles/setup

Restart macOS

Start all homebrew services
brew services start --all

Make rbenv read version from Gemfile
git clone https://github.com/aripollak/rbenv-bundler-ruby-version.git "$(rbenv root)"/plugins/rbenv-bundler-ruby-version
