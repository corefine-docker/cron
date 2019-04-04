# error readme.md

# docker-cron
use docker-cron

edit dockerfile
```
FROM fine/cron
...
RUN echo "* * * * * /usr/src/job.sh" >> /usr/src/jobs
...
```
