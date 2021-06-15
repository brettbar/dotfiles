return require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}
  
  
    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', 
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use { 'nvim-telescope/telescope-symbols.nvim' }

    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }
    use { 'hrsh7th/nvim-compe' }
    use { 'jackguo380/vim-lsp-cxx-highlight' }
    use { 'cohama/lexima.vim' }
  
    -- Language plugins
    use { 'tjdevries/nlua.nvim' }
    use { 'fatih/vim-go' }
    use { 'dart-lang/dart-vim-plugin' }
    use { 'pangloss/vim-javascript' }
    use { 'plasticboy/vim-markdown' }
  
    -- Vim dispatch
    use { 'tpope/vim-dispatch' }
  
    -- Fugitive for Git
    use { 'tpope/vim-fugitive' }

    -- Vim airline
    use { 'vim-airline/vim-airline' }
    use { 'vim-airline/vim-airline-themes' }

    -- Nerdtree
    use { 'ryanoasis/vim-devicons' }
    use { 'preservim/nerdtree' }
    use { 'kyazdani42/nvim-web-devicons' }

    use { 'mbbill/undotree' }
    use { 'ahonn/resize.vim' }
    use { 'psliwka/vim-smoothie' }
    use { 'xolox/vim-notes' }
    use { 'xolox/vim-misc' }
    use { 'preservim/nerdcommenter' }
    use { 'ErichDonGubler/vim-sublime-monokai' }
    use { 'rafi/awesome-vim-colorschemes' }
    use { 'fcpg/vim-fahrenheit' }

    use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }
  end)
