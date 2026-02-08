-- WHICH-KEY helper to check keybindings
return {
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
		require("which-key").setup({
                triggers = {
                    { "<leader>", mode = { "n"}}, 
                },
            })
		end,
	}
