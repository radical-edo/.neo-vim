require('rose-pine').setup({
    variant = 'dark',
    --[[groups = {
        ['@constructor'] = { fg = vim.g.terminal_color_12 }
    }]]
});

require('monokai-pro').setup({
    filter = 'octagon', -- classic | octagon | pro | machine | ristretto | spectrum
    transparent_background = false,
});

function ColorScheme(color)
    vim.cmd.colorscheme(color);
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' });
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' });
end;
ColorScheme('monokai-pro');
