vim.filetype.add {
  extension = { tex = "tex", zir = "zir" },
  pattern = { ["[jt]sconfig.*.json"] = "jsonc" }
}
vim.o.wildignore =
    "*/node_modules/*,*/tmp/*,tags,*.jpg,*.png,*.pyc,*.min.js,*/dist/*,*/json/*,*/csv/*,*/target/*,node_modules,*.json,*.csv,*.txt,*.tsv"

vim.o.autoindent = true
vim.o.autoread = true
vim.o.backspace = "eol,start,indent"
vim.o.backup = false
vim.o.cindent = true
vim.o.cmdheight = 2 -- Height of the command bar
vim.o.conceallevel = 0
vim.o.cursorline = true -- highlight current line
vim.o.errorbells = false
vim.o.expandtab = true
vim.o.fileencoding = "utf-8" -- the encoding written to a file
vim.o.foldcolumn = "1" -- Add a bit extra margin to the left
vim.o.foldenable = true -- enable folding
vim.o.foldlevelstart = 10 -- open most folds by default
vim.o.foldmethod = "syntax" -- fold based on indent level
vim.o.foldnestmax = 10 -- 10 nested fold max
vim.o.hidden = true -- if hidden is not set, TextEdit might fail.
vim.o.hlsearch = true -- highlight matches
vim.o.ignorecase = true -- ignore case in search patterns
vim.o.incsearch = true -- search as characters are entered
vim.o.lazyredraw = true -- redraw only when we need to.
vim.o.linebreak = true
vim.o.mat = 2 -- How many tenths of a second to blink when matching brackets
vim.o.number = true
vim.o.relativenumber = true
vim.o.ruler = true -- Always show current position
vim.o.scrolloff = 8 -- minimal number of screen lines to keep above and below the cursor.
vim.o.sessionoptions = 'blank,curdir,folds,tabpages,winsize,winpos,terminal'
vim.o.shiftwidth = 2
vim.o.showcmd = true -- show command in bottom bar
vim.o.showmatch = true -- Show matching brackets when text indicator is over them
vim.o.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.o.sidescrolloff = 8 -- minimal number of screen lines to keep left and right of the cursor.
vim.o.signcolumn = "yes:1"
vim.o.smartcase = true -- smart case
vim.o.smartindent = true
vim.o.softtabstop = 2
vim.o.swapfile = false
vim.o.tabstop = 2
vim.o.termguicolors = true
vim.o.textwidth = 80
vim.o.timeoutlen = 600
vim.o.ttyfast = true
vim.o.updatetime = 300 -- You will have bad experience for diagnostic messages when it's default 4000.
vim.o.visualbell = false
vim.o.whichwrap = "b,s,<,>,h,l,[,]"
vim.o.wildmenu = true -- visual autocomplete for command menu
vim.o.wrap = true
vim.o.writebackup = false -- Some servers have issues with backup files, see #649
vim.opt.list = false
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.shortmess:append "I" -- don't show the default intro message
vim.opt.shortmess:append "c" -- don't show redundant messages from ins-completion-menu
vim.opt.spelllang:append "cjk" -- disable spellchecking for asian characters (VIM algorithm does not support it)
