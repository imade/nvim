return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			notify_on_error = false,
			format_on_save = {
				timeout_ms = 200,
				async = false,
				lsp_fallback = true,
			},

			formatters = {
				odinfmt = {
					command = "odinfmt",
					args = { "-stdin" },
					stdin = true,
				},
				clangformat = {
					command = "clang-format",
					args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
					stdin = true,
				},
			},

			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				javascriptreact = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				json = { "prettier" },
				odin = { "odinfmt" },
				c = { "clangformat" },
			},
		})

		vim.keymap.set("n", "<leader>ww", function()
			conform.format({
				async = false,
				timeout_ms = 200,
				lsp_format = "fallback",
			})
		end, { noremap = true, silent = false, desc = "Format current buffer" })
	end,
}
