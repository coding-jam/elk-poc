FROM sebp/elk

ADD conf/*.conf /etc/logstash/conf.d/
ADD conf/pipelines.yml /opt/logstash/config
ADD init/logstash /etc/init.d

EXPOSE 5000