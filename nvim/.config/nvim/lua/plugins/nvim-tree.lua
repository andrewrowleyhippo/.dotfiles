-- NVIM-TREE file-explorer; a sidebar tree of files and folders
return {
		"kyazdani42/nvim-tree.lua",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			-- Nvim-tree setup
			require("nvim-tree").setup({
				view = { width = 30, side = "left" },
				git = { enable = true },
			})
		end,
	}
