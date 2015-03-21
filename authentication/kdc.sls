# Creates a KDC Server
# TODO: ATR will finish this later, create krb db, create kdc slaves
krb5-kdc:
    pkg:
        - installed
/etc/kdc.conf:
    file.managed:
        - source: salt://authentication/files/kdc.conf
        - template: jinja

# vim: syntax=yaml ts=4 expandtab
