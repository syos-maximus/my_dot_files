---------------------
---- KEYBINDINGS ----
---------------------
--variable definitions
local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local CTRL_ALT = "CTRL + ALT"
local terminal = "ghostty"
local fileManager = "thunar"
local menu = "rofi -show drun --allow-images"

-- My Keybinds
hl.bind("Print",                 hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind(mainMod .. " + Print",   hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(CTRL_ALT .. " + Delete", hl.dsp.exec_cmd("hyprlock"))

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
-- Make sure hyprshutdown is installed otherwise this does not work
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + space", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + U", hl.dsp.layout("togglesplit"))    -- dwindle only

-- My script calls
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("ghostty -e openrgb -p rotateeffect"))
-- My TUI applications
hl.bind(mainMod .. " + B",  hl.dsp.exec_cmd("ghostty -e bluetui"))  -- bluetooth manager in terminal
hl.bind(mainMod .. " + A",  hl.dsp.exec_cmd("ghostty -e wiremix"))  -- audio interface via pipewire
-- Rofi power menu (script lives in ~/.local/bin, which you add to
-- PATH with `set -p PATH ~/.local/bin`)
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("rofi -show power-menu -modi power-menu:rofi-power-menu"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
