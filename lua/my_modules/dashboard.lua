config = function ()
    require'alpha'.setup(require'alpha.themes.dashboard'.opts)
    local start = require("alpha.themes.dashboard")
    start.section.buttons.val = {
        start.button("e", "  New file", "<cmd>ene <CR>"),
        start.button("m", "  Mason Installer", ":Mason<CR>"),
        start.button("v", "  Nvim config", ":e ~/.config/nvim/init.lua<CR>"),
        start.button("SPC f f", "  Find file"),
        start.button("SPC f g", "  Find word"),
    }
end
