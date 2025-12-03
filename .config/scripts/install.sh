#!/usr/bin/env bash

RED='\033[1;31m'
GRN='\033[1;32m'
BLU='\033[1;34m'
RST='\033[0m'

DEPS=(
    ly
    hyprland
    pipewire
	pipewire-pulse
    pipewire-alsa
    wireplumber
    xdg-desktop-portal-hyprland
    hyprpolkitagent
    qt5-wayland
    qt6-wayland
    linux-firmware
    linux-headers
    mesa
    intel-vulkan
    nvidia-dkms
    stow
    kitty
    hyprpaper
    hypridle
    hyprlock
    dunst
    fuzzel
    waybar
    grim
    slurp
    fish
    starship
    fzf
    ripgrep
    tmux
    neovim
    yazi
    lazygit
    noto-fonts
    noto-fonts-cjk
    noto-fonts-extra
    noto-fonts-emoji
    ttf-jetbrains-mono-nerd
	ttf-0xproto-nerd
	bluez
    bluez-utils
    bluetui
    impala
    wiremix
    calcurse
    btop
	brightnessctl
    udiskie
    firefox
    wl-clipboard
    tlp
)

main() {
    printf '%bSyncing and upgrading…%b\n' "$BLU" "$RST"
    sudo pacman -Syu

	printf '%bInstalling dependencies...%b\n' "$BLU" "$RST"

	local package
	local errors=0
	for package in "${DEPS[@]}"; do
        if pacman -Qi "$package" &>/dev/null; then
			printf '[%b/%b] %s\n' "$GRN" "$RST" "$package"
		else
			printf '[ ] %s...\n' "$package"

			if sudo pacman -S --needed --noconfirm "$package"; then
				printf '[%b+%b] %s\n' "$GRN" "$RST" "$package"
			else
				printf '[%bx%b] %s\n' "$RED" "$RST" "$package"
				((errors++))
			fi
		fi
	done

    printf '\n%bMaking scripts executable...%b\n' "$BLU" "$RST"
    shopt -s nullglob
    local scripts
    scripts=( "$HOME/.config/scripts/"*.sh )
    shopt -u nullglob
    if ((${#scripts[@]} > 0)); then
        chmod +x "${scripts[@]}"
    else
        printf 'No scripts found in ~/.config/scripts\n'
    fi

    printf '\n%bEnabling services…%b\n' "$BLU" "$RST"
    sudo systemctl enable --now ly || true
    sudo systemctl enable --now bluetooth || true
    sudo systemctl --user enable --now pipewire pipewire-alsa pipewire-pulse wireplumber || true
    sudo systemctl enable --now tlp.service || true
    sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket || true

    printf '\n%bMaking fish default shell...%b\n' "$BLU" "$RST"
    if command -v fish >/dev/null 2>&1; then
        chsh -s "$(command -v fish)" "$USER"
    else
        printf '%bFish not found in PATH, skipping default shell change.%b\n' "$RED" "$RST"
    fi

	if ((errors > 0)); then
		printf '\nInstallation completed with %b%d errors%b\n' \
			"$RED" "$errors" "$RST"
	else
		printf '\n%bInstallation complete!%b\n' "$GRN" "$RST"
	fi
}

main
