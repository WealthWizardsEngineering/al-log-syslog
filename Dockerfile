FROM debian:stretch-slim

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y curl

RUN curl -LO https://scc.alertlogic.net/software/al-log-syslog_LATEST_amd64.deb

RUN apt-get purge -y --auto-remove curl; \
    rm -rf /var/lib/apt/lists/*

RUN dpkg -i  al-log-syslog_LATEST_amd64.deb
RUN rm al-log-syslog_LATEST_amd64.deb

ADD al-log-syslog.sh /al-log-syslog.sh

CMD ["/al-log-syslog.sh"]
