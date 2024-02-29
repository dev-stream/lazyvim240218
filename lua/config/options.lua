-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LF not CRLF
vim.opt.fileformats = "unix,dos"
vim.opt.swapfile = false -- Currently trying other vim Distros

if vim.env.MSYSTEM == "UCRT64" then
  -- msys2 posix environment !!
  vim.opt.shell = "bash --login"
  vim.opt.shellcmdflag = "-i -c"

  -- Tested `which bash` and `ll` custom `ls` alias in ~/.bashrc
  vim.opt.shellxquote = "("
  vim.opt.shellxescape = "^"

  vim.opt.shellquote = ""
  vim.opt.shellpipe = "2>&1| tee"
  vim.opt.shellredir = ">%s 2>&1"
  vim.opt.shellslash = true -- Unfortunately it gives issues with the Obsidian plugin
end

if vim.g.neovide then
  vim.keymap.set({ "n", "v" }, "<C-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
  vim.keymap.set({ "i", "c" }, "<S-Insert>", "<C-R>+")
  vim.opt.guifont = "JetBrainsMono Nerd Font Mono:h12"
end
