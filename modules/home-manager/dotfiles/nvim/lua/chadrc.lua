local options = {
  base46 = {
    theme = 'catppuccin',
    hl_add = {},
    hl_override = {
      ['@comment'] = {
        fg = '#7f849c',
      },
      --   ['@punctuation.bracket'] = { fg = '#eba0ac' },
      --   ['@variable.member'] = { fg = 'blue' },
    },
    integrations = {},
    transparency = false,
  },

  ui = {
    cmp = {
      style = 'default', -- default/flat_light/flat_dark/atom/atom_colored
    },

    telescope = { style = 'bordered' },

    statusline = {
      enabled = true,
      theme = 'default', -- default/vscode/vscode_colored/minimal
    },

    tabufline = { enabled = false },
  },

  nvdash = {
    load_on_startup = true,
    header = {
      '                            ',
      '     ▄▄         ▄ ▄▄▄▄▄▄▄   ',
      '   ▄▀███▄     ▄██ █████▀    ',
      '   ██▄▀███▄   ███           ',
      '   ███  ▀███▄ ███           ',
      '   ███    ▀██ ███           ',
      '   ███      ▀ ███           ',
      '   ▀██ █████▄▀█▀▄██████▄    ',
      '     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ',
      '                            ',
      '     Powered By  eovim    ',
      '                            ',
    },

    buttons = {
      { txt = '  Find File', keys = 'ff', cmd = 'Telescope find_files' },
      { txt = '  Recent Files', keys = 'fo', cmd = 'Telescope oldfiles' },
      { txt = '󰈭  Find Word', keys = 'fw', cmd = 'Telescope live_grep' },
      { txt = '󱥚  Themes', keys = 'th', cmd = ":lua require('nvchad.themes').open()" },
      { txt = '  Mappings', keys = 'ch', cmd = 'NvCheatsheet' },

      { txt = '─', hl = 'NvDashFooter', no_gap = true, rep = true },

      {
        txt = function()
          local stats = require('lazy').stats()
          local ms = math.floor(stats.startuptime) .. ' ms'
          return '  Loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins in ' .. ms
        end,
        hl = 'NvDashFooter',
        no_gap = true,
      },

      { txt = '─', hl = 'NvDashFooter', no_gap = true, rep = true },
    },
  },
}

return options
