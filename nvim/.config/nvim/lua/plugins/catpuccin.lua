-- CATPPUCCIN theming
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load before other UI plugins
    opts = {
        flavour = "frappe", -- latte, frappe, macchiato, mocha
        transparent_background = false,
        term_colors = true,
        integrations = {
            treesitter = true,
            native_lsp = {
                enabled = true,
            },
            cmp = true,
            gitsigns = true,
            telescope = true,
            nvimtree = true,
            which_key = true,
        },
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")
    end,
}
