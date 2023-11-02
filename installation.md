## Table Of Contents

* [CLI Tools](https://github.com/SteveLauC/dotfiles/blob/main/installation.md#cli-tools)
* [Language Servers](https://github.com/SteveLauC/dotfiles/blob/main/installation.md#language-servers) 
* [GUI App](https://github.com/SteveLauC/dotfiles/blob/main/installation.md#gui-app) 
* [GNOME Customized Shortcut](https://github.com/SteveLauC/dotfiles/blob/main/installation.md#gnome-customized-shortcut)
* [Flatpak Source](https://github.com/SteveLauC/dotfiles/blob/main/installation.md#flatpak-source)
* [Languages](https://github.com/SteveLauC/dotfiles/blob/main/installation.md#languages)
* [Libraries](https://github.com/SteveLauC/dotfiles/blob/main/installation.md#libraries)
* [Mirrors](https://github.com/SteveLauC/dotfiles/blob/main/installation.md#mirrors)

## CLI Tools

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
    sudo dnf -y install openssl-devel 
    cargo install --git https://github.com/SteveLauC/pup
    ```

17. mold
    
    ```shell
    sudo dnf -y install mold
    ```

18. git-credential-libsecret

    ```shell
    sudo dnf -y install git-credential-libsecret
    ```

19. JDK

    Fedora ships JRE (headless version) by default, to install JDK:

    ```shell
    $ dnf search jdk

    # then install the version you want
    # e.g., to install jdk 17 development environment
    $ sudo dnf install java-17-openjdk-devel.x86_64
    ```

    To set `$JAVA_HOME` in fish:

    ```shell
    set -Ux JAVA_HOME (readlink -f /usr/bin/java | sed "s:bin/java::")
    ```


20. Maven

    > Pkg manager for Java

    ```shell
    sudo dnf install -y maven
    ```

    To check if the installation is successful:

    ```shell
    $ mvn --version
    Apache Maven 3.8.4 (Red Hat 3.8.4-3)
    Maven home: /usr/share/maven
    Java version: 17.0.5, vendor: Red Hat, Inc., runtime: /usr/lib/jvm/java-17-openjdk-17.0.5.0.8-2.fc36.x86_64
    Default locale: en_US, platform encoding: UTF-8
    OS name: "linux", version: "6.0.10-200.fc36.x86_64", arch: "amd64", family: "unix"
    ```

21. neovim

    1. Through `dnf` 
      
       ```shell
       sudo dnf install -y neovim
       ``` 

       NOTE: Installing neovim through `dnf` will install dependency `xsel` (One
       of the clipboard management backends used by `neovim`)
       ![diagram](https://github.com/SteveLauC/pic/blob/main/Screenshot%20from%202023-01-02%2011-30-53.png)

    2. Through [`bob`](https://github.com/MordechaiHadad/bob)

       > `bob` is a package manager for `neovim`

       ```shell
       $ cargo install bob-nvim
       $ bob install xxx
       ```

       Unlike `dnf`, `bob` will not install `xsel` (or something like this) for you.

       Running `:checkhealth` may give you the following error message:

       ```
       27 ## Clipboard (optional)

       1 - WARNING: No clipboard tool found. Clipboard registers (`"+` and `"*`) will not work.
       ```

       To fix this, under wayland, you can install `wl-clipboard`:

       ```shell
       sudo dnf install -y wl-clipboard
       ```

       or `xsel`

       ```shell
       sudo dnf install -y xsel
       ```

22. lazygit
   
    ```shell
   sudo dnf copr enable atim/lazygit -y
   sudo dnf install lazygit
    ```

## Language Servers

1. Rust-analyzer
   
   ```shell
   git clone https://github.com/rust-lang/rust-analyzer.git 
   cd rust-analyzer 
   cargo xtask install --server
   ```

2. Clangd
   
   ```shell
   sudo dnf -y install clang-tools-extra 
   ```

## GUI App

To install flatpak apps in bulk, take a look at the [`README.md` doc under `flatpak`]
(https://github.com/SteveLauC/dotfiles/tree/main/flatpak)

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

    > This fixes the following issues under Wayland:
    >
    > 1. Client side decorations
    > 2. [Rounded Corner Extension](https://github.com/yilozt/rounded-window-corners)

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

18. Seahorce

    > GNOME application for managing PGP keys.

    ```shell
    sudo dnf install -y seahorse
    ```

19. Netease Cloud Music
 
    > For Debian-based distros, `.deb` package is officially provided by Netease.
    > `.deb` package link: [download](https://music.163.com/#/download)

    For other distros, a flatpak package is available:

    ```shell
    flatpak install flathub com.netease.CloudMusic
    ```

20. Ulauncher

    ```shell
    sudo dnf install ulauncher
    ```

    > NOTE: u need to disable it in `yilozt/rounded-window-corners` by adding 
    > `ulauncher` (not `ulauncher-toggle`) to the blacklist.
    >
    > Under Wayland, you need to add a custom keybinding in GNOME Settings:
    > 
    > ```
    > ulauncher-toggle ctrl-super-space
    > ```
    

## GNOME Customized Shortcut

| Category | Action                                 | Shortcut           | Still working with pop-shell |
|----------|----------------------------------------|--------------------|------------------------------|
|Navigation| Move to workspace on the left          | Ctrl + Super + H   | Yes (this keybinding comes from pop-shell)|
|Navigation| Move to workspace on the left          | Ctrl + Super + L   | Yes (this keybinding comes from pop-shell)|
|Navigation| Move window one workspace to the left  | Shift + Super + H  | Yes (this keybinding comes from pop-shell)|
|Navigation| Move window one workspace to the right | Shift + Super + L  | Yes (this keybinding comes from pop-shell)|
|Navigation| Switch to wrokspace 1                  | Alt + 1            | Yes                          |
|Navigation| Switch to wrokspace 4                  | Alt + 4            | Yes                          |
|Typing    | Switch to next input source            | Ctrl + Space       | Yes                          |
|Windows   | Close window                           | Super + Q          | Yes                          |
|Windows   | Maximize window                        | Super + M          | Yes                          |
|Windows   | Restore window                         | Super + N          | Yes                          |
|Windows   | View split on left                     | Ctrl + Super + J   | Yes(but u don't need this with a wm) |
|Windows   | View split on right                    | Ctrl + Super + K   | No (but u don't need this with a wm) |

> [pop-shell keybingdings manual](https://support.system76.com/articles/pop-keyboard-shortcuts/)

> Install `pop-shell` and let it overwrite some settings
>
> ```shell
> $ sudo dnf install gnome-shell-extension-pop-shell
>    
> # To use it under xorg(x11)
> $ sudo dnf install xprop
> ```

## Flatpak Source

1. add remote source:
   
   ```shell
   flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
   ```

   To use the sjtu mirror:

   ```shell
   sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub
   ```

   To use the official repo:

   ```shell
   sudo flatpak remote-modify flathub --url=https://flathub.org/repo/flathub.flatpakrepo
   ```

   > Sometimes, modifying the url won't work, you need to reset it:
   >
   > ```sh
   > # --force argument won't ask you to delete the apps installed from that source
   > $ remote-delete --force flathub 
   > $ flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
   > ```

## Languages

1. Rust

   ```shell
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

## Libraries

1. `-lacl`
  
   ```shell

   ```

2. lucene

   > Lucene is an open-source Java full-text search library which makes it easy 
   > to add search functionality to an application or website.

   > This method does not seem to work (x)
   > ```shell
   > sudo dnf install lucene
   > ```

   1. Download the pre-built `jar` files from their [official website]
      (https://lucene.apache.org/core/downloads.html)

   2. Add the paths of the `jar` files needed into Java's `CLASSPATH`
      
      > If you are using an IDE such as IDEA, it can handle this for you.

   3. Use it in your java program.



## Mirrors

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

2. Crates.io 

   > Configure the following items in `config.toml`, which is located under 
   > `/home/$USER/.cargo`: 

   ```toml
   [source.crates-io]
   replace-with = 'tuna'

   [source.ustc]
   registry = "git://mirrors.ustc.edu.cn/crates.io-index"

   [source.tuna]
   registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"
   ```

3. rustup toolchain (USTC mirror)

   > [doc](https://mirrors.ustc.edu.cn/help/rust-static.html)

   Before using `rustup`, set two env variables:

   ```shell
   # RUSTUP_DIST_SERVER, used to update toolchain
   export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static

   # RUSTUP_UPDATE_ROOT, used to update `rustup`
   export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
   ```
