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

# Casks
brew install 5ire
brew install agent-brew install tars
brew install airtable
brew install anaconda
brew install arc
brew install asana
brew install brave-brew install browser
brew install chatgpt
brew install claude
brew install cursor
brew install discord
brew install docker
brew install expressvpn
brew install figma
brew install gitkraken
brew install gitkraken-brew install cli
brew install google-brew install chrome
brew install grammarly-brew install desktop
brew install insomnia
brew install intellij-brew install idea
brew install itsycal
brew install jetbrains-brew install toolbox
brew install localai
brew install langgraph-brew install studio
brew install lm-brew install studio
brew install microsoft-brew install auto-brew install update
brew install microsoft-brew install teams
brew install nordvpn
brew install obsidian
brew install onedrive
brew install orion
brew install pandoc
brew install paperpile
brew install parallels
brew install parallels-brew install toolbox
brew install pgadmin4
brew install pieces
brew install pieces-brew install os
brew install poe
brew install qgis
brew install qgis@brew install ltr
brew install readdle-brew install spark
brew install rstudio
brew install slack
brew install spotify
brew install tableau
brew install temurin
brew install warp
brew install webex
brew install windsurf
brew install wireshark
brew install zed
brew install zoom

# Formulae
brew install aom
brew install apr
brew install apr-brew install util
brew install argon2
brew install autoconf
brew install boost
brew install brotli
brew install ca-brew install certificates
brew install cairo
brew install certifi
brew install cffi
brew install cocoapods
brew install commitizen
brew install cryptography
brew install curl
brew install double-brew install conversion
brew install edencommon
brew install fb303
brew install fbthrift
brew install fizz
brew install fmt
brew install folly
brew install fontconfig
brew install freetds
brew install freetype
brew install gd
brew install gettext
brew install gflags
brew install ggshield
brew install gh
brew install giflib
brew install git-brew install filter-brew install repo
brew install git-brew install lfs
brew install glib
brew install glog
brew install gmp
brew install graphite2
brew install harfbuzz
brew install highway
brew install icu4c@brew install 76
brew install icu4c@brew install 77
brew install imath
brew install jenv
brew install jpeg-brew install turbo
brew install jpeg-brew install xl
brew install krb5
brew install libavif
brew install libdeflate
brew install libevent
brew install libgit2@brew install 1.brew install 8
brew install libidn2
brew install libnghttp2
brew install libpng
brew install libpq
brew install libsodium
brew install libssh2
brew install libtiff
brew install libtool
brew install libunistring
brew install libvmaf
brew install libx11
brew install libxau
brew install libxcb
brew install libxdmcp
brew install libxext
brew install libxrender
brew install libyaml
brew install libzip
brew install little-brew install cms2
brew install llm
brew install llvm@brew install 19
brew install lz4
brew install lzo
brew install m4
brew install mpdecimal
brew install net-brew install snmp
brew install nvm
brew install ollama
brew install oniguruma
brew install openexr
brew install openjdk
brew install openldap
brew install openssl@brew install 3
brew install pcre2
brew install php
brew install pixman
brew install pkgconf
brew install postgresql@brew install 17
brew install pycparser
brew install python-brew install packaging
brew install python@brew install 3.brew install 13
brew install rbenv
brew install readline
brew install rtmpdump
brew install ruby
brew install ruby-brew install build
brew install rust
brew install snappy
brew install sqlite
brew install tidy-brew install html5
brew install tree
brew install unixodbc
brew install uv
brew install wangle
brew install watchman
brew install webp
brew install wget
brew install xorgproto
brew install xxhash
brew install xz
brew install zstd

# Install latest versions of Ruby, Java and Node
rbenv install 3.4.2
jenv add /Library/Java/JavaVirtualMachines/temurin-24.jdk/Contents/Home
nvm install v22.13.1

# Remove outdated versions from the cellar.
brew cleanup
