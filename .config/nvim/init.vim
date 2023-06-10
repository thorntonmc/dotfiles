-- bootstrap lazy.nvim
-- https://github.com/folke/lazy.nvim#-installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- plugins

require("lazy").setup({
  -- colorscheme 
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    config = function()
      local c = require('vscode.colors').get_colors()
      require('vscode').setup({
        color_overrides = {
	  vscLineNumber = '#FFFFFF',
	}
      })
      require('vscode').load()
    end
  }
})

vim.opt.termguicolors = true -- Enable 24-bit RGB colors

vim.opt.number = true
vim.opt.showmatch = true -- Highlight matching parenthesis


vim.opt.mouse = 'a' -- Enable mouse support
vim.opt.clipboard = 'unnamed,unnamedplus' -- Copy/paste to system clipboard
