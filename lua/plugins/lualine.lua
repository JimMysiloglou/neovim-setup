return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional but recommended
    opts = {
      options = {
        theme = "auto",
        globalstatus = true, -- one statusline for all splits (modern look)
        section_separators = "",
        component_separators = "",
      },
    },
  },
}
