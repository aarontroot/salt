# State to enforce users via pillar
# By: atree@dragonrealm.net

# pillar/top.sls
#<environment>:
#    <targets>:
#        - users([.|/]group)

# pillar/users/init.sls (or groupname)
#users:
#  <username>:
#    fullname: <full name>
#    password: <encrypted password hash>
#    uid:      <numeric uid>
#    shell:    <shell>
#    groups:
#      - <groups>

{% for user, args in pillar.get('users', {}).items() %}
{{user}}:
    user:
      - present
      - fullname: {{args['fullname']}}
      - password: {{args['password']}}
      - home: /home/{{user}}
      - uid: {{args['uid']}}
      - shell: {{args['shell']}}
      - gid_from_name: true
      - groups: {{args['groups']}}
{% endfor %}
