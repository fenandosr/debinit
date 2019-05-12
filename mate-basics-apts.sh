#!/bin/bash
#:------------------------------------------------------------------------------
#: Usage: ./mkuserhome.sh [-n]
#: Purpose: useful spare time
#: Other purpose: Save some time building the same dirs
#:   (done a lot lately, for an unattainable explication)
#: Parameters:
#:   -n    just print the home directory and the commands to be run
#:------------------------------------------------------------------------------

# los básicos
apt-get install mate-desktop mate-desktop-environment mate-desktop-environment-core mate-control-center mate-control-center-common mate-utils mate-utils-common engrampa ffmpegthumbnailer mate-calc mate-applet-brisk-menu mate-applets mate-icon-theme-faenza mate-media mate-notification-daemon mate-power-manager mate-screensaver mate-system-monitor pluma

# los necesarios
apt-get install dconf-editor mozo
apt-get install scrot
#sudo apt-get install compizconfig-settings-manager

# los destacados
apt-get install mate-desktop-environment-extras mate-desktop-environment-extra caja-eiciel caja-gtkhash caja-image-converter caja-open-terminal caja-admin caja-rename caja-seahorse caja-share mate-dock-applet mate-sensors-applet mate-user-share

