-- control + p to open Neotree
vim.keymap.set("n", "<C-p>", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end)

-- space + p to open git status
vim.keymap.set("n", "<leader>p", function()
  require("neo-tree.command").execute({ source = "git_status", toggle = true })
end)

-- leader + f to open telescope
vim.keymap.set("n", "<leader>f", function()
  require("telescope.builtin").find_files()
end)