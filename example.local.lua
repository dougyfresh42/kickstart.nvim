-- PC-Specific Local Configuration
-- This file is gitignored for machine-specific customizations
--
-- Copy this file to your local machine and customize as needed
-- It must be placed in the lua folder
-- It will be loaded automatically by init.lua

-- =============================================================================
-- PLUGIN CONFIGURATION
-- =============================================================================
-- Set to true to disable Mason and LSP plugins on this PC
vim.g.local_disable_mason = true
vim.g.local_disable_lsp = true

-- Set to true to disable other resource-intensive plugins
vim.g.local_disable_heavy_plugins = false

-- =============================================================================
-- PC-SPECIFIC KEYMAPS
-- =============================================================================
-- Add custom keybindings that are specific to this machine

-- Example: Local development commands
-- vim.keymap.set('n', '<leader>ld', ':lua print("Local dev mode")<CR>', { desc = '[L]ocal [D]ev' })

-- Example: Quick access to local projects
-- vim.keymap.set('n', '<leader>pp', ':cd ~/projects<CR>', { desc = '[P]roject [P]ath' })

-- =============================================================================
-- LOCAL SETTINGS AND PREFERENCES
-- =============================================================================
-- Machine-specific Neovim settings

-- Example: Different font size or terminal settings
-- vim.o.guifont = 'JetBrains Mono:h12'

-- Example: Local backup directories
-- vim.o.backupdir = '~/.local/share/nvim/backup//'

-- =============================================================================
-- CUSTOM FUNCTIONS
-- =============================================================================
-- Define functions that are only available on this machine

-- Example: Toggle local development mode
-- function _G.toggle_local_mode()
--   local mode = vim.g.local_mode_enabled or false
--   vim.g.local_mode_enabled = not mode
--   print('Local mode: ' .. (mode and 'OFF' or 'ON'))
-- end
--
-- vim.keymap.set('n', '<leader>lm', toggle_local_mode, { desc = '[L]ocal [M]ode toggle' })

-- =============================================================================
-- CONDITIONAL CONFIGURATION
-- =============================================================================
-- Apply settings based on machine-specific conditions

-- Example: Different behavior based on hostname
-- local hostname = vim.fn.hostname()
-- if hostname == 'work-laptop' then
--   -- Work-specific settings
--   vim.o.shiftwidth = 4
--   vim.o.tabstop = 4
-- elseif hostname == 'home-desktop' then
--   -- Home-specific settings
--   vim.o.shiftwidth = 2
--   vim.o.tabstop = 2
-- end
--
-- print('Local configuration loaded for: ' .. hostname)

