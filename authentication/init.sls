# This is to enforce default system authentication
kerberos:
    pkg.purged:
        - pkgs:
            - libpam_krb5
            - krb5-config
            - krb5-locales
securid:
    pkg.purged:
        - pkgs:
            - libpam-radius-auth
/etc/pam_radius_auth.conf:
    file:
        - absent
/etc/pam.d/sshd:
    file.managed: 
        - source: salt://authentication/templates/sshd
        - template: jinja
        - context:
            auth: "default"
/etc/pam.d/sudo:
    file.managed:
        - source: salt://authentication/templates/sudo
        - template: jinja
        - context:
            auth: "default"

# vim: syntax=yaml ts=4 expandtab
