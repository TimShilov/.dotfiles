local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font_size = 18.0
config.font = wezterm.font({
    family = "JetBrainsMono Nerd Font",
    harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
})
-- config.default_prog = { "tmux" }

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.keys = {
    {
        key = "l",
        mods = "CMD",
        action = act.Multiple({
            act.SendKey({ mods = "CTRL", key = "b" }),
            act.SendKey({ key = "L" }),
        }),
    },
}

return config