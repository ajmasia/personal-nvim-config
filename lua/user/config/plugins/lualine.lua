require("lualine").setup {
  options = {
    theme = "auto",
    icons_enabled = true,
    globalstatus = true,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      statusline = { "alpha", "dashboard", "TelescopePrompt" },
      winbar = {
        "help",
        "startify",
        "dashboard",
        "packer",
        "neogitstatus",
        "NvimTree",
        "Trouble",
        "alpha",
        "lir",
        "Outline",
        "spectre_panel",
        "toggleterm",
        "Scratch"
      },
    },
  },
  extensions = { "lazy" },
  sections = {
    lualine_a = { { "mode", upper = true } },
    lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
    lualine_c = { { "filename", file_status = true, path = 1 } },
    lualine_x = {
      "diagnostics",
      { "diff",
        symbols = {
          added = " ",
          modified = " ",
          removed = " ",
        },
      },
      {
        require("lazy.status").updates,
        cond = require("lazy.status").has_updates,
        color = { fg = "ff9e64" },
      },
    },
    lualine_y = { "filetype" },
    lualine_z = { "location" },
  },
}
