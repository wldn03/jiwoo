{ pkgs }: {
  deps = [
    pkgs.ed
    pkgs.libfsm
    pkgs.redir
    pkgs.vim
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}