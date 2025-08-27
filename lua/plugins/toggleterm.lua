return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<c-\>]],
			shell = vim.o.shell,
			shade_terminals = true,
			shading_factor = 2,
			hide_numbers = true,
			start_in_insert = true,
			insert_mappings = true,
			persist_mode = true,
			direction = "float", -- vertical | horizontal | tab | float
			close_on_exit = true,
			auto_scroll = true,
			float_opts = {
				border = "curved", -- single | double | shadow | curved
				title_pos = "center", -- left | center | right
				winblend = 0,
			},
		})
	end,
}
