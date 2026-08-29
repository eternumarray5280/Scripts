grdctl rdp enable
grdctl vnc enable
grdctl vnc set-password 4679
grdctl vnc disable-view-only
grdctl vnc set-auth-method password
systemctl --user enable --now gnome-remote-desktop.service
grdctl rdp disable-view-only
grdctl status --show-credentials