-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Enter command mode
vim.keymap.set({ "n", "v" }, ";", ":", { nowait = true })
vim.keymap.set({ "n", "v" }, ":", ";", { nowait = true })

-- Visual block mode
vim.keymap.set("n", "<C-q>", "<C-v>", { noremap = true })

-- Visually select pasted or yanked text
vim.keymap.set("n", "gV", "`[v`]", { noremap = true })

-- navigate tab completion with <c-j> and <c-k>
-- runs conditionally
vim.keymap.set("c", "<C-j>", function()
  return vim.fn.pumvisible() == 1 and "<C-n>" or "<Down>"
end, { expr = true, noremap = true })
vim.keymap.set("c", "<C-k>", function()
  return vim.fn.pumvisible() == 1 and "<C-p>" or "<Up>"
end, { expr = true, noremap = true })

-- Navigate buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { silent = true })
