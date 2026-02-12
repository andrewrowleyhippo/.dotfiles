-- MASON, LSP-CONFIG and others, for LSP features
return {
  {
    "williamboman/mason.nvim", -- basic mason
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim", -- mason LSP configuration
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          -- "bashls",
          -- "pyright",
          -- "ruff",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig", -- to config nvim to use language servers
    config = function()

        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})

        -- define configs
        --vim.lsp.config("bashls", {})
        --vim.lsp.config("pyright", {})
        --vim.lsp.config("ruff", {})

        -- enable servers
        --vim.lsp.enable({
        --"lua_ls",
        -- "bashls",
        -- "pyright",
        -- "ruff",
        --})

        -- keymaps
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    end,
    },
}

