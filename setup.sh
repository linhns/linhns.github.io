#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -ex

echo "Updating archives and upgrading packages..."
sudo apt update && sudo apt upgrade -y

echo "Creating local bin directory..."
if [ ! -d "$HOME/.local/bin" ]; then
    mkdir -p "$HOME/.local/bin"
fi
export PATH=$PATH:$HOME/.local/bin

echo "Installing system packages..."
sudo apt install -y \
    build-essential \
    make \
    curl \
    flex \
    bison \
    libssl-dev \
    libtool \
    pkg-config \
    ca-certificates \
    gpg \
    wget \
    zip \
    unzip \
    ccache \
    htop \
    ffmpeg \
    zsh \
    ninja-build \
    gettext \
    tmux \
    stow \
    tree

cd "$HOME"

# Install gum
[ -d /etc/apt/keyrings ] || sudo mkdir /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install -y gum

echo "Installing git from PPA..."
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install -y git

echo "Installing CMake from Kitware PPA..."
curl https://apt.kitware.com/kitware-archive.sh | sudo sh
sudo apt-get install -y cmake

_prompt="Choose a Neovim version: "
_selected_tag=$(gum choose --header "$_prompt" "stable" "nightly")
echo "$_prompt$_selected_tag"
sudo dpkg -r neovim
echo "Installing neovim($_selected_tag)..."
_neovim_dir=/tmp/neovim
git clone --branch "$_selected_tag" --depth 1 https://github.com/neovim/neovim.git "$_neovim_dir"
cd $_neovim_dir
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i "nvim-linux-$(uname -m).deb"
cd "$HOME"

echo "Installing gh..."
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) &&
    sudo mkdir -p -m 755 /etc/apt/keyrings &&
    out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg &&
    cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null &&
    sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg &&
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null &&
    sudo apt update &&
    sudo apt install gh -y

echo "Installing mise..."
command -v mise >/dev/null || curl https://mise.run | sh

echo "Installing tools with mise"
mise use -g go@latest node@lts fzf@latest bat@latest jq@latest rg@latest usage@latest lazygit@latest zoxide@latest btop@latest lazydocker@latest

if gum confirm --show-output "Do you want to install Rust?"; then
    echo "Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

if gum confirm --show-output "Do you want to install uv?"; then
    if command -v uv >/dev/null 2>&1; then
        if gum confirm --show-output "Found uv. Do you want to update uv to latest version?"; then
            uv self update
        fi
    else
        echo "Installing uv..."
        curl -LsSf https://astral.sh/uv/install.sh | sh
    fi
fi

echo "Installing starship..."
curl -sS https://starship.rs/install.sh | sh

echo "Symlinking dotfiles..."
[ -d "$HOME/dotfiles" ] || git clone https://github.com/linhns/dotfiles
cd dotfiles
stow --no-folding .
cd "$HOME"
