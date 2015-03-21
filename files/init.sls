# vim: syntax=yaml ts=4 expandtab
/etc/motd:
  file:
    - managed
    - source:   salt://files/motd
    - template: jinja
    - user:     root
    - group:    root
    - mode:     644
