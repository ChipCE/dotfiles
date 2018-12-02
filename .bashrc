# powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

# tilix
if [[ $TILIX_ID ]]; then
        source /etc/profile.d/vte.sh
fi
