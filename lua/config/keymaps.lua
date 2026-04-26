local keymap = vim.keymap.set


keymap("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

keymap("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

keymap("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end, { desc = "Find files" })

keymap("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Live grep" })

keymap("n", "<leader>fb", function()
  require("telescope.builtin").buffers()
end, { desc = "Buffers" })

keymap("n", "<leader>fh", function()
  require("telescope.builtin").help_tags()
end, { desc = "Help tags" })

keymap("n", "<leader>qp", "<cmd>QuartoPreview<CR>", { desc = "Quarto Preview" })
keymap("n", "<leader>qq", "<cmd>QuartoClosePreview<CR>", { desc = "Close Preview" })
keymap("n", "<leader>qr", "<cmd>QuartoRender<CR>", { desc = "Quarto Render" })
