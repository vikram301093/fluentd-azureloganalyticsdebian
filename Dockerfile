FROM fluent/fluentd:v1.3-debian

RUN  /usr/local/bin/fluent-gem install gelf  \
  &&  /usr/local/bin/fluent-gem install fluent-plugin-azure-loganalytics
  
WORKDIR /fluentd

RUN usermod -a -G root fluent
