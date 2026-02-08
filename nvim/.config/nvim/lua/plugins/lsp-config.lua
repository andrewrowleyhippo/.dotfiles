return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
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
    "neovim/nvim-lspconfig",
    config = function()
      -- define configs
      vim.lsp.config("lua_ls", {})
      --vim.lsp.config("bashls", {})
      --vim.lsp.config("pyright", {})
      --vim.lsp.config("ruff", {})

      -- enable servers
      vim.lsp.enable({
        "lua_ls",
        -- "bashls",
        -- "pyright",
        -- "ruff",
      })
          
      -- keymaps
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})  
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})  
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})  
    end,
  },
}

