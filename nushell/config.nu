# ---------------------
# Environment Variables
# ---------------------

load-env {
        XDG_CONFIG_HOME: ($env.XDG_CONFIG_HOME? | default ($nu.home-dir | path join ".config"))
        XDG_CACHE_HOME:  ($env.XDG_CACHE_HOME?  | default ($nu.home-dir | path join ".cache"))
        XDG_DATA_HOME:   ($env.XDG_DATA_HOME?   | default ($nu.home-dir | path join ".local" "share"))
        XDG_STATE_HOME:  ($env.XDG_STATE_HOME?  | default ($nu.home-dir | path join ".local" "state"))

        XDG_DESKTOP_DIR:     ($env.XDG_DESKTOP_DIR?     | default ($nu.home-dir | path join "documents"))
        XDG_DOCUMENTS_DIR:   ($env.XDG_DOCUMENTS_DIR?   | default ($nu.home-dir | path join "documents"))
        XDG_DOWNLOAD_DIR:    ($env.XDG_DOWNLOAD_DIR?    | default ($nu.home-dir | path join "documents" "downloads"))
        XDG_MUSIC_DIR:       ($env.XDG_MUSIC_DIR?       | default ($nu.home-dir | path join "media" "music"))
        XDG_PICTURES_DIR:    ($env.XDG_PICTURES_DIR?    | default ($nu.home-dir | path join "media" "pictures"))
        XDG_PROJECTS_DIR:    ($env.XDG_PROJECTS_DIR?    | default ($nu.home-dir | path join "projects"))
        XDG_PUBLICSHARE_DIR: ($env.XDG_PUBLICSHARE_DIR? | default ($nu.home-dir | path join "public"))
        XDG_TEMPLATES_DIR:   ($env.XDG_TEMPLATES_DIR?   | default ($nu.home-dir | path join "templates"))
        XDG_VIDEOS_DIR:      ($env.XDG_VIDEOS_DIR?      | default ($nu.home-dir | path join "media" "videos"))

        EDITOR: "nvim"
        VISUAL: "nvim"
}

load-env {
        SSH_AUTH_SOCK: (gpgconf --list-dirs agent-ssh-socket)
        CLAUDE_CONFIG_DIR: ($env.XDG_CONFIG_HOME | path join "claude")
}

# ----------------
# Path Environment
# ----------------

use std/util "path add"

path add (composer config --global home | path join "vendor" "bin")
path add ($nu.home-dir | path join ".local" "bin")

# ------------------------
# History-related Settings
# ------------------------

$env.config.history.file_format           = 'sqlite'
$env.config.history.max_size              = 5_000_000
$env.config.history.sync_on_enter         = true
$env.config.history.isolation             = true
$env.config.history.path                  = ($env.XDG_STATE_HOME | path join "nushell")
$env.config.history.ignore_space_prefixed = true

# ----------------------
# Miscellaneous Settings
# ----------------------

$env.config.show_banner      = false
$env.config.rm.always_trash  = false
$env.config.recursion_limit  = 255
$env.config.auto_cd_implicit = false

# ------------------
# Clipboard Settings
# ------------------

$env.config.clip.resident_mode = ($nu.os-info.name == linux)
$env.config.clip.default_raw   = false

# ---------------------------
# Commandline Editor Settings
# ---------------------------

$env.config.edit_mode              = "vi"
$env.config.buffer_editor          = null
$env.config.cursor_shape.emacs     = "inherit"
$env.config.cursor_shape.vi_insert = "line"
$env.config.cursor_shape.vi_normal = "block"

# -----------------------
# TODO: Organize the rest
# -----------------------

$env.config.hooks.pre_execution = [
        { load-env { GPG_TTY: (tty) } }
        { gpg-connect-agent updatestartuptty /bye | ignore }
]
