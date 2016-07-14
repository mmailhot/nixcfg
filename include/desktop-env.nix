{ config, pkgs, ...}:

{
   nixpkgs.config = {
     allowUnfree = true;
     chromium = {
       jre = true;
       enableGoogleTalkPlugin = true;
       enablePepperFlash = true;
       enablePepperPDF = true;
     };
   };

   environment.systemPackages = with pkgs; [
     vim
     ranger
     chromium
     vlc
     ffmpeg
     openjdk
     xfce.terminal
     dmenu
     i3status
     nitrogen
   ];

   services.xserver = {
     enable = true;
     layout = "us";
     xkbVariant = "colemak";
     desktopManager = {
       xterm.enable = false;
     #   xfce.enable = true;
     #   default = "xfce";
     };
     windowManager = {
       i3.enable = true;
       default = "i3";
     };
   };
}
