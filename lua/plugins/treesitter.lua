return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate", 
	config=function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_install = {"help", "javascript", "typescript", "c", "lua", "go", "rust"},
			auto_install = true,
          		sync_install = false,
          		highlight = { enable = true },
          		indent = { enable = true },  
        	})
	end
} 
