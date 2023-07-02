#!/bin/sh
alias j='z'
alias f='zi'
alias g='lazygit'
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias nvimrc='nvim ~/.config/nvim/'
# alias yay="paru"

# alias lvim='nvim -u ~/.local/share/lunarvim/lvim/init.lua --cmd "set runtimepath+=~/.local/share/lunarvim/lvim"'

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Remarkable
# alias remarkable_ssh='ssh root@10.11.99.1'
# alias restream='restream -p'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi"
alias ip="ip -color=auto"

# confirm before overwriting something
alias cp="cp -iv"
alias mv='mv -iv'
alias rm='rm -iv'
alias rsync="rsync -vrPlu"

# yt-dlp
alias yt="yt-dlp --embed-metadata -i --write-sub "
alias ytp="yt -o \"%(playlist_index)s-%(title)s.%(ext)s\""
alias yta="yt-dlp -x -f bestaudio/best --audio-format mp3"
alias ytpa="yta -o \"%(playlist_index)s-%(title)s.%(ext)s\""
alias ytt="yt --skip-download --write-thumbnail"
alias ffmpeg="ffmpeg -hide_banner"
alias mpv="mpv --save-position-on-quit"

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# For when keys break
alias archlinx-fix-keys="sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys"

# systemd
# alias mach_list_systemctl="systemctl list-unit-files --state=enabled"

# alias mach_java_mode="export SDKMAN_DIR="$HOME/.sdkman" && [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh""

alias m="git checkout master"
alias s="git checkout stable"
alias sa="git checkout sapunov"

alias gpf="git push; git push flic"
alias gpfforce="git push --force; git push flic --force"

if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac


alias bc="bc -ql"
alias trem="transmission-remote"
alias e="$EDITOR"
alias v="$EDITOR"
alias weath="less -S ${XDG_CACHE_HOME:-$HOME/.cache}/weatherreport"
