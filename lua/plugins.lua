return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Colors
	use 'Jorengarenar/vim-darkness'
	use 'LuRsT/austere.vim'
	use 'LuRsT/dvo.vim'
	use 'Michal-Miko/vim-mono-red'
	use 'Resonious/vim-camo'
	use 'abnt713/vim-hashpunk'
	use 'chr4/jellygrass.vim'
	use 'duckwork/low.vim'
	use 'fenetikm/falcon'
	use 'igrmk/kull-vim'
	use 'jalvesaq/southernlights'
	use 'jaredgorski/fogbell.vim'
	use 'jasoncarr0/sidewalk-colorscheme'
	use 'kyoto-shift/film-noir'
	use 'lucasprag/simpleblack'
	use 'marlun/vim-starwars'
	use 'p7g/vim-bow-wob'
	use 'rafi/awesome-vim-colorschemes'
	use 'ryanpcmcquen/true-monochrome_vim'
	use 'sff1019/vim-joker'
	use 'shattered/vimcolors'
	use 'smallwat3r/vim-simplicity'
	use 'szorfein/fantasy.vim'
	use 't184256/vim-boring'
	use 'theJian/Mogao'
	use 'tomasr/molokai'
	use 'tudurom/bleh.vim'
	use 'zaki/zazen'
	use 'zefei/simple-dark'

	-- git wrapper
	use 'tpope/vim-fugitive'

	-- vim commentary
	use 'tpope/vim-commentary'

	-- A solid language pack for Vim.
	use 'sheerun/vim-polyglot'

	-- A tree explorer plugin for vim.
	use 'ntpeters/vim-better-whitespace'

	-- This plugin is used for displaying thin vertical lines at each indentation
	use 'Yggdroot/indentLine'

	-- GUI enhancements
	use 'itchyny/lightline.vim'

	-- Coc is an intellisense engine for vim8 & neovim.
	use {'neoclide/coc.nvim', branch = 'release'}

	-- MarkdownPreview
	use({
			'iamcco/markdown-preview.nvim',
			run = 'cd app && yarn install',
			setup = function() vim.g.mkdp_filetypes = { 'markdown' } end,
			ft = { 'markdown' }
		})

	-- Linter
	use 'dense-analysis/ale'

	-- Auto Pair
	use 'jiangmiao/auto-pairs'

	-- Closetag
	use 'alvan/vim-closetag'

	-- Autogenerate tags
	use 'ludovicchabant/vim-gutentags'

	-- Autoreoad Change Files
	use 'djoshea/vim-autoread'

	-- Color hex
	use 'etdev/vim-hexcolor'

	-- fzf fuzzy finder - https://github.com/junegunn/fzf
	use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }

	-- https://github.com/junegunn/fzf.vim
	use 'junegunn/fzf.vim'

	-- coc.nvim source for Zsh completions
	use 'tjdevries/coc-zsh'

	-- LSP
	use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig'
  use 'neovim/nvim-lspconfig'

	-- Lightline
	vim.cmd([[
	if !has('gui_running')
		set t_Co=256
	endif

	let g:lightline = {
				\ 'tabline': {
				\   'left': [ [ 'tabs' ] ],
				\   'right': [ ]
				\ },
				\ 'colorscheme': 'simpleblack',
				\ 'active': {
				\   'left': [ [ 'mode', 'paste' ],
				\             [ 'readonly', 'filename', 'modified' ] ],
				\   'right': [ [ 'lineinfo' ],
				\              [ 'percent' ],
				\              [ 'fileencoding', 'filetype' ] ],
				\ },
				\ 'component_function': {
				\   'filename': 'LightlineFilename'
				\ },
				\ }

		function! LightlineFilename()
			return expand('%:t') !=# '' ? @% : '[No Name]'
		endfunction

		" Prettier format file
		command! -nargs=0 Prettier :CocCommand prettier.formatFile

		" Use `:F` to format current buffer
		command! -nargs=0 F :call CocAction('format')

		" YAML file support
		autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
	]])
end)
