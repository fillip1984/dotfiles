# Dotfiles for my arch install

These are my dotfiles for my hyprland+arch install of linux.

Watch this [video](https://www.youtube.com/watch?v=y6XCebnB9gs) to understand how to set things back up. I'm using [stow](https://www.gnu.org/software/stow/manual/stow.html) so this repo needs to live directly in your home directory, ~/. Then, you need to have stow installed and you can run this command from ~/dotfiles and all of the files in this project will be symlinked into your home directory :)

``` bash
[me@myPC ~/dotfiles]$ stow .
```

## TODO
* [ ] Get swww working so we can have backgrounds rotating in and out.
    - [ ] figure out how to find all files that are images so I can keep the wallpapers directory organized and not just a bunch of image files
* [ ] Make Waybar [look the way I want](https://camo.githubusercontent.com/b8805970ca251df50b4f57a8912ee9a875cc6f022ec6a05191ef1e7dff837949/68747470733a2f2f6c696e66696e64656c2e6769746875622e696f2f63646e2f687970726c616e642d707265766965772d622e706e67). Can't figure out how to get items centered within their badge/pill container.
* [ ] Settle on web browser browser. 
* [ ] Look into Keyring (KDE Wallet, or something else)
* [ ] Look into [Auth Agent](https://wiki.hyprland.org/Useful-Utilities/Must-have/#authentication-agent)
* [ ] Fix hyprlock - need to find a suitable config and steal it. Right now the screen is blank and I can't see what I'm doing or even being prompted for.
* [ ] Fix hypridle - disabled a bunch of it since right now my display doesn't come back after sleep.
* [ ] Extra credit, theme file browser or look at a wal tool to share color with all tools...
* [ ] Extra credit, there was an issue before where my computer wouldn't sleep unless I blacklisted ath12k drivers but amazingly my computer does now sleep if systemctl suspend is issued. Problem is I have to use the power button and not the keyboard/mouse to get things going again. Not a huge deal but would be nice if keyboard/mouse activity brough the system back to life.
* [ ] Come up with a method to get all of my favorite packages to install with arch. That way between stow and a script to do minor other tweaks I can rebuild my machine fairly quickly.
* [ ] After all above, and it is proven on another machine, maybe go check out NixOS again...