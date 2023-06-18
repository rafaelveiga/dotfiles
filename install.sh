## Oh My Zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

cd ~/.oh-my-zsh/custom/plugins
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git

## Ricing Software
sudo apt get bspwm sxhkd polybar picom nitrogen rofi

# figure out how to install alacritty