FROM fluent/fluentd:v1.3-debian

RUN  /usr/local/bin/fluent-gem install fluent-plugin-azure-loganalytics \
  && /usr/local/bin/fluent-gem install fluent-plugin-docker

RUN usermod -a -G root fluent


