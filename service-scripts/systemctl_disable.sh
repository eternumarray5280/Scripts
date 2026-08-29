read -e -p "$ " -i "systemctl stop <>" command
eval $command
read -e -p "$ " -i "systemctl disable <>" command
eval $command
read -e -p "$ " -i "systemctl status <>" command
eval $command
