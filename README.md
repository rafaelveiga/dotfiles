Using [How to set up a fresh Ubuntu desktop using only dotfiles and bash scripts](https://victoria.dev/blog/how-to-set-up-a-fresh-ubuntu-desktop-using-only-dotfiles-and-bash-scripts/)

## Setup

1. Install git

```bash
sudo apt install -y git
```

2. Create code directory

```bash
mkdir -p /code/dotfiles
```

3. Clone the repository

```bash
git clone https://github.com/rafaelveiga/dotfiles.git ./code/dotfiles
```

4. CD into the directory

```bash
cd ./code/dotfiles
```

6. Run the setup script

```bash
./install.sh
```
