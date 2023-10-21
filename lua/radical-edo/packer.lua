-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({ "ellisonleao/gruvbox.nvim" });
	use({ 'nvim-treesitter/nvim-treesitter',  run = ':TSUpdate' });
	use({ 'rose-pine/neovim', as = 'rose-pine' });
    use({
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
    });
    use('ray-x/go.nvim');
    use('ray-x/guihua.lua'); -- recommended if need floating window support
	use('mbbill/undotree');
    use('preservim/nerdtree');
    use('theprimeagen/harpoon');
    use('prettier/vim-prettier');
    use('tpope/vim-surround');
    use({ 'codota/tabnine-nvim', run = "./dl_binaries.sh" });
    use('rust-lang/rust.vim');
end)
