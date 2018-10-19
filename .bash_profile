if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

export path=/usr/local/mysql/bin:$PATH

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

