return {
	{
		"stevearc/oil.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local oil = require("oil").setup({
				default_file_explorer = false,
			})
			vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open Oil Directory" })
		end,
	},
}
