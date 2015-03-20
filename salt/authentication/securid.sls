# Sets authentication to securid.
# Installs krb5 for sudo authentication
kerberos:
    pkg:
        - latest
        - name: libpam-krb5
securid:
    pkg:
        - latest
        - name: libpam-radius-auth
/etc/krb5.conf:
    file.managed:
        - source: salt://authentication/templates/krb5.conf
        - template: jinja
/etc/pam_radius_auth.conf:
    file.managed:
        - source: salt://authentication/templates/radius.conf
        - template: jinja
/etc/pam.d/sshd:
    file.managed: 
        - source: salt://authentication/templates/sshd
        - template: jinja
        - context:
            auth: "securid"
/etc/pam.d/sudo:
    file.managed:
        - source: salt://authentication/templates/sudo
        - template: jinja
        - context:
            auth: "securid"

# vim: syntax=yaml ts=4 expandtab
