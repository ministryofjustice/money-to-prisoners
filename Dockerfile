FROM ministryofjustice/ruby:2.1.5-webapp-onbuild

# runit needs inittab
RUN touch /etc/inittab

# runit setup for the application
RUN mkdir -p /etc/service/prison-visits
COPY ./docker/runit/runit-service /etc/service/prison-visits/run
RUN chmod +x /etc/service/prison-visits/run

ENV UNICORN_PORT 3000

EXPOSE $UNICORN_PORT

CMD ["/usr/bin/runsvdir", "-P", "/etc/service"]
