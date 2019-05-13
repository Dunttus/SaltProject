install_curl:
  pkg.installed:
    - pkgs:
      - curl

/etc/pihole/setupVars.conf:
  file.managed:
    - makedirs: True
    - source: salt://pihole/config/default-setupVars.conf

/etc/pihole/adlist.list:
  file.managed:
    - source: salt://pihole/config/default-adlists.list

pihole_install:
  cmd.run:
    - name: curl -L https://install.pi-hole.net | bash /dev/stdin --unattended
    - unless: "sudo pihole status | grep 'DNS service is running'"
