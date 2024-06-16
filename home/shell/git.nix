{ config, ... }:
{
programs.git = {
    enable = true;
    userName = "...";
    userEmail = "...";

  };
  programs.git-credential-oauth.enable = true;
}
