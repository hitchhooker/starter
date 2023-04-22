-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Create an augroup to avoid duplicating autocmds when reloading the config
vim.api.nvim_exec(
  [[
  augroup reload_lua
    autocmd! 
  augroup END
]],
  false
)

-- Add the BufWritePost autocmd to the reload_lua group
vim.api.nvim_exec(
  [[
  augroup reload_lua
    autocmd BufWritePost *.lua Reload
  augroup END
]],
  false
)
