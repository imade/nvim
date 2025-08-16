return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		-- Sources
		"hrsh7th/cmp-nvim-lsp", -- LSP completions
		"hrsh7th/cmp-buffer", -- Words in current buffer
		"hrsh7th/cmp-path", -- Filesystem paths
		"hrsh7th/cmp-cmdline", -- Cmdline completions
		-- Snippets
		"L3MON4D3/LuaSnip", -- Snippet engine
		"saadparwaiz1/cmp_luasnip", -- Snippet completions
		"rafamadriz/friendly-snippets", -- Predefined snippets
		"onsails/lspkind.nvim", -- VSCode style pictograms
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			-- Completion behavior:
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},

			-- How completion works with snippets:
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			-- Keybindings:
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),

			-- Completion sources:
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			}),

			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 200,
					ellipsis_char = "...",
				}),
			},
		})
	end,
}
