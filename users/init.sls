# vim: syntax=yaml ts=4 expandtab
# User data is obtained from pillar/users/*.sls, Do not edit this file.
{% for user, args in pillar.get('users', {}).items() %}
{{user}}:
    user.present:
        - fullname: {{args['fullname']}}
        - password: {{args['password']}}
        - home: /home/{{user}}
        - uid: {{args['uid']}}
        - shell: {{args['shell']}}
        - gid_from_name: true
        - groups: {{args['groups']}}
{% endfor %}