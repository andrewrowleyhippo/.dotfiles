-- MASON, LSP-CONFIG and others, for LSP features
return {
  {
    "williamboman/mason.nvim", -- basic mason, installs LSPs
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim", -- mason LSP configuration
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", --lua
          "bashls", --bash
          "pyright", --python
          "ruff", -- also python
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig", -- to config nvim to use language servers
    config = function()

        local lspconfig = require("lspconfig")

        -- lua
        lspconfig.lua_ls.setup({
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                checkThirdParty = false,
              },
            },
          },
        })

        -- bash
        lspconfig.bashls.setup({
          settings = {
            bashIde = {
              shellcheckPath = "shellcheck",
            },
          },
        })

        -- python
        lspconfig.pyright.setup({})
        lspconfig.ruff.setup({})

        -- keymaps
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) -- get docs
        vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {}) -- get defns
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) -- code actions
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {}) -- ???

    end,
    },
}

