echo "backing up toad-arms fstab and aliases to"
cat ~/.bashrc /// &>> ~/Scripts/config-backup-files/alias-backup.txt
cat /etc/fstab &>> ~/Scripts/config-backup-files/fstab-backup.txt
echo "backing up /home/jt/Scripts to pCloud"
rclone copy -P ~/Scripts/ pcld:ToadArms-rClone-Backups/Scripts &>> /backupLogs/scripts-backup-log.txt
echo "log saved to /backupLogs/scritps-backup-log.txt"
