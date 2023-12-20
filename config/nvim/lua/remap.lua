-- control + p to open Neotree
vim.keymap.set("n", "<C-p>", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end)

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


keyset = vim.keymap.set

