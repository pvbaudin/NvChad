require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"


-- Scroll down half a page with Ctrl+D
vim.api.nvim_set_keymap('n', '<C-d>', ':resize -2<CR>', { noremap = true, silent = true })

-- Scroll up half a page with Ctrl+U
vim.api.nvim_set_keymap('n', '<C-u>', ':resize +2<CR>', { noremap = true, silent = true })

-- Set relative line numbers as the default
vim.cmd('set relativenumber')

