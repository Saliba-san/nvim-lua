-- [[ Basic Keymaps ]]
-- Quality of life
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set({ 'n', 'v' }, 'x', '"_x', { desc = 'x doesnt overwrite registers' })

-- Move Lines
vim.keymap.set('v', '<A-j>', "<cmd>m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', "<cmd>m '>-2<CR>gv=gv")

-- Indent
vim.keymap.set('v', '>', ">gv")
vim.keymap.set('v', '<', "<gv")

-- Arrows
vim.keymap.set('n', '<left>', '<cmd>vertical resize +5<CR>')
vim.keymap.set('n', '<right>', '<cmd>vertical resize -5<CR>')
vim.keymap.set('n', '<up>', '<cmd>resize +5<CR>')
vim.keymap.set('n', '<down>', '<cmd>resize -5<CR>')

-- Window
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--  Terminal
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Tabs
vim.keymap.set('', '<M-t>', '<cmd>tabnew<cr>', { desc = 'Create new tab' })
vim.keymap.set('', '<M-c>', '<cmd>tabclose<cr>', { desc = 'Close current tab' })
vim.keymap.set('', '<M-h>', '<cmd>tabp<cr>', { desc = 'Go to previous tab' })
vim.keymap.set('', '<M-l>', '<cmd>tabn<cr>', { desc = 'Go to next tab' })
vim.keymap.set('', '<M-H>', '<cmd>+tabm<cr>', { desc = 'Move tab left' })
vim.keymap.set('', '<M-L>', '<cmd>-tabm<cr>', { desc = 'Move tab right' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Start Plugins
vim.keymap.set('n', '<leader>n', '<cmd>Neotree toggle<CR>', { desc = 'Opens Neo-tree'} )

-- Telescope
vim.keymap.set('n', '<leader>sp', '<cmd>Telescope projects<CR>', { desc = '[S]earch for [P]rojects'} )
