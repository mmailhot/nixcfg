{ config, pkgs, ...}:

{
  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts
      inconsolata
      ubuntu_font_family
      source-code-pro
      source-sans-pro
      source-serif-pro
    ];
  };
}
