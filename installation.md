## Cli

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

5. exa

   ```shell
   sudo dnf -y install exa
   ```

   > To use my fork (with extra features supported)
   > 
   > ```shell
   > cargo install --git https://github.com/SteveLauC/exa --branch extended-ACL
   > ```

6. bat
   
   ```shell
   sudo dnf -y install bat
   ```

7. htop
   
   ```shell
   sudo dnf -y install htop
   ```

8. mycli

   ```shell
   sudo dnf -y install mycli
   ```
9. ripgrep
   
   ```shell
   sudo dnf -y install ripgrep
   ```

10. neofetch
   
    ```shell
    sudo dnf -y install neofetch
    ```

11. pip(3)
   
    ```shell
    sudo dnf -y install pip
    ```

12. tmuxp

    ```shell
    pip install --user tmuxp
    ```

13. most

    ```shell
    sudo dnf -y install most
    ```
14. fish
    
    ```shell
    sudo dnf -y install fish
    ```

15. zoxide

    ```shell
    sudo dnf -y install zoxide
    ```

16. pup
  
    ```shell
    cargo install --git https://github.com/SteveLauC/pup
    ```

17. mold
    
    ```shell
    sudo dnf -y install mold
    ```

## Language Server

1. Rust-analyzer
   
   ```shell
   git clone https://github.com/rust-lang/rust-analyzer.git && cd rust-analyzer && cargo xtask install --server
   ```

2. Clangd
   
   ```shell
   sudo dnf -y install clang-tools-extra 
   ```

## GUI App

1. Wechat (via wine)
   
   [WeChat Desktop on Linux](https://ferrolho.github.io/blog/2018-12-22/wechat-desktop-on-linux)

   
   To install `cabextract`:

   ```shell
   sudo yum -y install cabextract
   ```

   > This may not work.

2. Telgram

   ```shell
   flatpak install flathub org.telegram.desktop
   ```
3. Chrome
 
   ```shell
   flatpak install flathub com.google.Chrome
   ``` 
4. Spotify

   ```shell
   flatpak install flathub com.spotify.Client
   ```
5. Gradience

   ```shell
   flatpak install flathub com.github.GradienceTeam.Gradience
   ```

6. Flatseal
  
   ```shell
   flatpak install flathub com.github.tchx84.Flatseal
   ```

7. Postman

   ```shell
   flatpak install flathub com.getpostman.Postman
   ```

8. Color Picker

   ```shell
   flatpak install flathub nl.hjdskes.gcolor3
   ```

9. Typora

   ```shell
   flatpak install flathub io.typora.Typora
   ```

10. Alacritty

    ```shell
    sudo dnf -y install alacritty
    ```

    To run `Alacritty` through `x11`:

    ```
    [Desktop Entry]
    Type=Application
    TryExec=alacritty
    Exec=env WINIT_UNIX_BACKEND=x11 alacritty
    Icon=Alacritty
    Terminal=false
    Categories=System;TerminalEmulator;
    
    Name=Alacritty
    GenericName=Terminal
    Comment=A fast, cross-platform, OpenGL terminal emulator
    StartupWMClass=Alacritty
    Actions=New;
    
    [Desktop Action New]
    Name=New Terminal
    Exec=alacritty
    ```
11. ONLYOFFICE

    ```shell
    flatpak install flathub org.onlyoffice.desktopeditors
    ```

12. Foliate
   
    > A simple and modern eBook viewer

    ```shell
    flatpak install flathub com.github.johnfactotum.Foliate
    ```

13. gThumb

    ```shell
    flatpak install flathub org.gnome.gThumb
    ```

14. Thunderbird


    ```shell
    flatpak install flathub org.mozilla.Thunderbird
    ```

15. Todoist

    ```shell
    flatpak install flathub com.todoist.Todoist
    ```

16. Gnome Extensions

    ```shell
    sudo dnf install -y gnome-extensions-app
    ```

17. Pomodoro
    
    ```shell
    sudo dnf install -y gnome-pomodoro
    ```

## Gnome Customized Shortcut

| Category | Action                                 | Shortcut           |
|----------|----------------------------------------|--------------------|
|Navigation| Move to workspace on the left          | Ctrl + Super + H   |
|Navigation| Move to workspace on the left          | Ctrl + Super + L   |
|Navigation| Move window one workspace to the left  | Shift + Super + H  |
|Navigation| Move window one workspace to the right | Shift + Super + L  |
|Typing    | Switch to next input source            | Ctrl + Space       | 
|Windows   | Close window                           | Super + Q          |
|Windows   | Maximize window                        | Super + M          |
|Windows   | Restore window                         | Super + N          |
|Windows   | View split on left                     | Ctrl + Super + J   |
|Windows   | View split on right                    | Ctrl + Super + K   |

## Flatpak

1. add remote source:
   
   ```shell
   flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
   ```

## Language

1. Rust

   ```shell
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

## Libraries

1. `-lacl`
  
   ```shell

   ```

## Mirror

1. dnf

   > **Back up** before you proceed

   ```shell
   sudo sed -e 's|^metalink=|#metalink=|g' \
         -e 's|^#baseurl=http://download.example/pub/fedora/linux|baseurl=https://mirrors.ustc.edu.cn/fedora|g' \
         -i.bak \
         /etc/yum.repos.d/fedora.repo \
         /etc/yum.repos.d/fedora-modular.repo \
         /etc/yum.repos.d/fedora-updates.repo \
         /etc/yum.repos.d/fedora-updates-modular.repo
   ```

   ```shell
   sudo dnf makecache
   ```
