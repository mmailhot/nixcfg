{ config, pkgs, ...}:

{
   nixpkgs.config = {
     allowUnfree = true;
     firefox = {
       jre = true;
       enableGoogleTalkPlugin = true;
       enableAdobeFlash = false;
     };
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
     firefox
     vlc
     ffmpeg
     openjdk
     xfce.terminal
     dmenu
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
