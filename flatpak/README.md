Almost all my GUI applications are installed through flatpak, to back them up:

```shell
flatpak list --columns=application --app > flatpaks.txt
```

Install them:

```shell
xargs flatpak install -y < flatpaks.txt
```

> These two scripts come from this [post](https://www.reddit.com/r/linux/comments/u3wcm7/easy_flatpak_apps_backupinstallation/?utm_source=share&utm_medium=web2x&context=3).

> Such a backup only backs up the apps themselves, to back up the data and 
> configuration, try storing the `.var` directory under `$HOME`.
