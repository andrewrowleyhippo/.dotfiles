-- TELESCOPE fuzzy finding and searching; find files, buffers and text easily
return {
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			defaults = {
				prompt_prefix = "   ",
				selection_caret = "❯ ",
				path_display = { "truncate" },
			},
			pickers = {
				find_files = {
					hidden = true,
				},
			},
		},
		config = function(_, opts)
			local telescope = require("telescope")
			telescope.setup(opts)

			-- Optional: load extensions safely
			pcall(telescope.load_extension, "fzf")
		end,
	}
