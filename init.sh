# sources
sudo sed -i "s/archive.ubuntu.com/mirrors.ustc.edu.cn/g" /etc/apt/sources.list
sudo sed -i "s/security.ubuntu.com/mirrors.ustc.edu.cn/g" /etc/apt/sources.list
sudo apt update -y

# apps
sudo apt install -y vim git fcitx-googlepinyin zsh

# oh my zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sed -i 's/^ZSH_THEME.*$/ZSH_THEME=\"frisk\"/' ~/.zshrc
