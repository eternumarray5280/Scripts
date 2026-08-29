sudo cd ~/Scripts/backup-scripts
echo "running plex documentaries backup"
./plex-docs-backup.sh > docs-log.txt
echo "running plex movies backup"
./plex-movies-backup.sh > movies-log.txt
echo "running plex tv backup"
./plex-tv-backup.sh > tv-log.txt
echo "running plex xxx backup"
./plex-xxx-backup.sh > xxx-log.txt
