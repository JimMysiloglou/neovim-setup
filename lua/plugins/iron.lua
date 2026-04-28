return {
  {
    "Vigemus/iron.nvim",
    keys = {
      "<leader>rs",
      "<leader>rr",
      "<leader>rf",
      "<leader>rl",
      "<leader>rq",
    },
    config = function()
      local iron = require("iron.core")

      iron.setup({
        config = {
          scratch_repl = true,
          repl_definition = {
            python = {
              command = { "python3" },
            },
          },
          repl_open_cmd = "vertical botright 40 split",
        },
        keymaps = {
          send_motion = "<leader>rs",
          visual_send = "<leader>rs",
          send_file = "<leader>rf",
          send_line = "<leader>rl",
          send_paragraph = "<leader>rp",
          send_until_cursor = "<leader>ru",
          send_mark = "<leader>rm",
          mark_motion = "<leader>rm",
          remove_mark = "<leader>rmd",
          cr = "<leader>r<cr>",
          interrupt = "<leader>ri",
          exit = "<leader>rq",
          clear = "<leader>rc",
        },
        highlight = {
          italic = true,
        },
        ignore_blank_lines = true,
      })
    end,
  },
}
