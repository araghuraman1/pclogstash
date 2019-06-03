FROM docker.elastic.co/logstash/logstash:7.1.1
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
WORKDIR /usr/share/logstash
RUN bin/logstash-plugin install logstash-output-amazon_es
#EXPOSE 5044
#EXPOSE 9600
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
