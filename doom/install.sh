sudo apt update
sudo apt upgrade
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install --yes emacs27 tmux vim htop gcc gdb mosh ssh ripgrep fd-find libtool libtool-bin git editorconfig python3

if [ ! -d "$HOME/.doom.d" ]; then
    git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
    ~/.emacs.d/bin/doom install
fi

mkdir "$HOME/go"
cp ../.profile -t "$HOME"
. "$HOME/.profile"

cp ../doom/* -t "$DOOMDIR"
