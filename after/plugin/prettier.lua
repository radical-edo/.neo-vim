vim.keymap.set('n', '<leader>pp', vim.cmd.Prettier);
vim.api.nvim_create_autocmd({
    'BufWritePre'
}, {
    pattern = { '*.mjs', '*.jsx', --[['*.json',]] '*.js', '*.ts', '*.tsx', '*.css', '*.scss', '*.html' },
    callback = function () vim.cmd.Prettier() end
})
