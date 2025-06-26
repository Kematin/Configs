# Neovim config by kematin

### Download

```bash
<!-- neovim -->
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim (0.8)

<!-- for mac -->
brew install neovim

<!-- packer --> for lua
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

<!-- npm -->
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install 14.4.0

<!-- lsp server (python) -->
npm install -g pyright
```

### Lsp server
```bash
python3 -m venv venv
source venv/bin/activate
mdkir lsp_server && cd lsp_server && touch pyrightconfig.json
true > __init__.py
```
> pyrightconfig.json
```
{
    "venv": "venv",
    "venvPath": ".."
}
```

### Soft, Utils need to install
- neovim (lua+packer)
- tmux (+tpm)
- fish
- bat
- lazygit
- vscode
- btop


