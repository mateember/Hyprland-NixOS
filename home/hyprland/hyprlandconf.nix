{config, pkgs, ... }:
{

wayland.windowManager.hyprland.extraConfig = ''

monitor=DP-3,1920x1080@75,0x0,1,vrr,2

###AUTOSTART
#dsd
exec-once=waybar
exec-once = dunst
exec-once = hyprpaper
exec-once = /run/current-system/sw/libexec/polkit-kde-authentication-agent-1
#exec-once = ~/.config/hyprland/start-in-tray.sh
exec-once= /run/current-system/sw/libexec/kdeconnectd
exec-once=dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
exec-once=hypridle
exec-once=kwalletd6
exec-once=hyprctl setcursor breeze 24
exec-once=~/.scripts/mountrpi.sh
exec=XDG_MENU_PREFIX=arch- kbuildsycoca6
exec-once=XDG_MENU_PREFIX=arch- kbuildsycoca6
exec-once=blueman-applet
exec=hyprshade auto
exec=swww-daemon;swww img $HOME/Pictures/háttér/bing.jpg


####ENVIRONMENT

env = XCURSOR_SIZE,24
env = WLR_DRM_NO_ATOMIC,1
env = HYPRCURSOR_THEME,Breeze_Dark
env = HYPRCURSOR_SIZE,24
env = QT_QPA_PLATFORMTHEME,qt6ct
env = QT_QPA_PLATFORM,wayland
env = XDG_MENU_PREFIX,arch- kbuildsycoca6
env = TERM,alacritty


#Keyboard settings

input {
    kb_layout = hu
    kb_variant =
    kb_model =
    kb_options =
    kb_rules =

    follow_mouse = 1

    touchpad {
        natural_scroll = false
    }

    sensitivity = -0.4 # -1.0 - 1.0, 0 means no modification.
}


#Keybinds


# See https://wiki.hyprland.org/Configuring/Keywords/ for more
$mainMod = SUPER

# Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
bind = $mainMod, C, exec, alacritty
bind = $mainMod, Q, killactive,
bind = $mainMod, M, exit,
bind = $mainMod, E, exec, dolphin
bind = $mainMod, V, togglefloating,

#bindr = $mainMod,SPACE ,exec, wofi --show drun -I -a -n -W 500 -H 376 -s ~/.config/wofi/themes/gruvbox.css
#bindr = $mainMod,SPACE ,exec, rofi -show drun
bindr = $mainMod, SPACE, exec, rofi -show drun -theme $HOME/.config/rofi/launcher.rasi

bind = $mainMod_SHIFT, R, exec, bash ~/.config/hypr/hyprestartnix.sh

#bindr=SUPER, SUPER_L, exec, pkill wofi || wofi
bind = $mainMod, P, pseudo, # dwindle
bind = $mainMod, J, togglesplit, # dwindle
bind = $mainMod , L, exec, wlogout
bind = $mainMod, B, exec, com.brave.Browser

#Screenshot
bind = , PRINT, exec, hyprshot -m output --clipboard-only
bind = $altMod, PRINT, exec, hyprshot -m window --clipboard-only
bind = $shiftMod, PRINT, exec, hyprshot -m region --clipboard-only



#function keys
binde=, XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+
binde=, XF86AudioLowerVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%-
bind = , xf86audiomute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
bind = , xf86monbrightnessup, exec, $brightness --inc
bind = , xf86monbrightnessdown, exec, $brightness --dec
bind = , xf86audioplay, exec, playerctl play-pause
bind = , xf86audionext, exec, playerctl next
bind = , xf86audioprev, exec, playerctl previous



# Move focus with mainMod + arrow keys
bind = $mainMod, left, movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, movefocus, u
bind = $mainMod, down, movefocus, d

# Switch workspaces with mainMod + [0-9]
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Example special workspace (scratchpad)
bind = $mainMod, S, togglespecialworkspace, magic
bind = $mainMod SHIFT, S, movetoworkspace, special:magic

# Scroll through existing workspaces with mainMod + scroll
bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up, workspace, e-1

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow


#LOOKS

#Animations, decoration, etc.


general {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more

    gaps_in = 3
    gaps_out = 7
    border_size = 2
    col.active_border = rgba(cb581aee) rgba(ffffffee) 45deg
    col.inactive_border = rgba(595959aa)

    layout = dwindle

    # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
    allow_tearing = true
}


decoration {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more

    rounding = 5

    blur {
        enabled = true
        size = 3
        passes = 1
    }

    drop_shadow = true
    shadow_range = 4
    shadow_render_power = 3
    col.shadow = rgba(1a1a1aee)
}

animations {
    enabled = true

    # Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more

    bezier = myBezier, 0.05, 0.9, 0.1, 1.05
    #bezier = myBezier, 0.05,0.9,0.1,1.1


    animation = windows, 1, 7, myBezier
    animation = windowsOut, 1, 7, default, popin 80%
    animation = border, 1, 10, default
    animation = borderangle, 1, 8, default
    animation = fade, 1, 7, default
    animation = workspaces, 1, 6, default
}

dwindle {
    # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
    pseudotile = true # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = true # you probably want this
}

master {
    # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    new_status = master
}

gestures {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more
    workspace_swipe = false
}

misc {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more
    force_default_wallpaper = 0 # Set to 0 to disable the anime mascot wallpapers
}


####WINDOWSRULES

#Window Rules

windowrulev2 = stayfocused, class:(rofi)
windowrulev2 = float,title:^(Volume Control)$
windowrulev2 = size 40% 50%,title:^(Volume Control)$
windowrulev2 = float,class:(StardewModdingAPI)
windowrulev2 = float,class:(grub-customizer)

#File picker center floating
windowrulev2 = float,class:(org.freedesktop.impl.portal.desktop.kde)
windowrulev2 = center,class:(org.freedesktop.impl.portal.desktop.kde)
windowrulev2 = size 50% 60%,class:(org.freedesktop.impl.portal.desktop.kde)
windowrulev2 = stayfocused,class:(org.freedesktop.impl.portal.desktop.kde)

#blueman fix
windowrulev2 = float,class:(blueman-manager)
windowrulev2 = center,class:(blueman-manager)
windowrulev2 = size 50% 60%,class:(blueman-manager)

windowrulev2 = float, class:(lact)
windowrulev2 = float,title:(Cider)
windowrulev2 = size 60% 70%,title:(Cider)
windowrulev2=float,center,class:(nm-connection-editor)
windowrulev2=float,center,class:(cmst)
windowrulev2 = float,class:(kitty)
windowrulev2 = float,title:(KCalc)

# brave Picture-in-Picture
windowrulev2 = float,title:^(Picture in picture)$
windowrulev2 = pin,title:^(Picture in picture)$
windowrulev2 = size 560 315,title:^(Picture in picture)$
windowrulev2 = move 100%-w-20k,title:^(Picture in picture)$

windowrulev2 = float,title:^(Picture-in-Picture)$
windowrulev2 = pin,title:^(Picture-in-Picture)$
windowrulev2 = size 560 315,title:^(Picture-in-Picture)$
windowrulev2 = move 100%-w-20k,title:^(Picture-in-Picture)$

#windowrulev2 = nofullscreenrequest,title:^(Picture-in-picture)$
#windowrulev2 = nofullscreenrequest,title:^(Picture in picture)$

#xwaylandvideobridge
windowrulev2 = opacity 0.0 override 0.0 override,class:^(xwaylandvideobridge)$
windowrulev2 = noanim,class:^(xwaylandvideobridge)$
windowrulev2 = noinitialfocus,class:^(xwaylandvideobridge)$
windowrulev2 = maxsize 1 1,class:^(xwaylandvideobridge)$
windowrulev2 = noblur,class:^(xwaylandvideobridge)$
windowrulev2 = idleinhibit fullscreen, class:.*


'';

}
