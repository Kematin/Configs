# Neovim config by kematin
#### My config functions

- Lsp server
- Git Highlighting
- Markdown Preview

### Download

```
<!-- neovim -->
sudo apt install neovim` (0.4.3)

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim (0.8)

<!-- vimplug --> for vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

<!-- packer --> for lua
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

<!-- npm -->
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install 14.4.0

<!-- lsp server (python) -->
npm install -g pyright
```

Put init.vim to `~/.config/nvim/init.vim` folder.

### How use lsp server
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
