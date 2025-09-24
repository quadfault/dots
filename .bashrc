# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]
then
	. /etc/bashrc
fi

export PAGER=less

# Rebuild the PATH, 'cause /etc/bashrc kinda screws it up.
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin"

# Snap PATH settings
PATH="/snap/bin:$PATH"

# Go PATH settings
PATH="$HOME/go/bin:/usr/local/go/bin:$PATH"

# Weston PATH settings
PATH="$HOME/opt/weston/bin:$PATH"

# Rust PATH settings
PATH="$HOME/.cargo/bin:$PATH"

# Chez Scheme PATH settings
PATH="/opt/scheme/bin:$PATH"

# Node PATH settings.
PATH="$HOME/opt/node-v14.15.5-linux-x64/bin:$PATH"

# Deno PATH settings.
DENO_INSTALL="$HOME/.deno"
PATH="$DENO_INSTALL/bin:$PATH"

# musl PATH settings.
PATH="/usr/local/musl/bin:$PATH"

# bitcoin-core PATH/MANPATH settings.
PATH="/opt/bitcoin/bin:$PATH"
MANPATH="/opt/bitcoin/share/man:$MANPATH"

# Zig PATH settings.
PATH="$HOME/opt/zig:$PATH"

# Local PATH settings; it's important to me that my ~/bin directory is resolved first
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Finally, export PATH/MANPATH in case it isn't
export PATH
export MANPATH
export DENO_INSTALL

# Prompt
username="\[$(tput bold; tput setaf 82)\]"
hostname="\[$(tput bold; tput setaf 3)\]"
jobcount="\[$(tput bold; tput setaf 6)\]"
cwd="\[$(tput bold; tput setaf 4)\]"
reset="\[$(tput sgr0)\]"
PS1="${username}\u${reset}@${hostname}\h${jobcount}[\j]${reset}:${cwd}\w${reset}\$ "
unset username
unset hostname
unset cwd
unset reset

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
. .bash_aliases

# Completions.
. .bash_completions_deno

# Android paths
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export ANDROID_NDK_HOME="$HOME/Android/Sdk/ndk"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/quadfault/.sdkman"
[[ -s "/home/quadfault/.sdkman/bin/sdkman-init.sh" ]] && source "/home/quadfault/.sdkman/bin/sdkman-init.sh"
