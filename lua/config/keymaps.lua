-- 標準機能
-- 折り返し時に表示行単位での移動できるようにする
vim.keymap.set("n", "j", "gj", { desc = "移動: 次の表示行へ" })
vim.keymap.set("n", "k", "gk", { desc = "移動: 前の表示行へ" })

-- 挿入モードで移動を楽にする
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "挿入モード: カーソル下へ" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "挿入モード: カーソル上へ" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "挿入モード: カーソル左へ" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "挿入モード: カーソル右へ" })

-- 挿入モードのショートカットに合わせて<C-l>を左へ移動にする
-- 画面の再描画は<C-@>に割り当て
vim.keymap.set("n", "<C-l>", "l", { desc = "ノーマルモード: カーソル右へ" })
vim.keymap.set("n", "<C-@>", "<C-l>", { desc = "ノーマルモード: 画面再描画" })

-- ESC連打でハイライト解除
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", { desc = "検索ハイライト解除" })

-- ターミナルの挿入モードからの離脱をESCに割り当てる
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "挿入モードから離脱" })

-- プラグイン
-- space でカスタムキーバインドを使用するモードにする
vim.g.mapleader = " "

-- nvim-telescope/telescope.nvim
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: help tags" })

-- neovim/nvim-lspconfig
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "LSP: go to definition" })
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "LSP: hover" })
vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, { desc = "LSP: go to implementation" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { desc = "LSP: show references" })
vim.keymap.set("n", "<leader>lR", vim.lsp.buf.rename, { desc = "LSP: rename" })
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "LSP: code action" })
vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, { desc = "LSP: show diagnostics" })
