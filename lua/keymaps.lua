--  See `:help vim.keymap.set()`

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Map keys
vim.keymap.set("v", "j", "gj")
vim.keymap.set("v", "k", "gk")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "qq", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", ";;", "<cmd>nohlsearch<CR>")
--vim.keymap.set("v", "§", "q")
--vim.keymap.set("n", "§", "q")
--vim.keymap.set("n", "q", "")
--vim.keymap.set("v", "q", "")
-- vim.keymap.set("v", "jk", "<Esc>")
-- vim.keymap.set("n", "jk", "<Esc>")
-- vim.keymap.set("v", "kj", "<Esc>")
-- vim.keymap.set("n", "kj", "<Esc>")

-- Show manual
vim.keymap.set("n", "<Leader>m", "K", { desc = "Open terminal [M]anual page" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>l", vim.diagnostic.setloclist, { desc = "Open diagnostic quickfix [L]ist" })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Telescope keybindings
vim.keymap.set(
	"n",
	"<Leader>b",
	"<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal theme=ivy<cr>",
	{ desc = "Open telescope [B]uffers" }
)

--vim.api.nvim_set_keymap("n", "<F2>", ":CFormat42<CR>", { noremap = true, silent = true })
--[[
vim.keymap.set({ "n", "v" }, "<leader>f", function()
	-- Format file based on filetype
	-- ft = current FILETYPE
	local ft = vim.bo.filetype
	if ft == "c" or ft == "cpp" or ft == "h" or ft == "hpp" then
		vim.print("Formatted with CFormat42")
		vim.cmd("CFormat42")
	else
		vim.print("Formatted with Conform")
		require("conform").format({ async = true, lsp_fallback = true })
	end
end, { desc = "[F]ormat buffer" })
]]
--
