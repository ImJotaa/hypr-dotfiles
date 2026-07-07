# Introduction
Hi! You can call me Jota. This is my own hypr configuration. You may be wondering why I decided to configure hypr dotfiles when there are a lot of them already on the internet. Well, there are multiple reasons, but let me explain some context first so you can understand the essence of this repo.

I was always a Windows user. Since I was a kid, the only OS my computers had was Windows. That cahnged when I started studying IT. I discovered Linux and all the univers it goes with it, and really liked it. Unfortunately there was a BIG BUT in this: Gaming. Since kid I played games on computer, console or phone. Windows was offering something Linux couldn't on that moment, and I was really disappointed. I never liked dual boot, even tho it was a viable option, I always have been so picky with the aesthetics of my setup, and GRUB dual boot wasn't making it the way I wanted. The duality between having a good working environment or gaming (mantaining a good aesthetics when booting) was killing me. That was until Valve started working seriusly on his steamdeck console and it's OS. They invested a lot of money and made the Linux ecosystem more compatible with Gaming.

And here we are. At this moment (2026), Linux is a viable option for gaming, performing (in some cases) better than Windows, and making it possible for me to have Linux not only for work (I think is the best option in almost every scenario) but for gaming. I decided to go for CachyOS since I liked some features (like pre configured gaming packages), but now I had another problem: which desktop should I use?

There are plenty of options available, and it all depends on your preferences. I'm used to Linux since I've been working with it since I started studying, but never had this question since I've always gone for default installations. I tried different desktops along this journey with Linux (GNOME, Plasma, bspwm, awesomeWM...) but I really enjoyed awesomeWM because of the posibility to configure everything in LUA and make really crazy things. It was so flexible and I liked it, but investigating I concluded that it wasn't the best option for gaming because of the way X11 works. So the option here was a Wayland Desktop Manager. You may think that Plasma is the best since it has a lot of customization, it's stable, has a big community behind... But the thing is I want REAL customization and not a GUI that decides what I can configure.

## TL;DR

The features I wanted were:
- Really flexible customization
- Good documentation so I can learn and make my own config
- Some repos from the community where I can base my project on and/or learn how people manage their elements

That made me decide for Hyprland. 

# Software
I searched for multiple references so I could decide which software to use. The list became the following:

| Component | Software |
| --------- | -------- |
| Windoww Manager | Hyprland |
| Bootloader | Refind |
| Terminal | Kitty | 
| Shell | ZSH + Powerlevel10k |
| Fetch | FastFetch |
| File Manager | Dolphin |
| Editor | Neovim |
| Browser | Zen Browser |
| Task Bar | Waybar |
| Launcher | Rofi |
| Lockscreen | Hyprlock |
| Login | SDDM |
| Music | Spotify_player (TUI) |
