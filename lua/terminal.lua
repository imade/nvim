local Terminal = {}
Terminal.buf = nil
Terminal.win = nil

local function toggle_terminal()
	if Terminal.win and vim.api.nvim_win_is_valid(Terminal.win) then
		vim.api.nvim_win_close(Terminal.win, true)
		Terminal.win = nil
	else
		Terminal.buf = vim.api.nvim_create_buf(false, true)
		local width = math.floor(vim.o.columns * 0.8)
		local height = math.floor(vim.o.lines * 0.8)
		local row = math.floor((vim.o.lines - height) / 2)
		local col = math.floor((vim.o.columns - width) / 2)

		Terminal.win = vim.api.nvim_open_win(Terminal.buf, true, {
			relative = "editor",
			width = width,
			height = height,
			row = row,
			col = col,
			style = "minimal",
			border = "rounded",
		})

		vim.fn.termopen(vim.o.shell)
		vim.cmd("startinsert")
	end
end

-- Map <leader>tt to toggle terminal
vim.keymap.set(
	{ "n", "t" },
	"<leader>tt",
	toggle_terminal,
	{ noremap = true, silent = true, desc = "Toggle floating terminal" }
)
