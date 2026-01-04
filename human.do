# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make src dir
mkdir ~/src

# Clone dotfiles
git clone https://github.com/JohnColvin/dotfiles.git ~/src/dotfiles

# Run dotfiles setup
bash ~/src/dotfiles/setup

# Allow "Full Disk Access" for iTerm
bash ~/src/dotfiles/.macos
# Disable "Full Disk Access" for iTerm

# Restart macOS

# Change iterm settings to load preferences from ~/src/dotfiles in its UI
