# 🚀 Starship Prompt Setup

- A modern, fast, and minimal prompt written in Rust.

### 1. Install Starship

- Use the official install script:
  ```bash
  $ curl -sS https://starship.rs/install.sh | sh
  ```
- Or with your package manager:
  - macOS:
    ```bash
    $ brew install starship
    ```
  - Ubuntu
    ```bash
    $ sudo apt install starship
    ```

### 2. Add to Your Shell
- Bash (~/.bashrc):
  ```bash
   eval "$(starship init bash)"
   ```
- Zsh (~/.zshrc):
  ```bash
   eval "$(starship init zsh)"
   ```

### 3. Optional: Customize Prompt
- Create a config file:
   ```bash
   $ mkdir -p ~/.config
   $ vim ~/.config/starship.toml
   ```
- Example minimal config:
  ```toml
   # Get editor completions based on the config schema
      "$schema" = 'https://starship.rs/config-schema.json'
   
   # Inserts a blank line between shell prompts
   add_newline = true
   
   # Replace the '❯' symbol in the prompt with '➜'
   [character] # The name of the module we are configuring is 'character'
   success_symbol = '[❯](bold blue)' # The 'success_symbol' segment is being set to '➜' with the color 'bold green'
   
   # Disable the package module, hiding it from the prompt completely
   [package]
   disabled = true
   
   # Wait 10 milliseconds for starship to check files under the current directory.
   scan_timeout = 10
   
   # Disable the blank line at the start of the prompt
   add_newline = false
   
   # Set 'foo' as custom color palette
   palette = 'foo'
   
   # Define custom colors
   [palettes.foo]
   # Overwrite existing color
   blue = '21'
   # Define new color
   mustard = '#af8700'
   
   format = """
   $username\
   $hostname\
   $localip\
   $shlvl\
   $singularity\
   $kubernetes\
   $directory\
   $vcsh\
   $fossil_branch\
   $fossil_metrics\
   $git_branch\
   $git_commit\
   $git_state\
   $git_metrics\
   $git_status\
   $hg_branch\
   $pijul_channel\
   $docker_context\
   $cmake\
   $dotnet\
   $elixir\
   $elm\
   $erlang\
   $fennel\
   $gleam\
   $golang\
   $guix_shell\
   $haskell\
   $haxe\
   $helm\
   $java\
   $julia\
   $kotlin\
   $gradle\
   $lua\
   $nim\
   $nodejs\
   $ocaml\
   $opa\
   $perl\
   $php\
   $pulumi\
   $purescript\
   $python\
   $quarto\
   $raku\
   $rlang\
   $red\
   $ruby\
   $rust\
   $scala\
   $solidity\
   $swift\
   $terraform\
   $typst\
   $vlang\
   $vagrant\
   $zig\
   $buf\
   $nix_shell\
   $conda\
   $meson\
   $spack\
   $memory_usage\
   $aws\
   $gcloud\
   $openstack\
   $azure\
   $nats\
   $direnv\
   $env_var\
   $mise\
   $crystal\
   $custom\
   $sudo\
   $cmd_duration\
   $line_break\
   $jobs\
   $battery\
   $time\
   $status\
   $os\
   $container\
   $netns\
   $shell\
   $character"""
   
   [docker_context]
   format = 'via [🐋 $context](blue bold)'
   disabled = false
   
   [sudo]
   style = 'bold green'
   symbol = '👩‍💻 '
   disabled = false
   
   [cmd_duration]
   disabled = false
   min_time = 1
   format = "[[ $duration ](fg:red bg:black)]($style)"
   
   [line_break]
   disabled = false
   
   [username]
   style_user = 'white bold'
   style_root = 'black bold'
   format = '[$user]($style) '
   disabled = false
   show_always = true 
   ```


### 4. Fonts
- Make sure you're using a [Nerd Font](https://www.nerdfonts.com/) to properly display prompt symbols.
