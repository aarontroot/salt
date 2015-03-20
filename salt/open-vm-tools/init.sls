# vim: syntax=yaml ts=4 expandtab
nagios:
  pkg.latest:
    - pkgs:
      - nagios3
      - nagios-nrpe-plugin
/etc/nagios3/htpasswd.users:
  file.managed:
    - source: salt://nagios/files/htpasswd.users
/etc/nagios3/cgi.cfg:
  file.managed:
    - source: salt://nagios/templates/cgi.cfg.sls
    - template: jinja
/etc/nagios3/conf.d/hosts.cfg:
  file.managed:
    - source: salt://nagios/templates/hosts.cfg.sls
    - template: jinja
