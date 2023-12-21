
-- space + p to find files
vim.keymap.set("n", "<leader>p", function()
  require("telescope.builtin").find_files()
end)

-- space + f to search in files
vim.keymap.set("n", "<leader>f", function()
  require("telescope.builtin").live_grep()
end)

-- ctrl + / to comment
vim.api.nvim_set_keymap("n", "<C-_>", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("x", "<C-_>", "<Plug>kommentary_visual_default", {})

-- ctrl + n to open NERDTree
vim.api.nvim_set_keymap("n", "<C-n>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

-- alt + 1 or 2 to switch between tabs
vim.api.nvim_set_keymap("n", "<A-1>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-2>", ":bnext<CR>", { noremap = true, silent = true })

keyset = vim.keymap.set

