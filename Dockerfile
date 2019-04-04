FROM centos:7
RUN chmod +x /docker_entrypoint.sh
RUN yum install -y crontabs
RUN echo "crond start" > /usr/src/cron.sh
RUN ln -s /var/spool/cron/root /usr/src/jobs
RUN echo "touch /var/log/cron.log" >> /usr/src/cron.sh
RUN echo "tail -f /var/log/cron.log" >> /usr/src/cron.sh
RUN chmod +x /usr/src/cron.sh
ENTRYPOINT ["docker-entrypoint.sh"]
