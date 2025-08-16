return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{ "neovim/nvim-lspconfig" },
	},
	opts = {
		automatic_enable = true,
		ensure_installed = {
			"clangd",
			"cssls",
			"gopls",
			"html",
			"htmx",
			"lua_ls",
			"ols",
			"ts_ls",
		},
	},
}
