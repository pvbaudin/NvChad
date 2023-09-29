local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


-- Scroll down half a page with Ctrl+D
vim.api.nvim_set_keymap('n', '<C-d>', ':resize -2<CR>', { noremap = true, silent = true })

-- Scroll up half a page with Ctrl+U
vim.api.nvim_set_keymap('n', '<C-u>', ':resize +2<CR>', { noremap = true, silent = true })

-- Set relative line numbers as the default
vim.cmd('set relativenumber')

-- Set the background to be transparent
--vim.cmd('highlight Normal ctermbg=NONE guibg=NONE')

autocmd("vimenter", {
  pattern = "*",
  command = "highlight Normal ctermbg=NONE guibg=NONE",
})
