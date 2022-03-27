FROM telegraf:1.22.0

RUN echo "deb http://deb.debian.org/debian buster main non-free" >> /etc/apt/sources.list

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp-mibs-downloader && \
    rm -rf /var/lib/apt/lists/*

COPY mibs/* /usr/share/snmp/mibs/