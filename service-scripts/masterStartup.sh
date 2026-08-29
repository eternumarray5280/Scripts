cd ~/Scripts
echo "starting cockpit"
./cockpit.sh > cockpitLog.txt
echo "starting QbitTorrent"
./startQb.sh > qbitorrentLog.txt
echo "starting RDP and VNC"
./start-rdp.sh > rdpLog.txt
echo "Finished!"
