FROM neo4j:5.13.0-community
RUN echo "dbms.security.procedures.unrestricted=apoc.trigger.*,apoc.meta.*" >> /var/lib/neo4j/conf/neo4j.conf
RUN mkdir /plugins/
ADD --chown=neo4j:neo4j https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/5.13.0/apoc-5.13.0-extended.jar /plugins/
#ADD https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/4.4.0.23/apoc-4.4.0.23-all.jar /plugins/apoc.jar
#dbms.security.procedures.unrestricted=apoc.*

