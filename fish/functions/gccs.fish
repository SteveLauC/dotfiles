function gccs --wraps=gcc\ \ -Wall\ -Wextra\ -std=gnu99\ -pedantic\ -Wmissing-prototypes\ \\\n-Wstrict-prototypes\ -Wold-style-definition --description alias\ gccs=gcc\ \ -Wall\ -Wextra\ -std=gnu99\ -pedantic\ -Wmissing-prototypes\ \\\n-Wstrict-prototypes\ -Wold-style-definition
  gcc  -Wall -Wextra -std=gnu99 -pedantic -Wmissing-prototypes \
-Wstrict-prototypes -Wold-style-definition $argv; 
end
