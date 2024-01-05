$env.LANG   = "en_US.UTF-8"
# $env.LC_ALL = "en_US.UTF-8"

$env.LC_CTYPE          = "fi_FI.UTF-8"
$env.LC_NUMERIC        = "fi_FI.UTF-8"
$env.LC_TIME           = "fi_FI.UTF-8"
$env.LC_COLLATE        = "fi_FI.UTF-8"
$env.LC_MONETARY       = "fi_FI.UTF-8"
# $env.LC_MESSAGES       = "fi_FI.UTF-8"
$env.LC_PAPER          = "fi_FI.UTF-8"
$env.LC_NAME           = "fi_FI.UTF-8"
$env.LC_ADDRESS        = "fi_FI.UTF-8"
$env.LC_TELEPHONE      = "fi_FI.UTF-8"
$env.LC_MEASUREMENT    = "fi_FI.UTF-8"
$env.LC_IDENTIFICATION = "fi_FI.UTF-8"

if $env.WAYLAND_DISPLAY? == null and (tty) == '/dev/tty1' {
        exec river
}
