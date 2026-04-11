# config.nu
#
# Installed by:
# version = "0.111.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings,
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

$env.config.buffer_editor = "nvim"

load-env {
        XDG_CONFIG_HOME: ($env.XDG_CONFIG_HOME? | default ($nu.home-dir | path join ".config"))
        XDG_CACHE_HOME:  ($env.XDG_CACHE_HOME?  | default ($nu.home-dir | path join ".cache"))
        XDG_DATA_HOME:   ($env.XDG_DATA_HOME?   | default ($nu.home-dir | path join ".local" "share"))
        XDG_STATE_HOME:  ($env.XDG_STATE_HOME?  | default ($nu.home-dir | path join ".local" "state"))

        XDG_DESKTOP_DIR:     ($env.XDG_DESKTOP_DIR?     | default ($nu.home-dir))
        XDG_DOCUMENTS_DIR:   ($env.XDG_DOCUMENTS_DIR?   | default ($nu.home-dir | path join "documents"))
        XDG_DOWNLOAD_DIR:    ($env.XDG_DOWNLOAD_DIR?    | default ($nu.home-dir | path join "documents" "downloads"))
        XDG_MUSIC_DIR:       ($env.XDG_MUSIC_DIR?       | default ($nu.home-dir | path join "media" "music"))
        XDG_PICTURES_DIR:    ($env.XDG_PICTURES_DIR?    | default ($nu.home-dir | path join "media" "pictures"))
        XDG_PROJECTS_DIR:    ($env.XDG_PROJECTS_DIR?    | default ($nu.home-dir | path join "projects"))
        XDG_PUBLICSHARE_DIR: ($env.XDG_PUBLICSHARE_DIR? | default ($nu.home-dir | path join "public"))
        XDG_TEMPLATES_DIR:   ($env.XDG_TEMPLATES_DIR?   | default ($nu.home-dir | path join "templates"))
        XDG_VIDEOS_DIR:      ($env.XDG_VIDEOS_DIR?      | default ($nu.home-dir | path join "media" "videos"))

        EDITOR: "nvim"
}
