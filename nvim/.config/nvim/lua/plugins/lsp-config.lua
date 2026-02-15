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
      "neovim/nvim-lspconfig",
      config = function()

        -- Lua
        vim.lsp.config("lua_ls", {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
              workspace = { checkThirdParty = false },
            },
          },
        })

        -- Bash
        vim.lsp.config("bashls", {
          settings = {
            bashIde = { shellcheckPath = "shellcheck" },
          },
        })

        -- Python
        vim.lsp.config("pyright", {})
        vim.lsp.config("ruff", {})

        -- Enable servers
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("bashls")
        vim.lsp.enable("pyright")
        vim.lsp.enable("ruff")

        -- Keymaps
        local opts = { noremap = true, silent = true }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts) -- get definition
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- code actions
        vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, opts) -- format the file
      end,
    }
}



