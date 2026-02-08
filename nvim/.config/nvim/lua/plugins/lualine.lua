-- LUALINE status bar; like a dashboard for this editor
return {

		"nvim-lualine/lualine.nvim",
		config = function()
			-- Lualine setup
			require("lualine").setup({
				options = { theme = "catppuccin" },
			})
		end,
	}
