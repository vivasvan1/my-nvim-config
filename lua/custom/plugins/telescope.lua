return {
	-- {
	--     'nvim-telescope/telescope.nvim',
	--     dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-ui-select.nvim' },
	--     config = function()
	--         local builtin = require("telescope.builtin")
	--
	--         vim.keymap.set('n', '<C-f>', builtin.find_files, {})
	--         vim.keymap.set('n', '<C-p>', builtin.git_files, {})
	--         vim.keymap.set('n', '<leader>fs', function()
	--             builtin.grep_string({ search = vim.fn.input("Grep > ") });
	--         end)
	--
	--         require("telescope").setup({
	--             extensions = {
	--                 ["ui-select"] = {
	--                     require("telescope.themes").get_dropdown {
	--                         -- even more opts
	--                     }
	--                 }
	--             }
	--         })
	--     end
	-- },
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					file_browser = {
						theme = "ivy",
						-- disables netrw and use telescope-file-browser in its place
						-- hijack_netrw = true,
						mappings = {
							["i"] = {
								-- your custom insert mode mappings
							},
							["n"] = {
								-- your custom normal mode mappings
							},
						},
					},
				},
			})
			-- To get telescope-file-browser loaded and working with telescope,
			-- you need to call load_extension, somewhere after setup function:
			require("telescope").load_extension("file_browser")
			vim.keymap.set(
				"n",
				"<leader>ff",
				":Telescope file_browser<CR>",
				{ desc = "[F]ind [F]iles with file_browser" }
			)

			-- open file_browser with the path of the current buffer
			vim.keymap.set(
				"n",
				"<leader>ff",
				":Telescope file_browser path=%:p:h select_buffer=true<CR>",
				{ desc = "[F]ind [F]iles with file_browser" }
			)
		end,
	},
}
