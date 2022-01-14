set -Ux XDG_SESSION_TYPE wayland
set -Ux XDG_SESSION_DESKTOP river
set -Ux XDG_CURRENT_DESKTOP river
set -Ux DESKTOP_SESSION river
set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux XDG_CACHE_HOME $HOME/.cache
#xkb
set -Ux XKB_DEFAULT_LAYOUT us
set -Ux XKB_DEFAULT_OPTIONS altwin:swap_lalt_lwin,caps:ctrl_modifier
# default programs
set -Ux EDITOR nvim
set -Ux VISUAL nvim
