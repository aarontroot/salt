# vim: syntax=yaml ts=4 expandtab
/home/atree/cleanup.sh:
  file:
    - managed
    - source:  salt://files/cleanup.sh
    - user:    atree
    - group:   atree
    - mode:    755
/etc/motd:
  file:
    - managed
    - source:   salt://files/motd
    - template: jinja
    - user:     root
    - group:    root
    - mode:     644
