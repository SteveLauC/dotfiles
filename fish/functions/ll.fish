function ll --wraps=ls --wraps='exa -aalghH' --description 'alias ll=exa -aalghH'
  exa -aalghH $argv; 
end
