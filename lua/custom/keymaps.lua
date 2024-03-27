-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to System Clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy to System Clipboard" })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "[F]ormat Document" })
