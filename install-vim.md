# 📝 Vim Configuration Setup

### 1. Prerequisites

1. Make sure you have Vim 8+ or Neovim installed.
   ```bash
   vim --version
   ```

2. Create directories
   ```bash
   $ mkdir -p ~/.vim/{backup,swap,undo}
   ```

3. Install Plugin Manager (vim-plug)
   ```bash
   $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
4. Copy the Vim config
- Save the provided `.vimrc` content into:
   ```bash
   $ vim ~/.vimrc
   ```
- Then paste the full config.

5. Install Plugins
- Launch Vim and run:
   ```vim
   :PlugInstall
   ```

6. Recommended Fonts
- To use Airline or GitGutter with icons, install a Nerd Font, like:
  - JetBrainsMono Nerd Font
  - FiraCode Nerd Font
  - Hack Nerd Font

7. Useful Keybindings
  | Keybinding	| Action|
  | --- | --- |
  | <Space>g |	Toggle Goyo (focus mode) |
  | <Space>s |	Toggle spell checking |
  | <Space>y |	Yank to system clipboard |
  | <Space>p |	Paste from system clipboard |

8. Some Addition Installation to make your terminal productive
- Install Plugins

  - vim-airline
    ```sh
    $ apt search vim-airline
    $ sudo apt install vim-airline 
    ```

  - vim-gitgutter
    ```sh
    $ apt search gitgutter
    $ sudo apt install vim-gitgutter
    ```
- We can also add the same in vimrc as well
