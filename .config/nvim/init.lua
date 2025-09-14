--- [[ settings ]]
--- sets <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- sets nerdfont to true
vim.g.have_nerd_font = true

-- line numbers
vim.o.number = true

-- mouse mode
vim.o.mouse = "a"

-- statusbar shows mode
vim.o.showmode = true

-- sync clipboard between os and nvim
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- enable break indent
-- wrapped line repeats indent
vim.o.breakindent = true

-- save undo history
vim.o.undofile = true

-- case insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- signcolumn
vim.o.signcolumn = "yes"

-- decrease some times
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- configure splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.o.list = true
vim.opt.listchars = {
	tab = "» ",
	trail = "·",
	nbsp = "␣",
}

-- Preview substitutions live, as you type!
vim.o.inccommand = "split"

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 999

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true

-- Sets the tab size to 2 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

require("config.lazy")
require("config.keymap")
require("config.colorscheme")
