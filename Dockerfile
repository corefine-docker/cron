FROM centos:7
WORKDIR /usr/src
RUN yum install -y crontabs
RUN echo "crond start" > /usr/src/cron.sh
RUN echo "$JOB" > /var/spool/cron/root
RUN echo "touch /var/log/cron.log" >> /usr/src/cron.sh
RUN echo "tail -f /var/log/cron.log" >> /usr/src/cron.sh
RUN chmod +x /usr/src/cron.sh
CMD ["bash", "/usr/src/cron.sh"]
