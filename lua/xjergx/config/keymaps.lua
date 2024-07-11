local keymap = vim.keymap.set
local options = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

--save file
keymap({ 'n', 'v', 'i' }, '<C-s>', '<CMD>:w<CR><ESC>', options 'Save File')
keymap({ 'n', 'v', 'i' }, '<C-s>', '<CMD>:w<CR><ESC>', options 'Save File')
-- keymap('n', '<leader>e', '<CMD>:NvimTreeToggle<CR>', options 'Toggle NvimTree')
keymap('n', '<leader>e', '<CMD>Neotree toggle<CR>', options 'Toggle NeoTree')
keymap('n', '<C-a>', 'gg<S-v>G', options 'Select All')

--- move line below
keymap('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
keymap('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })

--clone line below
keymap('v', 'MJ', 'mzJ`z', { desc = 'Clone line down' })
keymap('v', 'MK', 'mzK`z', { desc = 'Clone line up' })
keymap('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down' })
keymap('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up' })

--- ====== UTILS ======
keymap('n', '<leader>u', '<CMD>:UndotreeToggle<CR>', options 'Toggle Undotree')
keymap('n', '<leader>U', '<CMD>:UndotreeFocus<CR>', options 'Focus Undotree')
keymap('n', '<leader>h', '<CMD>:Huez<CR>', options 'Huez')
keymap('n', '<leader>rn', ':IncRename ', options 'Rename Variable')

--- ====== TABS ======
keymap('n', '<Tab>n', '<CMD>:tabnew<CR>', options 'New Tab')
keymap('n', '<Tab>c', '<CMD>:tabclose<CR>', options 'Close Tab')
keymap('n', '<Tab>m', '<CMD>:tabmove<CR>', options 'Move Tab')
keymap('n', '<Tab>o', '<CMD>:tabonly<CR>', options 'Only Tab')
keymap('n', '<Tab>p', '<CMD>:tabp<CR>', options 'Previous Tab')
keymap('n', '<Tab><Tab>', '<CMD>:tabn<CR>', options 'Next Tab')

--- ====== WINDOWS ======
keymap('n', '<C-h>', '<CMD>:wincmd h<CR>', options 'Window Left')
keymap('n', '<C-j>', '<CMD>:wincmd j<CR>', options 'Window Down')
keymap('n', '<C-k>', '<CMD>:wincmd k<CR>', options 'Window Up')
keymap('n', '<C-l>', '<CMD>:wincmd l<CR>', options 'Window Right')

-- ======= GIT ========
keymap('n', '<leader>fl', '<CMD>:LazyGit<CR>', options 'LazyGit')
