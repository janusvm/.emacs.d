# My Emacs configuration

This repository contains my personal settings for Emacs (version 25.3, running on Ubuntu 16.04).
I've gotten a lot of inspiration for this setup from [magnars/.emacs.d](https://github.com/magnars/.emacs.d), so be sure to check that out too.


## Installation

1. Install the font _Iosevka SS04_, which can be obtained as follows:

    - Go to <https://github.com/be5invis/Iosevka/releases>
    - Download `iosevka-ss04-x.x.x.zip`
    - Unpack and install the fonts in the `ttf/` folder

    NB: If you don't want to use this font, edit the below lines in `settings/set-appearance.el` after the next step:

    ```elisp
    (set-face-attribute 'default nil
                        :family "Iosevka SS04"
                        :height 120)
    ```


1. After deleting your old Emacs init file(s):

    ```console
    mkdir -p ~/.emacs.d
    cd ~/.emacs.d
    git clone https://github.com/janusvm/.emacs.d.git .
    ```

    When you open Emacs after this,

    - packages are automatically installed from (in order of priority) Melpa Stable, GNU Elpa, Melpa
    - a pop-up about abbrevs will pause the process, and I have no idea how to get rid of it (but I suspect that `ess` is the culprit)
    - several warnings about the byte compilation of packages will be displayed (just ignore them)

1. If you don't already have the resource fonts for the package [all-the-icons](https://github.com/domtronn/all-the-icons.el), run the following:

    ```elisp
    (all-the-icons-install-fonts)
    ```

    This will install a few truetype fonts and update your font cache, so it might take a little while to finish.

## Notes

I use a couple of non-standard keybindings, rebind some common keys, and unset some entirely.
Take a look in `settings/set-keybindings.el` to get an overview.
