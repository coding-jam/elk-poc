FROM sebp/elk

ADD conf/*.conf /etc/logstash/conf.d/

EXPOSE 5000