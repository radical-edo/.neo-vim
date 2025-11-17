vim.keymap.set('n', 'rit', vim.cmd.NvimTreeFindFile);
vim.keymap.set('n', '<C-\\>', vim.cmd.NvimTreeToggle);

local function my_on_attach(bufnr)
  local api = require('nvim-tree.api');

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end;

  api.config.mappings.default_on_attach(bufnr);
  vim.keymap.set('n', 'p', api.node.navigate.parent, opts('Go to Parent Directory'));
  vim.keymap.set('n', 'H', api.node.navigate.sibling.next, opts('Go to Next Sibling'));
  vim.keymap.set('n', 'L', api.node.navigate.sibling.prev, opts('Go to Previous Sibling'));
  vim.keymap.set('n', '.', api.tree.toggle_hidden_filter, opts('Hide .dotfiles'));
  vim.keymap.set('n', 's', '<Nop>', opts('Do Nothing'));
  vim.keymap.set('n', 'P', api.fs.paste, opts('Paste File'));
end;

require('nvim-tree').setup({
  on_attach = my_on_attach,
  filters = {
    dotfiles = true,
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    }
  },
  view = {
    width = 45,
  },
});
