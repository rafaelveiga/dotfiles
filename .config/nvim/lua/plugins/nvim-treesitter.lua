return {
	-- syntax highlighting
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"elixir",
				"eex",
				"heex",
				"lua",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"yaml",
				"rust",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
