-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

local cmd = require('pckr.loader.cmd');
local keys = require('pckr.loader.keys');

require('pckr').add({
	-- Packer can manage itself
	 {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	},
  { 'loctvl842/monokai-pro.nvim' },
	{ "ellisonleao/gruvbox.nvim" },
	{ 'nvim-treesitter/nvim-treesitter',  run = ':TSUpdate' },
	{ 'rose-pine/neovim', as = 'rose-pine' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    },
    'ray-x/go.nvim',
    'ray-x/guihua.lua', -- recommended if need floating window support
    'mbbill/undotree',
    'theprimeagen/harpoon',
    'prettier/vim-prettier',
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    'tpope/vim-surround',
    'rust-lang/rust.vim',
})
