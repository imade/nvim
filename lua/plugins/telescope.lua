return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = {
					"%.o$",
					"%.obj$",
					"%.so$",
					"%.exe$",
					"%.DS_Store$",
					"%.dll$",
					"%.bin$",
				},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set(
			"n",
			"<leader>fv",
			builtin.git_files,
			{ desc = "Fuzzy search through the output of git ls-files" }
		)
		vim.keymap.set(
			"n",
			"<leader>fs",
			builtin.grep_string,
			{ desc = "Searches for the string under your cursor or selection in your current working directory" }
		)
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
	end,
}
