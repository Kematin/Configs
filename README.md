# Neovim config by kematin
#### My config functions

- Lsp server
- Git Highlighting
- Markdown Preview

### Download

***neovim***<br>
`sudo apt install neovim`

***vimplug***<br>
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

***npm***<br>
`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash`<br>
`nvm install 14.4.0`

***lsp server (python)***<br>
`npm install -g pyright`<br>

Put init.vim to `~/.config/nvim/init.vim` folder.

### How use lsp server
`python3 -m venv venv`<br>
`source venv/bin/activate`<br>
`mdkir lsp_server & cd lsp_server & touch pyrightconfig.json`<br>
`true > __init__.py`<br>
> pyrightconfig.json
```
{
    "venv": "venv",
    "venvPath": ".."
}
```
