# vim: syntax=yaml ts=4 expandtab
ossec-hids/agent:
    pkgrepo:
        - managed
        - humanname: OSSEC-HIDS Repository
        - name: deb http://ossec.alienvault.com/repos/apt/ubuntu trusty main
        - dist: trusty
        - file: /etc/apt/sources.list.d/alienvault.list
        - key_url: http://ossec.alienvault.com/repos/apt/conf/ossec-key.gpg.key
        - require_in:
            - pkg: ossec-hids-agent

    pkg:
        - latest
        - name: ossec-hids-agent
        - refresh: True
