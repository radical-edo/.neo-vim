local builtin = require('telescope.builtin');
vim.keymap.set('n', 'PF', builtin.find_files, {});
vim.keymap.set('n', '<C-p>', builtin.git_files, {});
vim.keymap.set('n', 'PS', builtin.live_grep, {});
