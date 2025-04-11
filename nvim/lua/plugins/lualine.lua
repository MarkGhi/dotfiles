return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  opts = {
    options = {
      globalstatus = true, -- Set global to avoid bar split when window is splitted
      theme = "everforest",
    },
    tabline = {
      lualine_a = { "buffers" },
      lualine_b = { "branch" },
      lualine_c = { "filename" },
      lualine_x = {},
      lualine_y = {},
      lualine_z = { "tabs" },
    }
  }
}
