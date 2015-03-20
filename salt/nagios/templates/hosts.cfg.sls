# vim: syntax=yaml ts=4 expandtab
{% for host, args in pillar.get('hosts', {}).items() %}
define host {
  host_name {{host}}
  address   {{ args['address']}}
  }
{% endfor %}
