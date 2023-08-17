vim.keymap.set('n', '<C-h>', '<C-W><C-H>');
vim.keymap.set('n', '<C-l>', '<C-W><C-L>');
vim.keymap.set('n', '<C-k>', '<C-W><C-K>');
vim.keymap.set('n', '<C-j>', '<C-W><C-J>');
vim.keymap.set('n', '<leader>v', '"+p');
vim.keymap.set('v', '<leader>c', '"+y');
vim.keymap.set('n', '<leader><leader>', vim.cmd.nohlsearch);

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv");
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv");
