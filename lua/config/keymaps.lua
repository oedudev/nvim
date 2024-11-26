-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-n>", ":Neotree toggle<CR>", opts)
map("n", "<C-z>", ":undo<CR>", opts)

map("n", "<C-x>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

map("n", "q", ":q<CR>", opts)

-- Aumentar largura com Alt+Right
map("n", "<M-Right>", ":vertical resize +2<CR>", opts)

-- Diminuir largura com Alt+Left
map("n", "<M-Left>", ":vertical resize -2<CR>", opts)

-- Aumentar altura com Alt+Up
map("n", "<M-Up>", ":resize +2<CR>", opts)

-- Diminuir altura com Alt+Down
map("n", "<M-Down>", ":resize -2<CR>", opts)

-- Mapear Tab para o próximo buffer
map("n", "<Tab>", ":bnext<CR>", opts)

-- Mapear Shift+Tab para o buffer anterior
map("n", "<S-Tab>", ":bprevious<CR>", opts)

-- Atalhos para o ToggleTerm
map("n", "<C-t>", ":ToggleTerm<CR>", opts) -- Abre/fecha o terminal
map("t", "<C-t>", "<C-\\><C-n>:ToggleTerm<CR>", opts) -- Fecha no modo terminal

-- Atalhos adicionais para terminais divididos ou flutuantes
map("n", "<Leader>tf", ":ToggleTerm direction=float<CR>", opts) -- Terminal flutuante
map("n", "<Leader>th", ":ToggleTerm direction=horizontal<CR>", opts) -- Terminal horizontal
map("n", "<Leader>tv", ":ToggleTerm direction=vertical<CR>", opts) -- Terminal vertical

-- Sair do modo TERMINAL para o modo NORMAL com Esc
map("t", "<Esc>", "<C-\\><C-n>", opts)

-- Voltar para o terminal ativo (caso deseje usar <Esc> no modo normal)
map("n", "<Esc>", ":startinsert<CR>", opts)
