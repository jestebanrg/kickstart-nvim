local keymap = vim.keymap.set
local options = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

--save file
keymap({ 'n', 'v', 'i' }, '<C-s>', '<CMD>:w<CR>', options 'Save File')
keymap('n', '<leader>e', '<CMD>:NvimTreeToggle<CR>', options 'Toggle NvimTree')
keymap('n', '<C-a>', 'gg<S-v>G', options 'Select All')

--- ====== UTILS ======
keymap('n', '<leader>u', '<CMD>:UndotreeToggle<CR>', options 'Toggle Undotree')
keymap('n', '<leader>U', '<CMD>:UndotreeFocus<CR>', options 'Focus Undotree')
keymap('n', '<leader>h', '<CMD>:Huez<CR>', options 'Huez')

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
