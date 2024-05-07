-- set leader key to space


---------------------
-- General Keymaps
---------------------

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

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

-- telescope git commands (not on youtube nvim video)
--keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
--keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
--keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
--keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

if vim.g.vscode then
	
	-- Vertical Scrolling
  local function center_screen() vim.cmd("call <SNR>3_reveal('center', 0)") end
	vim.keymap.set("", "z,", center_screen)
	local function top_screen() vim.cmd("call <SNR>3_reveal('top', 0)") end
	vim.keymap.set("", "zm", top_screen)
	local function bottom_screen() vim.cmd("call <SNR>3_reveal('bottom', 0)") end
	vim.keymap.set("", "z.", bottom_screen)
	local function move_to_top_screen()
		vim.cmd("call <SNR>3_moveCursor('top')")
	end
	local function move_to_bottom_screen()
		vim.cmd("call <SNR>3_moveCursor('bottom')")
	end

	local function move_to_bottom_screen__center_screen()
		move_to_bottom_screen()
		center_screen()
	end
	vim.keymap.set("", "L", move_to_bottom_screen__center_screen)

	local function move_to_top_screen__center_screen()
		move_to_top_screen()
		center_screen()
	end
	vim.keymap.set("", "H", move_to_top_screen__center_screen)
	
else
    -- local move_to_bottom_screen__center_screen = 'Lzz'
	-- vim.keymap.set("", "L", move_to_bottom_screen__center_screen)

	-- local move_to_top_screen__center_screen = 'Hzz'
	-- vim.keymap.set("", "H", move_to_top_screen__center_screen)

	-- local bottom_screen = "zb"
	-- vim.keymap.set("", "z.", bottom_screen)

	-- local top_screen = "zt"
	-- vim.keymap.set("", "zm", top_screen)

	-- local center_screen = "zz"
	-- vim.keymap.set("", "z,", center_screen)
end
