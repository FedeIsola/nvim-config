-- Remaps básicos, leader y pv (para abrir el explorador)
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Ex<CR>") 

-- Remaps de navegación de ventanas 
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
