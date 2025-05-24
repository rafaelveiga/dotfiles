-- [[ Vim Keymaps ]]
-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<jlki> to switch between windows
vim.keymap.set("n", "<C-j>", "<C-w><C-h>", {
    desc = "Move focus to the left window"
})
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", {
    desc = "Move focus to the right window"
})
vim.keymap.set("n", "<C-k>", "<C-w><C-j>", {
    desc = "Move focus to the lower window"
})
vim.keymap.set("n", "<C-i>", "<C-w><C-k>", {
    desc = "Move focus to the upper window"
})

-- control shift l to split left vertically
vim.keymap.set("n", "<C-A-l>", "<C-w>v", {
    desc = "Split window horizontally"
})
vim.keymap.set("n", "<C-A-k>", "<C-w>s", {
    desc = "Split window vertically"
})

-- [[ Plugin Keymaps ]]

