#!/usr/bin/env sh

set -e

TPM_DIR="$HOME/.local/state/tmux/plugins/tpm"
COLOR_SRC="$HOME/.local/state/tmux/plugins/tokyonight.nvim/extras/tmux"
COLOR_DEST="$HOME/.config/tmux/colorschemes"

# 1. Clone TPM if not already present
if [ ! -d "$TPM_DIR" ]; then
        git clone https://github.com/tmux-plugins/tpm "$TPM_DIR" >/dev/null
fi

# 2. Install plugins
if [ -x "$TPM_DIR/bin/install_plugins" ]; then
        "$TPM_DIR/bin/install_plugins" >/dev/null
        "$TPM_DIR/bin/update_plugins" all >/dev/null
else
        exit 1
fi

# 3. Create/update symlink
ln -sf "$COLOR_SRC" "$COLOR_DEST" >/dev/null
