-- [[ Vim Keymaps ]]
-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<jlki> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", {
	desc = "Move focus to the left window",
})
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", {
	desc = "Move focus to the right window",
})
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", {
	desc = "Move focus to the lower window",
})
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", {
	desc = "Move focus to the upper window",
})

-- control shift l to split left vertically
vim.keymap.set("n", "<C-A-l>", "<C-w>v", {
	desc = "Split window horizontally",
})
vim.keymap.set("n", "<C-A-k>", "<C-w>s", {
	desc = "Split window vertically",
})

-- navigate buffers
vim.keymap.set("n", "<leader>l", ":bnext<CR>")
vim.keymap.set("n", "<leader>j", ":bprev<CR>")

-- [[ Plugin Keymaps ]]

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {
	desc = "[F]ind [F]iles",
})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
	desc = "[F]ind [G]rep",
})
vim.keymap.set("n", "<leader><leader>", builtin.buffers, {
	desc = "[F]ind [B]uffers",
})

vim.keymap.set("n", "<leader>/", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = true,
	}))
end, {
	desc = "[/] Fuzzily search in current buffer",
})

-- Shortcut for searching your Neovim configuration files
vim.keymap.set("n", "<leader>fn", function()
	builtin.find_files({
		cwd = vim.fn.stdpath("config"),
	})
end, {
	desc = "[S]earch [N]eovim files",
})

-- lsp
vim.keymap.set("n", "gtd", require("telescope.builtin").lsp_definitions, {
	desc = "[G]o [t]o [d]efition",
})
vim.keymap.set("n", "gtt", require("telescope.builtin").lsp_type_definitions, {
	desc = "[G]o [t]o [t]ype definition",
})
