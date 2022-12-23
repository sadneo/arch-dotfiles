do -- settings
    local options = ({
        -- indentations
        tabstop = 4,
        softtabstop = 4,
        shiftwidth = 4,
        expandtab = true,
        -- folding
        number = true,
        -- relativenumber = true,
        foldenable = false,
        foldmethod = "syntax",
        foldnestmax = 10,
        foldlevel = 10,
    });

    for option, value in pairs(options) do
        vim.opt[option] = value
    end
end

do -- misc
    -- terminal escape, saving views, help vertical split
    vim.cmd [[tnoremap <Esc> <C-\><C-n>]]
    vim.cmd [[au BufWritePost,BufLeave,WinLeave ?* mkview
    au BufReadPre ?* silent! loadview]]
    vim.cmd[[autocmd! BufEnter * if &ft ==# 'help' | wincmd L | endif]]
end

vim.cmd [[packadd packer.nvim]]
vim.cmd [[colorscheme catppuccin-macchiato]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "morhetz/gruvbox"
    use "catppuccin/nvim"
    use { "goolord/alpha-nvim", config = function()
        local dashboard = require "alpha.themes.dashboard"

        dashboard.section.header.val = {
            [[　　　 　　/＾>》, -―‐‐＜＾}]],
            [[　　　 　./:::/,≠´::::::ヽ.]],
            [[　　　　/::::〃::::／}::丿ハ]],
            [[　　　./:::::i{l|／　ﾉ／ }::}]],
            [[　　 /:::::::瓜イ＞　´＜ ,:ﾉ]],
            [[　 ./::::::|ﾉﾍ.{､　(_ﾌ_ノﾉイ＿]],
            [[　 |:::::::|／}｀ｽ /          /]],
            [[.　|::::::|(_:::つ/ ThinkPad /　neovim!]],
            [[.￣￣￣￣￣￣￣＼/＿＿＿＿＿/￣￣￣￣￣]],
        }

        dashboard.section.buttons.val = {
            dashboard.button(
            "c",
            "  Configuration",
            ":e ~/.config/nvim/<CR>",
            {}
            ),

            dashboard.button(
            "q",
            "ﰌ  Quit",
            ":qa<CR>",
            {}
            ),
        }
        require("alpha").setup(dashboard.config) 
    end}
    use { "psliwka/vim-smoothie", config = function()
        vim.g.smoothie_experimental_mappings = true
    end}

    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "rust", "toml" },
            vim.cmd([[set foldmethod=expr
            set foldexpr=nvim_treesitter#foldexpr()]])
        })
    end}

    use "tpope/vim-commentary"

    if packer_bootstrap then
        require("packer").sync()
    end
end)
