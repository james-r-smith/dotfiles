# XDG:  Set variables for base directory specification.
# see:
# - https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
# - https://wiki.archlinux.org/index.php/XDG_Base_Directory_support

set -q XDG_CONFIG_HOME || set -gx XDG_CONFIG_HOME $HOME/.config
set -q XDG_DATA_HOME || set -gx XDG_DATA_HOME $HOME/.local/share
set -q XDG_CACHE_HOME || set -gx XDG_CACHE_HOME $HOME/.cache
set -q XDG_RUNTIME_DIR || set -gx XDG_RUNTIME_DIR /run/user/(id -u)

if [ ! -w $XDG_RUNTIME_DIR ]
    echo "\$XDG_RUNTIME_DIR ($XDG_RUNTIME_DIR) not writable. Setting to /tmp." >&2
    set -gx XDG_RUNTIME_DIR /tmp
end