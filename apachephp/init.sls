apache2php:
  pkg.installed:
    - pkgs:
      - libapache2-mod-php

/etc/apache2/mods-available/php7.2.conf:
  file.managed:
    - source: salt://apachephp/config/default-php7.2.conf

/etc/skel/public_html/index.php:
  file.managed:
    - makedirs: True
    - source: salt://apachephp/config/default-index.php

apache2phpservices:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-available/php7.2.conf
