install_mariadb:
  pkg.installed:
    - pkgs:
      - mariadb-client
      - mariadb-server
