# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Call nvm use automatically in a directory with a .nvmrc file
fpath=($HOME/.zfuncs $fpath)
autoload -Uz load-nvmrc
load-nvmrc


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.cargo/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

### ZSH ###

# Path to Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Oh My ZSH theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# ZSH plugins
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew poetry pyenv git github git-flow zsh-autosuggestions sudo)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(rbenv init -)"

### Windsurf ###
export PATH="/Users/aaditkamat/.codeium/windsurf/bin:$PATH"
eval "$(jenv init -)"

### Android SDK ###
export ANDROID_SDK_ROOT=/opt/homebrew/share/android-commandlinetools
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/emulator
export ANDROID_HOME=$ANDROID_SDK_ROOT

### Docker Desktop ###
fpath=(/Users/aaditkamat/.docker/completions $fpath)
autoload -Uz compinit
compinit

# Shorten shell prompt by removing user@host
DEFAULT_USER=$(whoami)

# Add syntax highlighting for zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
