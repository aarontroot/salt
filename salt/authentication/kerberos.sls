# Installs Kerberos authentication
# Purges securid
kerberos:
    pkg:
        - latest
        - name: libpam-krb5
securid:
    pkg:
        - purged
        - name: libpam-radius-auth
/etc/krb5.conf:
    file.managed:
        - source: salt://authentication/templates/krb5.conf
        - template: jinja
/etc/pam_radius_auth.conf:
    file:
        - absent
/etc/pam.d/sshd:
    file.managed: 
        - source: salt://authentication/templates/sshd
        - template: jinja
        - context:
            auth: "kerberos"
/etc/pam.d/sudo:
    file.managed:
        - source: salt://authentication/templates/sudo
        - template: jinja
        - context:
            auth: "kerberos"

# vim: syntax=yaml ts=4 expandtab
