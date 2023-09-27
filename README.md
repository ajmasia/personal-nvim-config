<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Neovim-mark.svg/1200px-Neovim-mark.svg.png" alt="Neovim" height="120">
  <h2 align="center">Neovim</h2>
  <p align="center">My Nevoim config in a rolling way</p>
</p>

Neovim is a powerful text editor that allows for extensive customization. This document provides an overview of the scaffolding for Neovim configuration, detailing the purpose and function of each part.

## Config scafolding


Using a user module for Neovim configuration promotes a dedicated namespace, ensuring personal settings don't collide with default or third-party configurations. This approach enhances organization, readability, and update ease. By isolating custom configurations, users can mitigate errors, simplify sharing or porting settings, and maintain a clear distinction between personal and external configurations.

El módulo que define la configuración tiene la siguiente estructura:

| Fichero/Directorio | Descricpción |
| ------------------ | ------------ |
| `~/.nvim/init.lua` | This is the main entry point for the general configuration of Neovim. In this case will load only the user module |
| `~/.nvim/lua/user` | This directory serves as the main module for user-specific configurations. It's a container for various Lua files and subdirectories that further define the user's Neovim setup |
| `~/.nvim/lua/user/init.lua` | This is the entry point for the user configuration module |
| [~/.nvim/lua/user/plugins](lua/user/plugins/README.md) | This folder contains all plugins definitions will be installed by the package manager |
| [~/.nvim/lua/user/config](lua/user/config/README.md) | This directory contains general editor configurations, such as autocommands, key mappings, and other editor behaviors |
| [~/.nvim/lua/user/config/plugins](lua/user/config/plugins/README.md) | This directory contains configurations specific to each plugin |

