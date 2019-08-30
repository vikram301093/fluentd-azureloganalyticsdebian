FROM fluent/fluentd:v1.7-debian-1

# Use root account to use apt
#USER root

# below RUN includes plugin as examples elasticsearch is not required
# you may customize including plugins as you wish
RUN sudo gem install fluent-plugin-azure-loganalytics \
 && sudo gem install fluent-plugin-docker  \
 
RUN usermod -a -G root fluent 

#USER fluent
