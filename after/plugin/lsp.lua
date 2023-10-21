
local lsp_zero = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'tsserver', 'rust_analyzer'},
  handlers = {
    lsp_zero.default_setup,
  }
})

local cmp = require('cmp')
cmp.setup({
    sources = {
        {name = 'nvim_lsp'}
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
});

lsp_zero.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
});

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false };
    

    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts);
    vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
    vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<F2>', function() vim.lsp.buf.signature_help() end, opts)
end)


-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp_zero.nvim_lua_ls())

lsp_zero.setup()
