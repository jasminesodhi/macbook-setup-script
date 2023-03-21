#!/bin/bash

######################
##### REFERENCES #####
######################
# 1. https://medium.com/brainsandbrawn-studio/mac-setup-for-development-checklist-2021-9b73af15fecd
# 2. https://www.stuartellis.name/articles/mac-setup/
# 3. https://www.robinwieruch.de/mac-setup-web-development/


#####################
##### RESOURCES #####
#####################
# 1. React Native Setup - https://reactnative.dev/docs/environment-setup
# 2. iTerm2 Color Preset (MaterialOcean) - https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/MaterialOcean.itermcolors
# 3. iTerm2 Zsh Theme (Simple) - https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#simple


#######################
##### POST SCRIPT #####
#######################
# 1. Compare .zshrc under root user
# 2. Upload iTerm2 profile default.json under Settings > Profile > Other Actions > Import JSON profiles  
# 3. Import iTerm2 color preset
# 4. Accept Xcode license with sudo xcodebuild -license
# 5. Login to VS Code using GitHub account to sync settings
# 6. Move SiteSucker to Applications folder
# 7. Add extensions to Safari & Google Chrome - Grammerly, Email Receipt, Email Unsubscribe, AdBlocker 
# 8. Test React Native sample app to complete Android and iOS configurations 


###################################
##### INSTALLS USING HOMEBREW #####
###################################
mkdir -p raw
xcode-select --install # Install Xcode
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" # Install Homebrew
echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
brew install \
    pyenv \
    ruby \
    rbenv \
    node \
    nvm \
    cocoapods \
    watchman \
    mysql \
    git \
    gh \
    wget \
    curl

brew tap homebrew/cask-versions # Required for JDK setup for React Native

brew install --cask \
    google-chrome \
    google-drive \
    lastpass \
    dropbox \
    visual-studio-code \
    iterm2 \
    android-studio \
    zulu11 \
    vysor \
    react-native-debugger \
    sequel-pro \
    beekeeper-studio \
    postman \
    unity \
    zoom \
    teamviewer \
    transmission \
    notion \
    whatsapp \
    slack \
    discord \
    spotify \
    microsoft-office \
    parallels \
    cleanmymac

wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Jxk9OoKShZ5rLsxmuoRwGxFx2efYR-Nj' -O SiteSucker.zip # Download SiteSucker cracked version from GDrive
unzip SiteSucker.zip

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # Install Oh-My-Zsh
git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git # Install Snap for zsh
source zsh-snap/install.zsh
znap source marlonrichert/zsh-autocomplete # Install autocomplete plugin for zsh


########################
##### GITHUB SETUP #####
########################
git config --global user.name "Jasmine Sodhi" # Configure GitHub global config
git config --global user.email "sodhij@usc.edu"

ssh-keygen -t ed25519 -C "sodhij@usc.edu" # Generate new SSH key
eval "$(ssh-agent -s)"
touch ~/.ssh/config # Create config file

echo "\e[0;33mPaste the following in config file \e[m"
echo -e "\e[0;33mHost github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519 \e[m"
open ~/.ssh/config # Open config file to past above host
ssh-add --apple-use-keychain ~/.ssh/id_ed25519 # Add SSH key to Apple Keychain
gh auth login # Use GitHub CLI to push SSH key under account


#######################
##### SETUP PATHS #####
#######################
echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc # Homebrew
echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.zshrc # Ruby 
rbenv install $(rbenv install -l | grep -v - | tail -1) # Install lastest version of Ruby using rbenv

echo 'export ANDROID_HOME=$HOME/Library/Android/sdk' >> ~/.zshrc # Android
echo 'export PATH=$PATH:$ANDROID_HOME/emulator' >> ~/.zshrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.zshrc
