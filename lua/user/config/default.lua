return {
  lsp = {
    mason = {
      enable = true,
      auto_install = true,
      -- on NixOS lua_ls server fails because when call to server binary get an unknown error
      -- lua_ls server is disabled from servers_black_list. Manual install in required
      servers_black_list = { "lua_ls" },
      options = {
        -- https://github.com/williamboman/mason.nvim#default-configuration
        -- empty object use default config values
      },
    },
    servers = {
      emmet_ls = { enable = true },
      html = { enable = true },
      jsonls = { enable = true },
      lua_ls = { enable = true },
      tailwindcss = { enable = true },
      tsserver = { enable = true },
      rnix = { enable = true },
    },
  }
}


