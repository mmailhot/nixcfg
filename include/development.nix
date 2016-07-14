{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    python27
    python27Packages.virtualenv
    python3
    idea.idea-community
    leiningen
    nodejs
    emacs
    gitAndTools.gitFull
    httpie
    clang
    dmd
    dub
    libevent
    openssl
    zeal
    rustc
    cargo
    racket
  ];
}
