FROM sebp/elk:623

ADD conf/*.conf /etc/logstash/conf.d/
ADD conf/patterns /etc/logstash/conf.d/patterns
ADD conf/pipelines.yml /opt/logstash/config
ADD init/logstash /etc/init.d

EXPOSE 5000 5045