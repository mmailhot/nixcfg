# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./include/fonts.nix
      ./include/desktop-env.nix
      ./include/link-dotfiles.nix
      ./include/development.nix
    ];

  nixpkgs.config.allowUnfree = true;

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "mmailhot-nixos"; # Define your hostname.

  # Select internationalisation properties.
  i18n = {
    consoleFont = "lat9w-16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    wget
    bash
  ];

  services.vmwareGuest.enable = true;

  programs.zsh.enable = true;

  users.extraUsers.mmailhot = {
    group = "users";
    extraGroups = ["wheel"];
    uid = 1000;
    createHome = true;
    home = "/home/mmailhot";
    shell = "/run/current-system/sw/bin/zsh";
  };

}
