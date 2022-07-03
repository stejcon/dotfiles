#
# ~/.bash_profile
#
if [ -z "${DISPLAY}" ] && [ ${XDG_VTNR} -eq 1 ]; then
	exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
. "/home/stephen/.local/share/cargo/env"
