function ip-public --wraps='curl ifconfig.me' --wraps='curl ifconfig.me/all' --description 'alias ip-public curl ifconfig.me/all'
  curl ifconfig.me/all $argv; 
end
