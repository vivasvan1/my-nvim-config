vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Text Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Text Up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Remove newline char at the end and keep cursor as it is" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down but keep the cursor in the middle." })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up but keep the cursor in the middle." })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to System Clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy to System Clipboard" })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "[F]ormat Document" })
