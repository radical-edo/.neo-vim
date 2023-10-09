require('rose-pine').setup({
    variant = 'dark',
    --[[groups = {
        ['@constructor'] = { fg = vim.g.terminal_color_12 }
    }]]
});
function ColorScheme(color)
    -- require('monokai').setup({
    --       palette = require('monokai').soda
    -- });

    vim.cmd.colorscheme(color);
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' });
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' });
end;
ColorScheme('rose-pine');

