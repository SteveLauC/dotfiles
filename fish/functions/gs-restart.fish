function gs-restart --wraps='killall -3 gnome-shell' --description 'alias gs-restart=killall -3 gnome-shell'
  killall -3 gnome-shell $argv; 
end
