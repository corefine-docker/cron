FROM centos:7
RUN \cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN yum install -y crontabs
RUN echo "crond start" > /usr/src/cron.sh
RUN ln -s /var/spool/cron/root /usr/src/jobs
RUN echo "touch /var/log/cron.log" >> /usr/src/cron.sh
RUN echo "tail -f /var/log/cron.log" >> /usr/src/cron.sh
RUN chmod +x /usr/src/cron.sh
