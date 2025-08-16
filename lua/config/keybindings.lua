vim.g.mapleader = " "

local km = vim.keymap

-- Show file tree
km.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Keybinding: Jump between tree and file
km.set("n", "<leader>ef", function()
	local api = require("nvim-tree.api")
	if api.tree.is_visible() then
		-- If tree is visible but you are not in it, focus it
		if vim.bo.filetype ~= "NvimTree" then
			api.tree.focus()
		else
			-- If already in the tree, go back to last buffer
			vim.cmd.wincmd("p")
		end
	else
		-- Open the tree at the current file and focus it
		api.tree.find_file({ open = true, focus = true })
	end
end, { desc = "Toggle focus between tree and file" })

-- Show undo tree
km.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Normal mode: pressing caps-lock enters insert mode
-- Need to re-map caps-lock to F13 in OS for this to work
km.set("n", "<F13>", "i", { noremap = true, silent = true })

-- Insert mode: pressing caps-lock goes to normal mode
-- Need to re-map caps-lock to F13 in OS for this to work
km.set("i", "<F13>", "<Esc>", { noremap = true, silent = true })
