{ pkgs, ... }:
{
  # `hello` exists only inside this development environment, so the commit hook
  # fails when a commit is made outside it and passes when made through it.
  packages = [ pkgs.hello ];
  git-hooks.hooks.needs-dev-shell = {
    enable = true;
    name = "needs-dev-shell";
    entry = "hello";
    pass_filenames = false;
    always_run = true;
  };
}
