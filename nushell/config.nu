use std/util "path add"

$env.config.show_banner   = false
$env.config.buffer_editor = "nvim"

path add (composer config --global home | path join "vendor" "bin")
path add ($nu.home-dir | path join ".local" "bin")

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
}
