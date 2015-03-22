# vim: syntax=yaml ts=4 expandtab
ssh:
    pkg:
        - latest
        - openssh-server

/etc/ssh/sshd_config:
  file:
    - managed
    - source:   salt://ssh/sshd_config
    - template: jinja
    - user:     root
    - group:    root
    - mode:     644
