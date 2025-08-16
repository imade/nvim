return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"bash",
				"c",
				"cmake",
				"cpp",
				"css",
				"csv",
				"dockerfile",
				"go",
				"gomod",
				"html",
				"javascript",
				"json",
				"lua",
				"make",
				"markdown",
				"markdown_inline",
				"odin",
				"powershell",
				"python",
				"sql",
				"toml",
				"tsx",
				"typescript",
				"yaml",
			},
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
			},
		})
	end,
}
