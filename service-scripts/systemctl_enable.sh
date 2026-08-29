read -e -p "$ " -i "systemctl enable <> --now" command
eval $command
read -e -p "$ " -i "systemctl status <>" command
eval $command
