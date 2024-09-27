vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set linebreak")
vim.cmd("set scrolloff=5")
vim.cmd("set ignorecase smartcase")
vim.cmd("set autoindent")
vim.cmd("set noswapfile")

vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })
vim.keymap.set({ "n", "v" }, "H", "^", { noremap = true, silent = false })
vim.keymap.set({ "n", "v" }, "J", "5j", { noremap = true, silent = false })
vim.keymap.set({ "n", "v" }, "K", "5k", { noremap = true, silent = false })
vim.keymap.set({ "n", "v" }, "L", "$", { noremap = true, silent = false })

vim.keymap.set("n", ";", ":", { noremap = true, silent = false })
vim.keymap.set("n", ":", ";", { noremap = true, silent = false })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = false })

-- undo dir
USER = os.getenv("USER")
UNDODIR = "/home/" .. USER .. "/.nvim/undo//"
if vim.fn.isdirectory(UNDODIR) == 0 then
    vim.fn.mkdir(UNDODIR, "p", "0o700")
end
vim.opt.undodir = UNDODIR
vim.opt.undofile = true
