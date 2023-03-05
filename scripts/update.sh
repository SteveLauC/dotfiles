# How many times has the function 'update()' been executed 
counter=0

dnf_update() {
    sudo dnf update -y;
}

flatpak_update() {
    flatpak update -y;
}

update() {
    dnf_update;
    flatpak_update;
}

while true; do
  update
  if [ $? -eq 0 ]; then
    echo -e "\033[34mNOTE: UPDATE SUCCESSFUL\033[0m"
    exit 0
  else
    echo -e "\033[34mNOTE: UPDATE FAILED\033[0m"
    counter=$((counter+1))
    if [ $counter -eq 3 ]; then
      echo -e "\033[34mNOTE: MAX RETRIES REACHED\033[0m"
      exit 1
    fi
  fi
done
