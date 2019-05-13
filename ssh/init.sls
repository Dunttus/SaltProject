install_ssh:
  pkg.installed:
    - pkgs:
      - openssh-client
      - openssh-server
