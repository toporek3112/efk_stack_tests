FROM fluent/fluentd:v1.6-debian-1
USER root
ENV FLUENT_UID=0
RUN mkdir /buffer
RUN ["gem", "install", "fluent-plugin-kafka", "--no-document", "--version", "0.12.1"]