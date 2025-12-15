## Install latest version of nvim (from nvim source)
```bash
sudo apt install curl clang-format black  # install curl and cpp/python formatters

# Install neovim and remove any previous installations
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz && rm nvim-linux-x86_64.tar.gz

echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.bashrc # add nvim path to bashrc

## Set up nvim config
```bash
cd ~/.config/
git clone https://github.com/dcheney01/nvim.git
```
