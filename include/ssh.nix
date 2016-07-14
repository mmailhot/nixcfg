{ config, pks, ...}:

{
  programs.ssh.extraConfig = ''
    Host uwlinux
      User mnmailho
      HostName linux.student.cs.uwaterloo.ca
    Host hfcs
      User mnmailho
      HostName high-fructose-corn-syrup.csclub.uwaterloo.ca
    Host nullsleep
      User mnmailho
      HostName nullsleep.csclub.uwaterloo.ca
  '';
}