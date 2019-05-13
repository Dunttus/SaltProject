/etc/skel/.config/xfce4/terminal/terminalrc:
  file.managed:
    - makedirs: True
    - source: salt://terminal/config/default-terminalrc
