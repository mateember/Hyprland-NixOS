{ config, ... }:
{
programs.git = {
    enable = true;
    userName = "...";
    userEmail = "...";
    extraConfig = {
      credential.helper = "oauth";
    };


  };
}
