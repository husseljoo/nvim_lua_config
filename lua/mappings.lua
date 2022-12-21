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
map('n', '<C-c>', '"+y')

--map leader is space
vim.g.mapleader = " "

--useful leader mappings
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':wq!<CR>')
map('n', '<leader>s', ':source %<CR>')

map('n', '<leader>ev', ':vsplit $MYVIMRC<CR>')
map('n', '<leader>sv', ':w<CR>:so %<CR>:q<CR>')
