function ll --wraps=ls --wraps='exa -alghH' --description 'alias ll=exa -alghH'
  exa -alghH $argv; 
end
