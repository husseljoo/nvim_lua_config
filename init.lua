local set = vim.opt

require('mappings')
require('plugins')
require('lsp')

set.number = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 0
set.expandtab = true
set.swapfile = false

--permanent undo
set.undodir= '~/.vimdid'
set.undofile = true


--vim.cmd('silent! colorscheme dracula')
vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        autocmd colorscheme * :hi normal termbg=#000030 termfg=#ffffff
        autocmd colorscheme * :hi Directory ctermfg=#ffffff
    augroup END
]])
vim.o.termguicolors = true
