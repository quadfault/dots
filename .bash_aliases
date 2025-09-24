alias hd='hexdump --canonical'
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias t='tree'

# ARM toolchain
alias aas='arm-linux-gnueabihf-as'
alias agcc='arm-linux-gnueabihf-gcc'
alias ald='arm-linux-gnueabihf-ld'
alias aobjdump='arm-linux-gnueabihf-objdump'

# Firefox
alias ff='firefox'
alias ffd="$HOME/opt/firefox-dev/firefox"
alias ffn="$HOME/opt/firefox-nightly/firefox"

# systemd
alias sc='systemctl'

# readelf sometimes abbreviates lines to fit an 80-column limit. Yeah, don't do that.
alias readelf='readelf -W'
