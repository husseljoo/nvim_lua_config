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


--vim.cmd('silent! colorscheme dracula')
vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        autocmd colorscheme * :hi normal termbg=#000030 termfg=#ffffff
        autocmd colorscheme * :hi Directory ctermfg=#ffffff
    augroup END
]])
vim.o.termguicolors = true

--function runFile()
--  if vim.bo.filetype == 'rust' then
--    vim.cmd('RustFmt')
--  else
--    vim.cmd('CocCommand prettier.forceFormatDocument')
--  end
--
