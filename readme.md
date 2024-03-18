# My Neovim Configuration

Welcome to my Neovim configuration repository! This configuration is designed to enhance the Neovim experience with a focus on modularity, ease of use, and personal productivity. It is built using Lua and includes various mappings, plugins, and custom functions to streamline the development workflow.

## Features

- **Modular Configuration:** Organized into separate Lua files for clarity and ease of management.
- **Custom Key Mappings:** Intuitive leader key mappings and shortcuts to speed up common tasks.
- **Plugin Management:** Utilizes [vim-plug](https://github.com/junegunn/vim-plug) for efficient plugin management.

## Installation

To use this Neovim configuration, ensure you have Neovim (0.5 or newer) installed. Then, follow these steps:

1. **Back Up Your Current Configuration** (if necessary):

   ```sh
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone the Repository:**

   ```sh
   git clone https://github.com/sohanemon/lua-config.git ~/.config/nvim
   ```

3. **Install Plugins:**

   Launch Neovim and enter the following command to install the plugins:

   ```vim
   :PlugInstall
   ```

## Usage

This configuration is designed to be intuitive. Here are some highlights to get you started:

- **Leader Key:** The `space` key is set as the leader key, providing quick access to numerous commands and plugins.
- **File Exploration:** `<leader>e` to toggle the file explorer.
- **Custom Config:** Explore `lua/config/custom.lua` for custom mappings and commands.

For detailed usage of each plugin and mapping, refer to the comments within the individual Lua files.

## Customization

Feel free to modify any part of this configuration to suit your needs. The configuration is split into multiple files under the `lua/` directory for easy customization:

- **`init.lua`**: The entry point that sets up the basic environment and sources other configuration files.
- **`plugins.lua`**: Plugin definitions and setup.
- **`config/custom.lua`**: Custom configuration and setup.

## Contributing

Contributions to this configuration are welcome! Whether it's adding new features, fixing bugs, or improving documentation, please feel free to make a pull request.

## License

This Neovim configuration is released under the [MIT License](LICENSE).