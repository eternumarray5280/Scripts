# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias show_existing_fstab='sudo cat /etc/fstab'

alias make_new_fstab='sudo touch ~/Documents/fstab2'

alias show_fstab_updates='cat ~/Documents/fstab_updates.txt'

alias update_fstab='show_fstab_updates > ~/Documents/fstab2'

alias show_fstab2='sudo cat ~/Documents/fstab2'

alias overwrite_fstab='sudo mv ~/Documents/fstab2 /etc/fstab'



####TERMINAL####
alias c='clear'
####NAVIGATION####
	##|||LOCAL NAVIGATION|||##	alias h='cd ~'
		alias s='cd ~/Software'
		alias h='cd ~/'
		alias d='cd ~/Documents'
		alias dl='cd ~/Downloads'
		alias s='cd ~/Scripts ; l'
		alias up="cd .. ; l"
		alias l="ls -a -g --group-directories-first "
		alias mnt='cd /mnt ; l'
####OS & CONFIG####
	##|||CONFIG|||##
		alias showa='cat ~/.bashrc | grep alias'
		alias edita='sudo nano ~/.bashrc'
		alias src='source ~/.bashrc'
	##|||OS|||##
		alias update='sudo dnf update -y ; snap refresh ; flatpak update -y'
		alias shutdown='sudo shutdown +0'
		alias restart='sudo shutdown -r +0'
####SSH####
alias nas='ssh truenas_admin@10.0.0.135'
####FILESYSTEM####
alias mount='sudo systemctl daemon-reload ; sudo mount -a'
alias unmount="sudo umount -a"
alias fstab='sudo nano /etc/fstab'
alias showf='sudo cat /etc/fstab'
alias newfstab='sudo touch /etc/fstab2'
alias replacefstab='mv /etc/fstab2 /etc/fstab'
alias make_mntdirs='sudo mkdir /mnt/nfs /mnt/smb'
	##|||REMOTE NAVIGATION|||##
		alias software='cd /mnt/WD5TBPool/smb/software'
		alias plex='cd /mnt/WD5TBPool/smb/Plex'
		alias movies='cd /mnt/WD5TBPool/smb/Plex/Movies'
		alias tv='cd /mnt/WD5TBPool/smb/Plex/TV'
		alias nfs='cd /mnt/WD5TBPool/nfs'
		alias nvme='cd /mnt/nVME/ ; ls -l'
		alias jf='cd /mnt/WD5TBPool/jelly ; ls -l'
		alias 4k='cd /mnt/nVME/4k ; ls -l'
####NETWORKING####
alias ip='ifconfig | grep inet'
alias dns='nmcli dev show | grep DNS'
####SERVICES####
alias fwdisable='sudo systemctl stop firewalld ; systemctl disable firewalld'
alias fwstatus='sudo systemctl status firewalld'
alias fwstart='sudo systemctl start firewalld'
####INSTALLATIONS####
alias instflatpak='sudo dnf install flatpak -y ; flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo ; flatpak remote-modify --no-filter flathub'
#alias inststeam='flatpak install flathub com.valvesoftware.Steam -y'
alias instsnap='sudo dnf install snapd -y'
alias instnano='sudo dnf install nano -y'
alias instorion='sudo flatpak install com.ktechpit.orion -y'
alias instsublime='sudo flatpak install com.sublimehq.SublimeText-y'
alias instignition='sudo flatpak install io.github.flattool.Ignition -y'
alias instvaults='sudo flatpak install io.github.mpobaschnig.Vaults -y'
alias insterrands='sudo flatpak install io.github.mrvladus.List -y'
alias instnetpeek='sudo flatpak install io.github.zingytomato.netpeek -y'
alias instfloorp='sudo flatpak install one.ablaze.floorp -y'
alias instvlc='sudo flatpak install org.videolan.VLCorg.videolan.VLC -y'
alias instthunderbird='sudo dnf install thunderbird -y'
alias instremmina='sudo dnf install remmina -y'
alias instfilezilla='sudo dnf install filezilla -y'
	#ALL#
		alias ins_all_01='instflatpak;instsnap'
		alias ins_all_02='instnano ; instorion ; instsublime ; instignition'
		alias ins_all_03='instvaults ; insterrands ; instnetpeek ; instfloorp'
		alias ins_all_04='instvlc ; instthunderbird ; instremmina ; instfilezilla'
		alias ins_everything='ins_all_01 ; ins_all_02 ; ins_all_03 ; ins_all_04'
####NEW WORKSTATION SETUP####
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||#
#alias copy desktopbg#
#alias copyfstab='sftp command'
##|||||||||||||||||||||||||||||||||||||||||||||||############
alias dnfup='sudo dnf update -y'
alias instsnap='sudo dnf install snapd -y'
alias instflatpak='sudo dnf install flatpak -y;flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo>'
alias instpkgmgrs='instsnap ; instflatpak'
#############
alias setupnew='dnfup;instpkgmgrs;update;makehomedirs;install'
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||#
