# Dotfiles for my arch install

These are my dotfiles for my hyprland+arch install of linux.

Watch this [video](https://www.youtube.com/watch?v=y6XCebnB9gs) to understand how to set things back up. I'm using [stow](https://www.gnu.org/software/stow/manual/stow.html) so this repo needs to live directly in your home directory, ~/. Then, you need to have stow installed and you can run this command from ~/dotfiles and all of the files in this project will be symlinked into your home directory :)

``` bash
[me@myPC ~/dotfiles]$ stow .
```

## Command to take care of installs
You can run this command to take care of installing most things referenced by the dot config files... some things come with your os install:

``` bash
yay -Syu chromium dunst figlet gum htop hypridle hyprlock hyprshot kitty ncdu rofi stow swww ttf-nerd-fonts-symbols vscodium-bin vtop waybar wlogout --needed --noconfirm
```

Do note, that if you want to swap one of the above tools (i.e. kitty, dolphin, chromium, codium) that you'll want to look through all of the files in the workspace to learn where it all needs to be changed. Kitty for example is referenced by waybar's config.jsonc and hyprland.conf.

## Troubleshooting Tips

### Waybar
To see what's broken and where it lives when it comes to waybar you can pkill waybar and then launch waybar from the terminal and get console out...

## Todos
* [ ] Fix keyring issue with VSCode - https://code.visualstudio.com/docs/editor/settings-sync#_troubleshooting-keychain-issues

## Nice to haves
* [ ] Make Waybar [look the way I want](https://camo.githubusercontent.com/b8805970ca251df50b4f57a8912ee9a875cc6f022ec6a05191ef1e7dff837949/68747470733a2f2f6c696e66696e64656c2e6769746875622e696f2f63646e2f687970726c616e642d707265766965772d622e706e67).
* [ ] Extra credit, theme file browser or look at a wal tool to share color with all tools...
* [ ] get backgrounds from places like this:
    * https://www.dropbox.com/scl/fo/3pcwifpv2jjghaw00ry6w/AOWrRAa5-kv-FlTxph1RajU?rlkey=ebcqutm32vrckt8df36z52kfn&e=1&dl=0
* [ ] curate more images with these varieties:
    - megaman
    - chrono trigger
    - old anime
    - zelda
    - final fantasy
    - old school games... 
    - excite bike ...