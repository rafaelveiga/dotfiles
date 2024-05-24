cd ~/.ssh
ssh-keygen -t ed25519 -C "dsg.rafael@gmail.com"
pbcoby < ~/.ssh/id_ed25519.pub
firefox -new-tab "https://github.com/settings/ssh/new"