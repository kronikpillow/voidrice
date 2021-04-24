unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
	export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# Configure pinentry to use the correct TTY
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

[ ! -f ${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc ] && shortcuts >/dev/null 2>&1 &

# Initialize Zim
source ${ZIM_HOME}/login_init.zsh -q &!

if pacman -Qs libxft-bgra >/dev/null 2>&1; then
	# Start graphical server on user's current tty if not already running.
	[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
else
	echo "\033[31mIMPORTANT\033[0m: Note that \033[32m\`libxft-bgra\`\033[0m must be installed for this build of dwm.
Please run:
	\033[32myay -S libxft-bgra-git\033[0m
and replace \`libxft\`. Afterwards, you may start the graphical server by running \`startx\`."
fi

# Switch escape and caps if tty and no passwd required:
sudo -n loadkeys ${XDG_DATA_HOME:-$HOME/.local/share}/larbs/ttymaps.kmap 2>/dev/null
