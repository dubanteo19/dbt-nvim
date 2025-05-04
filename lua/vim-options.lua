vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.relativenumber = true
vim.g.mapleader = " "
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.o.ignorecase = true -- Ignore case when searching
vim.o.smartcase = true -- Override ignorecase if search contains uppercase
vim.o.incsearch = true -- Show matches as you type
vim.o.hlsearch = true -- Highlight search results
vim.o.scrolloff = 9 -- Keep 9 lines visible when scrolling
vim.keymap.set({ "n", "x" }, "<leader>y", [["+y]]) -- copy to system clipboard
vim.keymap.set({ "n", "x" }, "<leader><leader>", ":noh<CR>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>p", [["+p]]) -- paste from system clipboard
vim.api.nvim_set_keymap("n", "<Leader>rr", ":JavaRunnerRunMain<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>rs", ":JavaRunnerStopMain<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>rt", ":JavaRunnerToggleLogs<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<Leader>rc",
	":tabnew | terminal mvn clean && mvn compile<CR>",
	{ noremap = true, silent = true }
)
