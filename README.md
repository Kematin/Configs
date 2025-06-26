### Download

```bash
# neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim (0.8)

# mac
brew install neovim

# packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
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


