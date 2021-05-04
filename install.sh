#!/usr/bin/bash
cd ~/

# Clone My Preset configs 
git clone https://github.com/Tylryan/zsh_config.git ~/.config/zsh/

# Copy them to your home directory.
cp ~/.config/zsh/.p10k.zsh .zshrc ~/

# Removing the clone.
rm -rf zsh_config

# Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/zsh-syntax-highlighting

# Auto-Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions

# Powerlevel10k: Customized PS1
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/plugins/powerlevel10k

source ~/.zshrc

