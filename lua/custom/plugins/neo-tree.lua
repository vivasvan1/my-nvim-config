return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			vim.keymap.set("n", "<leader>b", "<CMD>Neotree toggle<CR>")
			require("neo-tree").setup({
				window = {
					width = 30, -- applies to left and right positions
					height = 15, -- applies to top and bottom positions
					auto_expand_width = false, -- expand the window when file exceeds the window width. does not work with position = "float"
					mappings = {
						["<tab>"] = function(state)
							state.commands["open"](state)
							vim.cmd("Neotree reveal")
						end,
					},
				},
				filesystem = {
					filtered_items = {
						visible = false, -- when true, they will just be displayed differently than normal items
						hide_dotfiles = false,
						hide_gitignored = true,
						hide_hidden = true, -- only works on Windows for hidden files/directories
						hide_by_name = {
							"node_modules",
						},
						hide_by_pattern = { -- uses glob style patterns
							--"*.meta",
							--"*/src/*/tsconfig.json",
						},
						always_show = { -- remains visible even if other settings would normally hide it
							".gitignored",
						},
						never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
							--".DS_Store",
							--"thumbs.db"
						},
						never_show_by_pattern = { -- uses glob style patterns
							--".null-ls_*",
						},
					},
				},
				default_component_configs = {
					git_status = {
						symbols = {
							-- Change type
							added = "✚", -- NOTE: you can set any of these to an empty string to not show them
							deleted = "✖",
							modified = "",
							renamed = "",
							-- Status type
							untracked = "",
							ignored = "",
							unstaged = "",
							staged = "",
							conflict = "",
						},
						align = "right",
					},
				},
			})
		end,
	},
}
