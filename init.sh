# sources
sudo sed -i "s/archive.ubuntu.com/mirrors.ustc.edu.cn/g" /etc/apt/sources.list
sudo sed -i "s/security.ubuntu.com/mirrors.ustc.edu.cn/g" /etc/apt/sources.list
sudo apt update -y

# apps
sudo apt install -y vim git fcitx-googlepinyin zsh

# oh my zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sed -i 's/^ZSH_THEME.*$/ZSH_THEME=\"frisk\"/' ~/.zshrc

# vscode
wget -O vs.deb  https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-deb-x64
sudo dpkg -i vs.deb

# wps
wget -O wps.deb https://wps-linux-personal.wpscdn.cn/wps/download/ep/Linux2019/11664/wps-office_11.1.0.11664_amd64.deb
sudo dpkg -i wps.deb

# language zh
sudo apt-get install -y language-pack-zh*
sudo locale-gen

