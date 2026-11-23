{ pkgs, ... }:
{
  packages = [ pkgs.python3 ];
  git-hooks.hooks.check-greeting = {
    enable = true;
    name = "check-greeting";
    entry = "python3 check.py";
    pass_filenames = false;
    always_run = true;
  };
}
