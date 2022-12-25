FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install cron sqlite3 rsyslog

WORKDIR /app

ADD docker-backup/backup.sh /app

ADD docker-backup/cronjob /etc/cron.d/

RUN chmod +x /app/*

RUN crontab /etc/cron.d/cronjob

CMD ["cron", "-f"]