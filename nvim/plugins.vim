" ------------------------------------------------------------------------------
" # Plugin Definitions
" ------------------------------------------------------------------------------

    " Github Copilot
    " Plug 'github/copilot.vim'

    " Vim Commentary
    Plug 'tpope/vim-commentary'

    " Smooth Scroll
    Plug 'karb94/neoscroll.nvim'

    " Vim Debug for Xdebug
    Plug 'vim-vdebug/vdebug'

    " Mardown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

    " Distraction Free Writing
    Plug 'junegunn/goyo.vim'

    " Bufferline
    Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

    " Git Messenger
    Plug 'rhysd/git-messenger.vim'

    " Inline git blame
    Plug 'APZelos/blamer.nvim'

    " Close buffer without closing window or split
    Plug 'moll/vim-bbye'

    " Neoformat
    Plug 'sbdchd/neoformat'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-unimpaired'

    " Vinegar
    Plug 'tpope/vim-vinegar'

    " Vim Surround
    Plug 'tpope/vim-surround'

    " Git Integrations
    Plug 'tpope/vim-fugitive'

    " Testing
    Plug 'vim-test/vim-test'

    " Vimux
    Plug 'preservim/vimux'

    " Tinkeray
    Plug 'jesseleite/vim-tinkeray'

    " Vim Sourcery
    Plug 'jesseleite/vim-sourcery'
    
    " Emmet
    Plug 'mattn/emmet-vim'
 
    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'airblade/vim-rooter'

    " RipGrep
    Plug 'duane9/nvim-rg'

    " Terminal
    Plug 'voldikss/vim-floaterm'

    " Git Diff
    Plug 'sindrets/diffview.nvim'
    Plug 'ThePrimeagen/git-worktree.nvim'

    " Refactoring Tools
    Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

    " Git Signify
    if has('nvim') || has('patch-8.0.902')
        Plug 'mhinz/vim-signify'
    else
        Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    endif
    
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Web Dev Icons
    Plug 'kyazdani42/nvim-web-devicons'
    " Plug 'nvim-tree/nvim-web-devicons' 
    
    " File Icons
    Plug 'ryanoasis/vim-devicons'

    " Lualine
    Plug 'nvim-lualine/lualine.nvim'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'nvim-lua/lsp-status.nvim'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'folke/trouble.nvim'
    Plug 'onsails/lspkind-nvim'
    Plug 'tami5/lspsaga.nvim', { 'branch':'main' }
    Plug 'windwp/nvim-autopairs'

    "Nord Theme
    Plug 'shaunsingh/nord.nvim'

    " Indent Guides
    " Plug 'lukas-reineke/indent-blankline.nvim'

    " Dracula Theme
    Plug 'dracula/vim', { 'as': 'dracula' }

    " Inspired Github Theme
    " Plug 'mvpopuk/inspired-github.vim'

    " Iceberg Theme
    Plug 'cocopon/iceberg.vim'

    " One Dark Pro Theme
    Plug 'olimorris/onedarkpro.nvim'

    " VSCode Theme
    Plug 'Mofiqul/vscode.nvim'

" " ------------------------------------------------------------------------------
" " # Plugins Config
" " ------------------------------------------------------------------------------

" Config: vim-test
let test#strategy = 'floaterm'
let test#php#phpunit#executable = 'php artisan test'
let test#project_root = getcwd()

" Config: floaterm
let g:floaterm_width=0.9
let g:floaterm_height=0.9
let floaterm_title='($1/$2)'

" Config: indent-blankline
let g:indent_blankline_filetype_exclude = ['floaterm', 'lspinfo', 'lsp-installer']
let g:indent_blankline_use_treesitter = v:true

" Config: vim-signify
let g:signify_priority = 1
let g:signify_sign_add = '▍'
let g:signify_sign_change = '▍'
let g:signify_sign_delete_first_line = '▔'
let g:signify_sign_delete = '▁'

" Config: netrw
let g:netrw_keepdir = 0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_localrmdir="rm -r"

" Config: blamer
let g:blamer_show_in_visual_modes = 0
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_relative_time = 1
let g:blamer_prefix = '    ■ '
let g:blamer_template = '<committer>, <committer-time>: <summary>'
let g:blamer_show_in_insert_modes = 0

" Config: git-messenger
let g:git_messenger_include_diff = 'none'
let g:git_messenger_floating_win_opts = { 'border': 'single' }
let g:git_messenger_popup_content_margins = v:false
let g:git_messenger_always_into_popup = v:true

" Config: vdebug
let g:vdebug_options = {
            \   "port" : 9003,
            \   "on_close" : 'detach',
            \   "break_on_open" : 1,
            \   "debug_window_level" : 0,
            \   "debug_file_level" : 2,
            \   "debug_file" : '~/vdebug.log',
            \   "watch_window_style" : 'compact',
            \   "marker_default" : '⬦',
            \   "marker_closed_tree" : '▸',
            \   "marker_open_tree" : '▾',
            \}

let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }
