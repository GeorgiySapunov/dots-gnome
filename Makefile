stowall:
	rm -r ~/.local/bin
	stow kitty lf mpd mpv mpv ncmpcpp newsboat sxiv wget zathura zsh
	rm ~/.local/bin
	cp -r local/.local/bin ~/.local/

unstow:
	rm -r ~/.local/bin
	stow --delete */

