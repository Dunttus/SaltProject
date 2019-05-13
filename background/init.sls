/usr/share/backgrounds/pilvet.jpg:
  file.managed:
    - source: salt://background/img/pilvet.jpg

/etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml:
  file.managed:
    - makedirs: True
    - source: salt://background/config/default-xfce4-desktop.xml
