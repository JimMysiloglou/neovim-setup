local keymap = vim.keymap.set

local ok, wk = pcall(require, "which-key")
if ok then
  wk.register({
    r = {
      name = "repl",
      r = "Start REPL",
      s = "Send selection",
      f = "Send file",
      l = "Send line",
      q = "Quit REPL",
    },
  }, { prefix = "<leader>" })
end

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

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local keymap = vim.keymap.set
    local opts = { buffer = event.buf }

    keymap("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Go to definition" }))
    keymap("n", "gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "Go to references" }))
    keymap("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Hover documentation" }))
    keymap("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename symbol" }))
    keymap("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code action" }))
    keymap("n", "<leader>lf", function()
      vim.lsp.buf.format({ async = true })
    end, vim.tbl_extend("force", opts, { desc = "Format file" }))
  end,
})
