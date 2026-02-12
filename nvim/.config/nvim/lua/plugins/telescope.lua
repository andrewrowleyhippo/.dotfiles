-- TELESCOPE fuzzy finding and searching; find files, buffers and text easily
return {
    {
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
	},
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            -- This is your opts table
            require("telescope").setup {
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                    -- even more opts
                  }
                }
              }
            }
            -- To get ui-select loaded and working with telescope, you need to call
            -- load_extension, somewhere after setup function:
            require("telescope").load_extension("ui-select")
        end
    },
}
