FROM ministryofjustice/ruby:2.1.5-webapp-onbuild

# runit needs inittab
RUN touch /etc/inittab

# runit setup for the application
RUN mkdir -p /etc/service/money-to-prisoners
COPY ./docker/runit/runit-service /etc/service/money-to-prisoners/run
RUN chmod +x /etc/service/money-to-prisoners/run

ENV UNICORN_PORT 3000

EXPOSE $UNICORN_PORT

CMD ["/usr/bin/runsvdir", "-P", "/etc/service"]
