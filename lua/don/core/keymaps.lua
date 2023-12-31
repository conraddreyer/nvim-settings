-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- move lines up/down
-- THESE WORK FOR MAC, because alt+j is º and alt+k is ∆ as a symbol. Normally, one should use <M-j> and <M-k> instead.
keymap.set("n", "º", ":m+1<CR>") -- move line down
keymap.set("n", "∆", ":m-2<CR>") -- move line up
keymap.set("n", "<M-j>", ":m+1<CR>") -- move line down
keymap.set("n", "<M-k>", ":m-2<CR>") -- move line up

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<C-u>", "<C-u>zz") -- scroll half page up and center view
keymap.set("n", "<C-d>", "<C-d>zz") -- scroll half page up and center view

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- harpoon
keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>") -- add current file to harpoon bookmarks
keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>") -- toggle harpoon quick menu
keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>") -- navigate to next harpoon bookmark
keymap.set("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>") -- navigate to previous harpoon bookmark
keymap.set("n", "<leader>hh", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>") -- navigate to first harpoon bookmark
keymap.set("n", "<leader>hj", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>") -- navigate to second harpoon bookmark
keymap.set("n", "<leader>hk", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>") -- navigate to second harpoon bookmark
keymap.set("n", "<leader>hl", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>") -- navigate to second harpoon bookmark

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
