#!/bin/bash
#:------------------------------------------------------------------------------
#: Usage: ./mkuserhome.sh [-n]
#: Purpose: useful spare time
#: Other purpose: Save some time building the same dirs
#:   (done a lot lately, for an unattainable explication)
#: Parameters:
#:   -n    just print the home directory and the commands to be run
#:------------------------------------------------------------------------------

#xmodmap -pke > ~/.Xmodmap && cat ~/.Xmodmap | sed 's/nobreakspace/space/g' > ~/.Xmodmap
# ¿Algún día necesitaré eso?

# Keyboard
gsettings set org.mate.peripherals-keyboard delay 350
gsettings set org.mate.peripherals-keyboard rate 50
# Disable keyboard sounds
gsettings set org.mate.Marco.general audible-bell false
gsettings set org.mate.interface cursor-blink-time 1200
# [comentarios del teclado]

# Mouse
gsettings set org.mate.peripherals-mouse motion-acceleration 10.0
gsettings set org.mate.peripherals-mouse motion-threshold 10
gsettings set org.mate.Marco.general focus-mode 'sloppy'
# [comentarios del mouse]

# Touchpad
gsettings set org.mate.peripherals-touchpad natural-scroll true
gsettings set org.mate.peripherals-touchpad horizontal-two-finger-scrolling true
gsettings set org.mate.peripherals-touchpad vertical-two-finger-scrolling true

# Configure PrintScreen key
gsettings set org.mate.Marco.global-keybindings run-command-screenshot "disabled"
dconf write /org/mate/desktop/keybindings/custom0/action \'"scrot -e \"mv \$f /tmp; gimp /tmp/\$f\""\'
dconf write /org/mate/desktop/keybindings/custom0/binding \'Print\'
dconf write /org/mate/desktop/keybindings/custom0/name \'PrintScreen\'

# Set custom Global and Window Keybindings
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-left '<Mod4>Left'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-right '<Mod4>Right'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-down '<Mod4>Down'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-up '<Mod4>Up'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-prev '<Alt>º'
gsettings set org.mate.Marco.global-keybindings switch-group '<Alt><Mod4>Tab'
gsettings set org.mate.Marco.global-keybindings switch-group-backward '<Alt><Mod4><Shift>Tab'
gsettings set org.mate.Marco.global-keybindings switch-windows-all '<Mod4>Tab'
gsettings set org.mate.Marco.global-keybindings switch-windows-all-backward '<Mod4><Shift>Tab'
gsettings set org.mate.Marco.global-keybindings switch-windows '<Alt>Tab'
gsettings set org.mate.Marco.global-keybindings switch-windows-backward '<Alt><Shift>Tab'
gsettings set org.mate.Marco.window-keybindings tile-to-corner-nw '<Mod4>KP_Home'
gsettings set org.mate.Marco.window-keybindings tile-to-corner-se '<Mod4>KP_Page_Down'
gsettings set org.mate.Marco.window-keybindings tile-to-side-e '<Alt><Mod4>Right'
gsettings set org.mate.Marco.window-keybindings tile-to-corner-ne '<Mod4>KP_Page_Up'
gsettings set org.mate.Marco.window-keybindings tile-to-corner-sw '<Mod4>KP_End'
gsettings set org.mate.Marco.window-keybindings tile-to-side-w '<Alt><Mod4>Left'
gsettings set org.mate.Marco.window-keybindings toggle-maximized '<Alt><Mod4>Up'
gsettings set org.mate.Marco.window-keybindings minimize '<Alt><Mod4>Down'
gsettings set org.mate.Marco.window-keybindings move-to-side-w '<Control><Alt><Mod4>KP_Left'
gsettings set org.mate.Marco.window-keybindings move-to-side-e '<Control><Alt><Mod4>KP_Right'
gsettings set org.mate.Marco.window-keybindings move-to-side-n '<Control><Alt><Mod4>KP_Up'
gsettings set org.mate.Marco.window-keybindings move-to-side-s '<Control><Alt><Mod4>KP_Down'
gsettings set org.mate.Marco.window-keybindings move-to-corner-ne '<Control><Alt><Mod4>KP_Page_Up'
gsettings set org.mate.Marco.window-keybindings move-to-corner-sw '<Control><Alt><Mod4>KP_End'
gsettings set org.mate.Marco.window-keybindings move-to-corner-nw '<Control><Alt><Mod4>KP_Home'
gsettings set org.mate.Marco.window-keybindings move-to-corner-se '<Control><Alt><Mod4>KP_Page_Down'
gsettings set org.mate.Marco.window-keybindings move-to-center '<Alt><Mod4>KP_Up'
gsettings set org.mate.Marco.window-keybindings move-to-workspace-left '<Control><Mod4>Left'
gsettings set org.mate.Marco.window-keybindings move-to-workspace-down '<Control><Mod4>Down'
gsettings set org.mate.Marco.window-keybindings move-to-workspace-up '<Control><Mod4>Up'
gsettings set org.mate.Marco.window-keybindings move-to-workspace-right '<Control><Mod4>Right'
gsettings set org.mate.Marco.window-keybindings move-to-monitor-e '<Shift><Mod4>Rigth'
gsettings set org.mate.Marco.window-keybindings move-to-monitor-n '<Shift><Mod4>Up'
gsettings set org.mate.Marco.window-keybindings move-to-monitor-s '<Shift><Mod4>Down'
gsettings set org.mate.Marco.window-keybindings move-to-monitor-w '<Shift><Mod4>Left'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-1 '<Mod4>1'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-2 '<Mod4>2'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-3 '<Mod4>3'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-4 '<Mod4>4'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-5 '<Mod4>5'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-6 '<Mod4>6'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-7 '<Mod4>7'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-8 '<Mod4>8'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-9 '<Mod4>9'

# Fullscreen
gsettings set org.mate.Marco.window-keybindings toggle-fullscreen '<Alt>F5'
gsettings set org.mate.Marco.window-keybindings unmaximize 'disabled'

# Maximize on double-click
gsettings set org.mate.Marco.general action-double-click-titlebar 'toggle_maximize'

# Set run program on Alt + space
gsettings set org.mate.Marco.window-keybindings activate-window-menu 'disabled'
gsettings set org.mate.Marco.global-keybindings panel-run-dialog '<Alt>space'

# Set the date format of files in Caja to yyyy-MM-dd hh:mm:ss
gsettings set org.mate.caja.preferences date-format "iso"

# Tell Caja to use detailed lists by default
gsettings set org.mate.caja.preferences default-folder-viewer 'list-view'

# Enable the Delete command in Caja
gsettings set org.mate.caja.preferences enable-delete true

# Click Policy
gsettings set org.mate.caja.preferences click-policy 'single'

# Disable sound preview
gsettings set org.mate.caja.preferences preview-sound 'never'

# Show hidden files in Caja
gsettings set org.mate.caja.preferences show-hidden-files true

# Sort directories first or like mac
gsettings set org.mate.caja.preferences sort-directories-first true

# Disable window animation effects
gsettings set org.mate.interface enable-animations false

# Set toolbars to display icons with text horiz
gsettings set org.mate.interface toolbar-style 'both-horiz'

# Set the number of workspaces and names
gsettings set org.mate.Marco.general num-workspaces 9
gsettings set org.mate.Marco.workspace-names name-1 'Archi'
gsettings set org.mate.Marco.workspace-names name-2 'Web-explorers'
gsettings set org.mate.Marco.workspace-names name-3 'Commu'
gsettings set org.mate.Marco.workspace-names name-4 'Prop'
gsettings set org.mate.Marco.workspace-names name-5 'Editors'
gsettings set org.mate.Marco.workspace-names name-6 'Music'
gsettings set org.mate.Marco.workspace-names name-7 'Commanders'
gsettings set org.mate.Marco.workspace-names name-8 'Analysis'
gsettings set org.mate.Marco.workspace-names name-9 'Fun'
gsettings set org.mate.panel.applet.workspace-switcher:/ num-rows 2

 # Set the order and position of window controls
gsettings set org.mate.interface gtk-decoration-layout 'close,minimize,maximize:'
gsettings set org.mate.Marco.general button-layout 'close,minimize,maximize:'

# Set the Dark Side of the Theme
gsettings set org.mate.Marco.general theme 'BlackMATE'
gsettings set org.mate.interface gtk-theme 'BlackMATE'

# background
gsettings set org.mate.background picture-options 'scaled'
gsettings set org.mate.background primary-color '#01060F'
gsettings set org.mate.background secondary-color '#205540'

# Settings on titlebar
gsettings set org.mate.Marco.general action-middle-click-titlebar 'toggle_shade'
gsettings set org.mate.Marco.general action-double-click-titlebar 'toggle_maximize'

# Disallow autorun on media insertion
gsettings set org.mate.media-handling autorun-never true
gsettings set org.mate.media-handling automount-open false

# Always show notifications on the specified monitor
gsettings set org.mate.NotificationDaemon monitor-number 0
gsettings set org.mate.NotificationDaemon use-active-monitor false
gsettings set org.mate.NotificationDaemon theme 'slider'
gsettings set org.mate.NotificationDaemon popup-location 'bottom_right'

# Terminal preferences
gsettings set org.mate.terminal.keybindings toggle-menubar '<Ctrl><Shift>m'
gsettings set org.mate.terminal.global middle-click-closes-tabs true
gsettings set org.mate.terminal.profile:/ default-show-menubar false

# Set Pluma's colours to Kate's
gsettings set org.mate.pluma color-scheme 'kate'

# Tell Pluma to convert tabs to spaces
gsettings set org.mate.pluma insert-spaces true

# Enable the suspend button and define critical
gsettings set org.mate.power-manager button-suspend 'suspend'
gsettings set org.mate.power-manager percentage-critical 5

# Disable screensaver
gsettings set org.mate.screensaver mode 'blank-only'

# Set window manager
gsettings set org.mate.session.required-components windowmanager 'marco-compton'

# Add favorites | https://unix.stackexchange.com/questions/29661/xdg-user-directories
mkdir "$HOME/Works"
xdg-user-dirs-update --set WORKS "$HOME/Works"
mkdir "$HOME/Academy"
xdg-user-dirs-update --set PROJ "$HOME/Academy"
echo "file://$(xdg-user-dir DOCUMENTS) $(xdg-user-dir DOCUMENTS | cut -d "/" -f 4)" | tee "$HOME/.gtk-bookmarks"
echo "file://$(xdg-user-dir DOWNLOAD) $(xdg-user-dir DOWNLOAD | cut -d "/" -f 4)" | tee -a "$HOME/.gtk-bookmarks"
echo "file://$(xdg-user-dir MUSIC) $(xdg-user-dir MUSIC | cut -d "/" -f 4)" | tee -a "$HOME/.gtk-bookmarks"
echo "file://$(xdg-user-dir PICTURES) $(xdg-user-dir PICTURES | cut -d "/" -f 4)" | tee -a "$HOME/.gtk-bookmarks"
echo "file://$(xdg-user-dir VIDEOS) $(xdg-user-dir VIDEOS | cut -d "/" -f 4)" | tee -a "$HOME/.gtk-bookmarks"
echo "file://$(xdg-user-dir WORKS) $(xdg-user-dir WORKS | cut -d "/" -f 4)" | tee -a "$HOME/.gtk-bookmarks"
echo "file://$(xdg-user-dir ACADEMY) $(xdg-user-dir ACADEMY | cut -d "/" -f 4)" | tee -a "$HOME/.gtk-bookmarks"

# This will give you hardware accelerated window shadows and fading
cat > "$HOME/.config/marco-compton.conf" << EOL
backend = "glx"
vsync = "opengl-swc";
detect-rounded-corners = true;
paint-on-overlay = true;
glx-no-stencil = true;
glx-swap-method = "undefined";
unredir-if-possible = true;
inactive-opacity-override = true;
mark-wmwin-focused = true;
shadow = true;
shadow-radius = 6;
shadow-offset-x = -6;
shadow-offset-y = -6;
shadow-opacity = 0.7;
no-dnd-shadow = true;
shadow-exclude = ["window_type='tooltip'", "window_type='notify'", "! name~=''", "name='Notification'", "name='Plank'", "name='Docky'", "name='Kupfer'", "name*='compton'", "class_g='Conky'", "class_g='Kupfer'", "class_g='Synapse'", "class_g?='Notify-osd'", "class_g?='Cairo-dock'", "class_g='Cairo-clock'", "_GTK_FRAME_EXTENTS@:c"];
xinerama-shadow-crop = true;
fading = true;
fade-delta = 4;
fade-in-step = 0.03;
fade-out-step = 0.03;
EOL
