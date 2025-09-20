## Install latest version of nvim (from nvim source)
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz && rm nvim-linux-x86_64.tar.gz
```

Then add to path in .bashrc or similar if not already present:
```bash
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
```

## Set up nvim config
```bash
cd ~/.config/
git clone https://github.com/dcheney01/nvim.git
```
