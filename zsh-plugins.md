# ⚡️ Zsh Plugin Setup Guide

Enhance your terminal experience with powerful Zsh plugins for syntax highlighting, autosuggestions, and autocomplete.

This guide walks you through setting up the following plugins:

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
- [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)

---

### 📁 Step 1: Create Plugin Directory

  - Create a dedicated directory to store your custom Zsh plugins:
    ```bash
    mkdir ~/.zsh
    cd ~/.zsh
    ```

### 🔌 Step 2: Clone Plugins
  - zsh-autosuggestions
    ```bash
    git clone https://github.com/zsh-users/zsh-autosuggestions.git
    ```
  - zsh-syntax-highlighting
    ```bash
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
    ```

  - fast-syntax-highlighting
    ```bash
    git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git
    ```
  - zsh-autocomplete
    ```bash
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git
    ```
### ⚙️ Step 3: Configure .zshrc
  - Enable the plugins by sourcing them in your ~/.zshrc file.
    ```bash
    vim ~/.zshrc
    ```
    - Add the following lines:
    ```zsh
    # Zsh Plugin Sources
    source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
    source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
    source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ```
### 🔄 Step 4: Reload Zsh
  - Apply changes by restarting your terminal or sourcing your .zshrc:
    ```bash
    source ~/.zshrc
    ```
