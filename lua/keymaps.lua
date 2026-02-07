-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Terminal mode navigation
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w><C-h>', { desc = 'Move focus to the left window from terminal' })
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w><C-j>', { desc = 'Move focus to the lower window from terminal' })
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w><C-k>', { desc = 'Move focus to the upper window from terminal' })
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w><C-l>', { desc = 'Move focus to the right window from terminal' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
-- define a function to check if there is a pane to the left
--
function ToggleNvimTree()
  local row, column = unpack(vim.api.nvim_win_get_position(0))

  if column == 0 then
    require('neo-tree.command').execute { toggle = true }
  else
    vim.api.nvim_cmd({ cmd = 'wincmd', args = { 'h' } }, {})
  end
end

-- define a function to check if there is a pane to the right
function ToggleOpencode()
  local row, column = unpack(vim.api.nvim_win_get_position(0))
  local width = vim.api.nvim_win_get_width(0)
  local total_width = vim.api.nvim_get_option_value('columns', {})

  if column + width >= total_width then
    require('opencode').toggle()
  else
    vim.api.nvim_cmd({ cmd = 'wincmd', args = { 'l' } }, {})
  end
end

vim.keymap.set('n', '<C-w>h', ToggleNvimTree)
vim.keymap.set('n', '<C-h>', ToggleNvimTree)
vim.keymap.set('n', '<C-l>', ToggleOpencode)
vim.keymap.set('t', '<C-l>', ToggleOpencode)
