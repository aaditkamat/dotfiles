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

brew install abseil
brew install c-ares
brew install ca-certificates
brew install coreutils
brew install gdrive
brew install gettext
brew install gh
brew install gmp
brew install go
brew install grpc
brew install libidn2
brew install libunistring
brew install localai
brew install make
brew install mpdecimal
brew install nodenv
brew install ollama
brew install openssl@3
brew install pandoc
brew install protobuf
brew install protoc-gen-go
brew install protoc-gen-go-grpc
brew install python@3.12
brew install python@3.13
brew install re2
brew install readline
brew install sqlite
brew install tree
brew install unoconv
brew install vault
brew install wget
brew install xz
brew install basictex
brew install brave-browser
brew install chatgpt
brew install citrix-workspace
brew install cursor
brew install docker
brew install git-credential-manager
brew install jdownloader
brew install libreoffice
brew install lm-studio
brew install microsoft-teams
brew install miniconda
brew install motion
brew install onedrive
brew install opera
brew install parallels-toolbox
brew install poe
brew install pushplaylabs-sidekick
brew install rbenv
brew install tableau
brew install vmware-fusion
brew install vmware-horizon-client
brew install warp
brew install webcatalog
brew install zed
brew install zoom


# Install latest version of Ruby
rbenv install 2.6.5
rbenv global 2.6.5
nodenv install 12.16.1
nodenv global 12.16.1

# Remove outdated versions from the cellar.
brew cleanup
