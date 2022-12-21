--Mappings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--escape mapping
map('i', '<C-j>', '<Esc>')
map('i', '<C-k>', '<Esc>')

--no arrow keys
map('n', '<up>'   , '<nop>')
map('n', '<down>' , '<nop>')
map('n', '<left>' , '<nop>')
map('n', '<right>', '<nop>')

--copy to clipboard
map('v', '<C-c>', '"+y')

--map leader is space
vim.g.mapleader = " "

--useful leader mappings
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':wq!<CR>')
map('n', '<leader>s', ':source %<CR>')

map('n', '<leader>ev', ':vsplit $MYVIMRC<CR>')
map('n', '<leader>sv', ':w<CR>:so %<CR>:q<CR>')

--left and right can switch buffers
map('n', '<left>' , ':bp<CR>')
map('n', '<right>', ':bn<CR>')

--yank to end of line
map('n', 'Y', 'y$')

--toggle between buffers
map('n', '<leader><Space>' , ':b#<CR>')
map('n', '\\' , ':b#<CR>')

--move by line
map('n', 'j' , 'gj')
map('n', 'k' , 'gk')

--open hotkeys
map('n', '<C-p>' , ':Files<CR>')
map('n', '<C-p>' , ':Files<CR>')
map('n', '<leader>;', ':Buffers<CR>')

--neat X clipboard integration
--p will paste clipboard into buffer
--c will copy entire buffer into clipboard
map('n', '<leader>p', ':read !xsel --clipboard --output<cr>')
map('n', '<leader>c', ':w !xsel -ib<cr><cr>')
