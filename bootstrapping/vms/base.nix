{ config, ... }:

{
  users.users."root".openssh.authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDFPly2MYEeh4FtFtftOa0qasGW4VNIzYv/ZzheQ/dFs martin@fedora" ];
  
  services.openssh = {
    enable = true;
    ports = [ 22 ];
    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "yes";
    };
  };
}
