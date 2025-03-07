return {
  'nvim-lualine/lualine.nvim',
  event = { 'VeryLazy' },
  config = function()
    local theme = require 'lualine.themes.catppuccin'
    theme.normal.c.bg = nil

    local function get_timerly_status()
      local state = require 'timerly.state'
      if state.progress == 0 then
        return ''
      end

      local total = math.max(0, state.total_secs + 1) -- Add 1 to sync with timer display
      local mins = math.floor(total / 60)
      local secs = total % 60

      return string.format('%s %02d:%02d', state.mode:gsub('^%l', string.upper), mins, secs)
    end

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = theme,
        component_separators = '',
        section_separators = '',
      },
      sections = {
        lualine_b = { 'branch', 'diagnostics' },
        lualine_c = { '%=' },
        lualine_x = { 'filetype', { show_colors = true }, get_timerly_status },
      },
    }
  end,
}
