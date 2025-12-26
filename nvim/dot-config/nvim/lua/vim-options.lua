vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.autoindent = true

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- line breaks
vim.opt.linebreak = true
vim.opt.wrap = false
-- vim.opt.breakindent = true

-- synv os clipboard
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- choose split direction
vim.opt.splitright = true
vim.opt.splitbelow = true

-- ignore case, set to smartcase
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.confirm = true
--
-- Sets how neovim will display certain whitespace characters in the editor.
-- vim.opt.list = true
-- vim.opt.listchars = { trail = "·", nbsp = "␣" }

-- window border
vim.opt.winborder = "rounded"

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Center after moving page up/down
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = false })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = false })

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })

-- Wrap agnostic j k
vim.keymap.set({ "n", "v" }, "j", "gj", { noremap = true, silent = false })
vim.keymap.set({ "n", "v" }, "k", "gk", { noremap = true, silent = false })
-- faster hjkl navigation
-- vim.keymap.set({ "n", "v" }, "H", "^", { noremap = true, silent = false })
-- vim.keymap.set({ "n", "v" }, "J", "5j", { noremap = true, silent = false })
-- vim.keymap.set({ "n", "v" }, "K", "5k", { noremap = true, silent = false })
-- vim.keymap.set({ "n", "v" }, "L", "$", { noremap = true, silent = false })

-- replacing ; and :
vim.keymap.set({ "n", "v" }, ";", ":", { noremap = true, silent = false })
vim.keymap.set({ "n", "v" }, ":", ";", { noremap = true, silent = false })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = false })

-- undo dir
vim.opt.swapfile = false
USER = os.getenv("USER")
UNDODIR = "/home/" .. USER .. "/.nvim/undo//"
if vim.fn.isdirectory(UNDODIR) == 0 then
	vim.fn.mkdir(UNDODIR, "p", "0o700")
end
vim.opt.undodir = UNDODIR
vim.opt.undofile = true

-- TODO: options to check out...
-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Preview substitutions live, as you type!
vim.opt.inccommand = "nosplit"

-- Diagnostic keymaps
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Set Oil to run with dash
vim.keymap.set("n", "-", "<cmd>Oil<CR>")

vim.keymap.set("n", "<leader>tt", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 15)
end, { desc = "Split with [t]iny [t]erminal on the bottom" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
