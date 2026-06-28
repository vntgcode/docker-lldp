FROM debian:trixie-slim

# Install lldpd package
RUN apt-get update && \
 apt-get install -y lldpd && \
 apt clean && \
 rm -rf /var/lib/apt/lists/*

# start lldpd
ENTRYPOINT ["lldpd", "-dd", "-l"]