vim.keymap.set('n', "<Space>", ":")
vim.keymap.set('n', "<C-d>", "9j")
vim.keymap.set('n', "<C-u>", "9k")
vim.keymap.set('n', "<C-j>", "4j")
vim.keymap.set('n', "<C-k>", "4k")
vim.keymap.set('n', "<Up>", "<Nop>")
vim.keymap.set('n', "<Down>", "<Nop>")
vim.keymap.set('n', "<Left>", "<Nop>")
vim.keymap.set('n', "<Right>", "<Nop>")

vim.api.nvim_set_keymap("n", "<C-S-c>", ":normal! \"+y<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-S-v>", ":normal! \"+gP<CR>", {noremap = true, silent = true})

vim.g.mapleader = "<Tab>"

-- Bufferline keybindings
vim.keymap.set('n', "<C-h>", "BufferLineCyclePrev<Enter>")
vim.keymap.set('n', "<C-l>", "BufferLineCycleNext<Enter>")
vim.keymap.set('n', "<leader-h>", "BufferLineCyclePrev<Enter>")
vim.keymap.set('n', "<leader-l>", "BufferLineCycleNext<Enter>")



-- Nvim-tree relevant keybindings
vim.keymap.set('n', ";;", ":NvimTreeToggle<Enter>")
vim.keymap.set('n', ";f", ":NvimTreeFindFile<Enter>")
