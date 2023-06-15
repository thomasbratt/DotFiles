-- May need to run :PackerSync
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
	-- Packer plugin manager
	use 'wbthomason/packer.nvim'

	-- Colorschemes
	use 'ellisonleao/gruvbox.nvim'
	use 'glepnir/zephyr-nvim'
	use 'projekt0n/github-nvim-theme'
	use 'rose-pine/neovim'
	use 'shaunsingh/nord.nvim'

	-- Transparent backgrounds
	use 'xiyaowong/transparent.nvim'

	-- Rust
	use 'neovim/nvim-lspconfig'
	use 'simrat39/rust-tools.nvim'

	-- Debugging
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'
end)

-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if packer_bootstrap then
	require('packer').sync()
end

-- Set colorscheme
vim.cmd('colorscheme github_dark')
-- vim.cmd('colorscheme gruvbox')
-- vim.cmd('colorscheme nord')
-- vim.cmd('colorscheme rose-pine')
-- vim.cmd('colorscheme zephyr')



-- Set background to transparent
-- :TransparentEnable
-- :TransparentDisable
-- :TransparentToggle-
require('transparent').setup()

-- Set up rust tools
local rt = require("rust-tools")
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

vim.o.expandtab = true
vim.o.number = true    
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.tabstop = 4

