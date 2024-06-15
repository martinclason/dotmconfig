vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim .keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim .keymap.set("n", "<leader>v", ":e $MYVIMRC<cr>")
-- vim .keymap.set("n", "<S-s>", ":w<cr>")
vim .keymap.set("n", "<leader>w", ":w<cr>")

-- make sure cursor stays in middle of screen when using C-d and C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- vertically center on searchterm when jumping to next
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")


-- quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- let you interactively search replace current word
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")


