cassandra
    pkgrepo.managed:
        - humanname: Apache Cassandra Repo
        - name: deb http://www.apache.org/dist/cassandra/debian 21x main
        - file: /etc/apt/sources.list.d/apache-cassandra-21.list
        - keyid: F758CE318D77295D
        - keyserver: pgp.mit.edu
        - require:
            - pkg: software-properties

