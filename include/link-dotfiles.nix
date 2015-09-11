{ config, lib, pkgs, ...}:

with lib;
{
  system.activationScripts = {
    dotfiles = stringAfter ["users"]
    ''
      cd /home/mmailhot
      ln -fs ${../dotfiles/spacemacs/dot-spacemacs} .spacemacs
      ln -fs ${../dotfiles/i3} .i3
      ln -fsn ${../dotfiles/prezto} .zprezto
      ln -fs ${../dotfiles/prezto/runcoms/zlogin} .zlogin
      ln -fs ${../dotfiles/prezto/runcoms/zpreztorc} .zpreztorc
      ln -fs ${../dotfiles/prezto/runcoms/zshenv} .zshenv
      ln -fs ${../dotfiles/prezto/runcoms/zprofile} .zprofile
      ln -fs ${../dotfiles/prezto/runcoms/zshrc} .zshrc
      mkdir -p .lein
      ln -fs ${../dotfiles/clojure/profiles.clj} .lein/profiles.clj
    '';
  };
}
