return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		local illuminate = require("ibl")
		illuminate.setup({
			enabled = true,
			buftype_exclude = { "terminal", "nofile" },
			filetype_exclude = {
				"help",
				"startify",
				"dashboard",
				"lazy",
				"neogitstatus",
				"NvimTree",
				"Trouble",
				"text",
			},
			char = "▏",
			context_char = "▏",
			show_trailing_blankline_indent = false,
			show_first_indent_level = true,
			use_treesitter = true,
			show_current_context = true,
		})
	end,
	event = "User FileOpened",
}
