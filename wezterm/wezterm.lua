local wezterm = require("wezterm")

local SOLID_LEFT_SLASH = utf8.char(0xe0ba)
local SOLID_RIGHT_SLASH = utf8.char(0xe0b8)

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local edge_background = "#b7141f"
  local background = "#e5e5e5"
  local foreground = "#424242"

  if tab.is_active then
    background = "#232322"
    foreground = "#e5e5e5"
  elseif hover then
    background = "#f6981e"
    foreground = "#212121"
  end

  local edge_foreground = background

  local title = wezterm.truncate_right(tab.active_pane.title, max_width+20)

  return {
    {Background={Color=edge_background}},
    {Foreground={Color=edge_foreground}},
    {Text=SOLID_LEFT_SLASH},
    {Background={Color=background}},
    {Foreground={Color=foreground}},
    {Text='  '},
    {Text=title},
    {Text='  '},
    {Background={Color=edge_background}},
    {Foreground={Color=edge_foreground}},
    {Text=SOLID_RIGHT_SLASH},
  }
end)

return {

  freetype_load_target = "HorizontalLcd",
  font_size = 9.0,
  font_rules = {
    {
      italic = true,
      font = wezterm.font("Operator Mono Lig",{italic=true})
    }
  },
  font = wezterm.font_with_fallback({
    { family="Anomaly Mono"},
    { family="Symbols Nerd Font"}
  }),
  window_padding = {
    left = "3cell",
    right = "3cell",
    top = "1cell",
    bottom = "1cell",
  },
  allow_square_glyphs_to_overflow_width = "Always",
  window_frame={
    active_titlebar_bg = "#b7141f",
    active_titlebar_fg = "#e5e5e5",
  },
  colors = {
    tab_bar = {
      background = "#b7141f",
      active_tab = {
        intensity = "Bold",
        italic = true,
        bg_color = "#232322",
        fg_color = "#e5e5e5",
      },
      new_tab = {
        bg_color = "#b7141f",
        fg_color = "#b7141f"
      }
    }
  },
  color_scheme = "MaterialDarker",
  use_fancy_tab_bar = false,
  enable_wayland = true,
  unix_domains = {{ name = "unix" }},
  default_gui_startup_args = {"connect", "unix"},
}
