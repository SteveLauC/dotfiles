#!/usr/bin/env bash

sudo cp -r CascadiaCode /usr/share/fonts
# rebuild the font cache
sudo fc-cache -fv

# some commands commands which may help:

# To verify the font is installed
# fc-list | grep "<name-of-font>"
