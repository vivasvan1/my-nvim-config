return {
	{
		"tzachar/cmp-ai",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			local cmp_ai = require("cmp_ai.config")

			cmp_ai:setup({
				max_lines = 100,
				provider = "Ollama",
				provider_options = {
					model = "starcoder2:3b",
					prompt = function(lines_before, lines_after)
						-- prompt depends on the model you use. Here is an example for starcoder2
						return "<fim_prefix> " .. lines_before .. " <fim_suffix>" .. lines_after .. " <fim_middle>" -- for codellama
					end,
				},
				debounce_delay = 600, -- ms llama may be GPU hungry, wait x ms after last key input, before sending request to it
				notify = true,
				notify_callback = function(msg)
					vim.notify(msg)
				end,
				run_on_every_keystroke = true,
				ignored_file_types = {
					-- default is not to ignore
					-- uncomment to ignore in lua:
					-- lua = true
				},
			})
		end,
	},
	{ "hrsh7th/nvim-cmp", dependencies = { "tzachar/cmp-ai" } },
}
