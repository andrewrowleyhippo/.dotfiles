return {
  {
    "hrsh7th/cmp-nvim-lsp" -- reaches out to completion engine
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip", -- lua snip completion engine
      "rafamadriz/friendly-snippets", -- snippets that actually will get used!
    },
  },
  {
    "hrsh7th/nvim-cmp", -- neovim complete
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load() -- snippet 'expander'

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = { -- use the bordered options
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- back
          ["<C-f>"] = cmp.mapping.scroll_docs(4), -- forward
          ["<C-Space>"] = cmp.mapping.complete(), -- select 
          ["<C-e>"] = cmp.mapping.abort(), -- exit
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}


