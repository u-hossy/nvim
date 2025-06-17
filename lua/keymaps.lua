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
