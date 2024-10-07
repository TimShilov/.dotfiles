local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

local tmuxKeymap = function(mods, key, tmuxHotkey)
    return {
        key = key,
        mods = mods,
        action = act.Multiple({
            act.SendKey({ mods = "CTRL", key = "b" }),
            act.SendKey({ key = tmuxHotkey }),
        }),
    }
end

config = {
    color_scheme = "Catppuccin Mocha",
    font_size = 18.0,
    font = wezterm.font({
        family = "JetBrainsMono Nerd Font",
        harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
    }),
    window_close_confirmation = "NeverPrompt",

    enable_tab_bar = false,
    window_decorations = "RESIZE",
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    keys = {
        -- Previous tmux session (CMD + l)
        tmuxKeymap("SUPER", "l", "L"),

        -- New tmux window (CMD + t)
        tmuxKeymap("SUPER", "t", "c"),
        -- Close tmux window (CMD + w)
        tmuxKeymap("SUPER", "w", "&"),

        -- Zoom in tmux pane (CMD + f)
        tmuxKeymap("SUPER", "f", "z"),

        -- Tmux window navigation (CMD + [/])
        tmuxKeymap("SUPER", "[", "p"),
        tmuxKeymap("SUPER", "]", "n"),

        -- Switch to tmux window (CMD + 1..5)
        tmuxKeymap("SUPER", "1", "1"),
        tmuxKeymap("SUPER", "2", "2"),
        tmuxKeymap("SUPER", "3", "3"),
        tmuxKeymap("SUPER", "4", "4"),
        tmuxKeymap("SUPER", "5", "5"),
    },
}

return config
