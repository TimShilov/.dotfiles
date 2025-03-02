{
  pkgs,
  ...
}:
{
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    asdf-vm
    ast-grep
    bkt # Bash caching
    fac # Git merge conflict resolution CLI
    glow # Markdown reader
    fd
    fswatch
    gnupg
    go
    grizzly
    jira-cli-go
    imagemagick # For converting images (required by Snacks.image nvim plugin)
    kubectx
    luarocks
    mysql84
    nodePackages.cspell
    nixfmt-rfc-style
    taskopen
    vcal
    tasksh
    taskwarrior-tui
    tlrc
    tokei
    temporal-cli
    tree
    watchexec
    wget
    yq-go

    nerd-fonts.jetbrains-mono

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
}
