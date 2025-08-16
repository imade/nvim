local opt = vim.opt

-- Line at cursor shows absolute line number
opt.number = true

-- Rest of line numbers are relative to current line number
opt.relativenumber = true

-- Displayed tab size
opt.tabstop = 2

-- How many columns of whitespace are used for indentation-related operations within the editor
opt.shiftwidth = 2

-- Enable automatic indentation behavior
opt.autoindent = true

-- If enabled it will insert spaces instead of actual tab characters
opt.expandtab = false

-- Perform case-insensitive searches and substitutions
opt.ignorecase = true

-- Automatic switch of search case-sensitivity based on the search input
opt.smartcase = true

-- Utilize the full color range
opt.termguicolors = true

-- Controls whether the editor assumes a "dark" or "light" background for displaying color schemes
opt.background = "dark"

-- Sign column is a dedicated area typically on the left side of the buffer
-- Option "yes" means sign column is always shown
-- This prevents the text from shifting horizontally when signs appear or disappear
opt.signcolumn = "yes"

-- Highlight current line where cursor is placed
opt.cursorline = true

-- With "unnamedplus" copy goes straight to your OS clipboard
opt.clipboard:append("unnamedplus")

-- Makes the backspace key in insert mode behave more like a normal text editor
opt.backspace = "indent,eol,start"

-- Horizontal splits open below the current window
opt.splitbelow = true

-- Vertical splits open to the right of the current window
opt.splitright = true

-- It makes the - character part of a “word” in motions and searches
-- So commands like w, b, or * treat foo-bar as one word instead of two
opt.iskeyword:append("-")

-- Keep at least N lines of padding visible above and below the cursor when you scroll
opt.scrolloff = 8

-- Don’t create temporary .swp files to recover unsaved changes after a crash
-- No extra swap files cluttering your directories
opt.swapfile = false

-- Disable creation of backup files (usually filename~) before overwriting a file when saving
opt.backup = false

-- Directory where Neovim stores persistent undo history
-- So when you reopen a file, you can still undo changes from your previous editing session
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Enables persistent undo, so Neovim saves undo history to a file.
opt.undofile = true

-- Shows search matches as you type instead of waiting until you press Enter
-- Makes it easier to see and navigate matches in real time
opt.incsearch = true

-- It sets the time in ms that nvim waits before triggering events like CursorHold or writing swap/undo info.
-- Makes things like cursor-hover plugins, diagnostics, or linting feel much more responsive.
opt.updatetime = 50

-- 3 = global statusline
-- Prevents nvimtree shrinking the status line
opt.laststatus = 3
