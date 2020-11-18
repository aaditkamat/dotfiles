#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

brew install mackup
brew install mas
brew install zsh zsh-completions
brew install bfg
chsh -s $(which zsh)

brew cask install dropbox
brew cask install the-unarchiver
brew cask install 1password
brew cask install iterm2
brew cask install skyfonts
brew cask install sketch
brew cask install recordit
brew cask install spotify
brew cask install musixmatch
brew cask install keybase
brew cask install shiftit
brew cask install dash
brew cask install real-vnc
brew cask install rescuetime
brew cask install transmission
brew cask install aws-vault
brew cask install loom

# Browsers
brew cask install google-chrome
brew cask install microsoft-edge
brew cask install firefox

# IDEs & Workspaces
brew cask install macvim
brew cask install visual-studio-code
brew cask install mysqlworkbench
brew cask install monodraw
brew cask install notion

# Android
brew cask install java8
brew cask install android-studio

# Virtualization
brew cask install vagrant
brew cask install docker
brew cask install virtualbox

# Communication platforms
brew cask install skype
brew cask install slack
brew cask install franz
brew cask install discord
brew cask install microsoft-teams
brew cask install zoomus

brew cask install ngrok
brew cask install charles
brew cask install graphiql

# Dependency managers
brew install rbenv
brew install rbenv-gemset
brew install nvm
brew install pyenv
brew install yarn

# Programming Language
brew install golang

brew install coreutils
brew install gnu-tar --with-default-names
brew install ondir
brew install mkcert
brew install nss
brew install nektos/tap/act

brew install heroku/brew/heroku
brew install getsentry/tools/sentry-cli
brew install awscli
brew install github/gh/gh

brew install optipng
brew install jpegoptim
brew install gifsicle
brew install svgo
brew install jhead
brew install librsvg
brew install pngquant

brew install fd
brew install fzf
brew install yamllint
brew install gpg
brew install watchman
brew install graphviz
brew install htop
brew install jq
brew install ghostscript
brew install imagemagick
brew install cmake
brew install cocoapods
brew install wget

# Database Management
brew install postgresql
brew install redis

brew install tfenv
brew install packer

brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# Plugins
brew install readline
brew install wakatime-cli
brew install antigen

# Restore configuration files from Dropbox
mackup restore

# Install latest version of Ruby
rbenv install 2.6.5
rbenv global 2.6.5

# Install Node
nodenv install 12.16.1
nodenv global 12.16.1

# Remove outdated versions from the cellar.
brew cleanup
