vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
-- Open explorer at the project root directory
vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, { desc = "File Explorer (Root)" })

-- Open explorer at the current working directory (cwd)
vim.keymap.set("n", "<leader>E", function() Snacks.explorer({ cwd = vim.fn.getcwd() }) end, { desc = "File Explorer (cwd)" })

