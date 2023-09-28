return {
  icons = {
    diagnostic = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
  },
  lsp = {
    mason = {
      auto_install = true,
      -- on NixOS lua_ls server fails because when call to server binary get an unknown error
      -- lua_ls server is disabled from servers_black_list. Manual install in required
      enable = true,
      options = {
        -- https://github.com/williamboman/mason.nvim#default-configuration
        -- empty object use default config values
      },
      servers_black_list = { "lua_ls" },
    },
    -- lspconfig available servers
    servers = {
      astro = { enable = true },
      emmet_ls = { enable = true },
      html = { enable = true },
      jsonls = { enable = true },
      lua_ls = { enable = true },
      rnix = { enable = true },
      tailwindcss = { enable = true },
      tsserver = { enable = true },
      eslint = { enable = true },
    },
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = {
        spacing = 4,
        source = "if_many",
        prefix = "●",
        -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
        -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
        -- prefix = "icons",
      },
      severity_sort = true,
    },
  },
  theme = "tokyonight",
}

