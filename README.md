# Neovim config by kematin
## Fast download (Windows)

<p>Download chocolatey</p>

`Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`
<b>In Powershell with administrator privileges</b>
<p>Download neovim</p>

`choco install neovim` <b>In Powershell with administrator privileges</b> 

## Fast download (MacOS)
<p>Download homebrew</p>

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

<p>Download neovim</p>

`brew install neovim`
<p><b>In terminal</b></p>

## Fast binds for neovim
```
esc = normal mode
v = visual mode
: = console mode
i = insert mode
```

<b>Normal mode</b>
```
k = arrow up
j = arrow down
l = arrow right
h = arrow left
a = 1 symbol right and turn input mode
A = go in end line and turn input mode
o = create new under line and turn input mode
O = create new upper line and turn input mode
gg = enter in start line
G = go in end line
w = go in next word
b = go in previous word
u = Ctrl+Z
right click = Ctrl+V
[num][command] = command is executed num times (5l = go 5 symbol right)
/[word] - find element (/555 - find 555)
m[name] - create mark (mx - new mark with name x)
`[name] - go in mark (`x - go in mark x)
v + selection + x = delete selection
dd = delete line
cw = edit word
yy = copy line
y + selection = copy selection
p = put line

q[symbol] - create macrose with name symbole
@[symbol] - use macrose
```
<b>Console mode</b>
```
:q! = close file without saving
:q = close file
:w = write file
:wq = write and quit
:so % set init.vim
:PlugInstall
```
