-- NEOSCROLL smooth scrolling; use ctrl+d and ctrl+u
return {
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup({
				easing_function = "quadratic",
				hide_cursor = true,
				stop_eof = true,
				respect_scrolloff = true,
				cursor_scrolls_alone = true,
				mappings = {
					"<C-u>",
					"<C-d>",
					"<C-b>",
					"<C-f>",
					"<C-y>",
					"<C-e>",
				},
				-- optional: set smooth scroll step for mouse
				scroll_step = 3,
			})
		end,
	}
