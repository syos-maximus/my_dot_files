------------------------------
---- MY PROGRAMS AUTOSTART---- 
------------------------------

 hl.on("hyprland.start", function () 
   hl.exec_cmd("openrgb -p rotateeffect")
   hl.exec_cmd("hypridle")
   hl.exec_cmd("hyprpaper")
   hl.exec_cmd("jamesdsp --tray")
   hl.exec_cmd("waybar")
   hl.exec_cmd("swaync")
   hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
end)
