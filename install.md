## Cli Prompt

1. oh-my-zsh

   ```shell
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

2. zsh-autosuggestions

   ```shell
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   ```

3. zsh-syntax-highlighting

   ```shell
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```

4. starship
   
   ```shell
   curl -sS https://starship.rs/install.sh | sh
   ```

## Cli tools

1. exa

   ```shell
   sudo dnf install exa
   ```
2. bat
   
   ```shell
   sudo dnf install bat
   ```

3. htop
   
   ```shell
   sudo dnf install htop
   ```

4. mycli

   ```shell
   sudo dnf install mycli
   ```
5. ripgrep
   
   ```shell
   sudo dnf install ripgrep
   ```

6. neofetch
   
   ```shell
   sudo dnf install neofetch
   ```

## Language Server
1. Rust-analyzer
   
   ```shell
   git clone https://github.com/rust-lang/rust-analyzer.git && cd rust-analyzer
   cargo xtask install --server
   ```

2. Clangd
   
   ```shell
   sudo dnf install clang-tools-extra 
   ```

