set -gx XDG_SESSION_TYPE wayland
set -gx XDG_SESSION_DESKTOP river
set -gx XDG_CURRENT_DESKTOP river
set -gx DESKTOP_SESSION river
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CACHE_HOME $HOME/.cache
#xkb
set -gx XKB_DEFAULT_LAYOUT us
set -gx XKB_DEFAULT_OPTIONS altwin:swap_lalt_lwin,caps:ctrl_modifier
# default programs
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx DRIVE nvme0n1
set -gx ROOTPART nvme0n1p3
set -gx BOOTPART nvme0n1p1
set -gx TIMEZONE US/Pacific
# set -gx ROOT /mnt/oasis

