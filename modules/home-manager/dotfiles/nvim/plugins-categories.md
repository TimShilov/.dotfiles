# Neovim Plugins Categories

This document describes different categories of Neovim plugins and the reasoning behind them. Organizing plugins into categories helps in better understanding and managing them.

## Categories

### 1. User Interface (UI) Enhancements
These plugins enhance the visual appearance and user interface of Neovim.

- **catppuccin**: A beautiful color scheme for Neovim.
- **lualine**: A statusline plugin for Neovim.
- **dressing**: Improves the default UI for input and select.
- **dropbar**: Provides a drop-down menu for navigating symbols in the winbar.
- **noice**: Enhances the Neovim UI with better notifications and command-line interfaces.
- **showkeys**: Displays keybindings in a floating window.
- **stay-centered**: Keeps the cursor centered while scrolling.

### 2. Productivity and Workflow
These plugins improve productivity and streamline the workflow.

- **auto-save**: Automatically saves files.
- **auto-close**: Automatically closes buffers.
- **early-retirement**: Automatically closes inactive buffers.
- **garbage-day**: Cleans up unused buffers and files.
- **persistence**: Manages session persistence.
- **quicker**: Enhances the quickfix and location lists.
- **scrollEOF**: Ensures the cursor stays within the visible area.
- **timerly**: Provides a timer for tracking time spent on tasks.
- **volt**: A plugin for managing tasks and time.

### 3. Code Navigation and Search
These plugins help in navigating and searching code efficiently.

- **telescope**: A highly extendable fuzzy finder over lists.
- **telescope-import**: Adds import statements to the code.
- **telescope-multigrep**: Allows multi-pattern search using ripgrep.
- **grug-far**: A search plugin with advanced features.
- **oil**: A file explorer for Neovim.
- **overseer**: Manages tasks and commands.
- **package-info**: Displays package information in the statusline.

### 4. Code Editing and Formatting
These plugins assist in editing and formatting code.

- **conform**: A code formatter for various languages.
- **text-case**: Provides text case conversion commands.
- **splitjoin**: Splits and joins code blocks.
- **mini**: A collection of minimalistic plugins for various editing tasks.
- **surround**: Provides surround text objects.
- **spider**: Enhances word motions.

### 5. Language Support and LSP
These plugins provide language support and integrate with the Language Server Protocol (LSP).

- **lsp**: Configures and manages LSP servers.
- **mason**: Manages LSP servers, linters, and formatters.
- **mason-lspconfig**: Integrates Mason with LSPConfig.
- **mason-tool-installer**: Installs tools managed by Mason.
- **none-ls**: Provides additional LSP features.
- **typescript-tools**: Adds support for TypeScript.
- **nvim-cmp**: A completion engine for Neovim.
- **copilot**: Integrates GitHub Copilot for code suggestions.

### 6. Testing and Debugging
These plugins assist in testing and debugging code.

- **neotest**: A testing framework for Neovim.
- **neotest-vitest**: Adds support for Vitest.
- **dadbod**: A database management plugin.
- **dadbod-ui**: A UI for the Dadbod plugin.
- **dadbod-completion**: Adds completion support for SQL queries.

### 7. Version Control
These plugins integrate with version control systems.

- **gitsigns**: Adds Git-related signs to the gutter.
- **git**: A collection of Git-related commands and features.

### 8. Miscellaneous
These plugins provide various other features.

- **cloak**: Hides sensitive information in files.
- **colorizer**: Adds color highlighting for color codes.
- **eyeliner**: Enhances the visual appearance of the cursor.
- **hardtime**: Restricts the use of certain keys to improve efficiency.
- **hmts**: A plugin for managing tasks.
- **kulala**: A plugin for managing splits.
- **lazydev**: A development tool for lazy loading plugins.
- **nx**: Integrates with the Nx build system.
- **snacks**: A collection of small, useful plugins.

## Diagram

Below is a diagram visualizing the organization structure of the Neovim plugins:

```mermaid
graph TD;
    A[Neovim Plugins] --> B[User Interface (UI) Enhancements];
    A --> C[Productivity and Workflow];
    A --> D[Code Navigation and Search];
    A --> E[Code Editing and Formatting];
    A --> F[Language Support and LSP];
    A --> G[Testing and Debugging];
    A --> H[Version Control];
    A --> I[Miscellaneous];

    B --> B1[catppuccin];
    B --> B2[lualine];
    B --> B3[dressing];
    B --> B4[dropbar];
    B --> B5[noice];
    B --> B6[showkeys];
    B --> B7[stay-centered];

    C --> C1[auto-save];
    C --> C2[auto-close];
    C --> C3[early-retirement];
    C --> C4[garbage-day];
    C --> C5[persistence];
    C --> C6[quicker];
    C --> C7[scrollEOF];
    C --> C8[timerly];
    C --> C9[volt];

    D --> D1[telescope];
    D --> D2[telescope-import];
    D --> D3[telescope-multigrep];
    D --> D4[grug-far];
    D --> D5[oil];
    D --> D6[overseer];
    D --> D7[package-info];

    E --> E1[conform];
    E --> E2[text-case];
    E --> E3[splitjoin];
    E --> E4[mini];
    E --> E5[surround];
    E --> E6[spider];

    F --> F1[lsp];
    F --> F2[mason];
    F --> F3[mason-lspconfig];
    F --> F4[mason-tool-installer];
    F --> F5[none-ls];
    F --> F6[typescript-tools];
    F --> F7[nvim-cmp];
    F --> F8[copilot];

    G --> G1[neotest];
    G --> G2[neotest-vitest];
    G --> G3[dadbod];
    G --> G4[dadbod-ui];
    G --> G5[dadbod-completion];

    H --> H1[gitsigns];
    H --> H2[git];

    I --> I1[cloak];
    I --> I2[colorizer];
    I --> I3[eyeliner];
    I --> I4[hardtime];
    I --> I5[hmts];
    I --> I6[kulala];
    I --> I7[lazydev];
    I --> I8[nx];
    I --> I9[snacks];
```
