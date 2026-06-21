ARG ZBX_VERSION
FROM zabbix/zabbix-server-pgsql:${ZBX_VERSION:-latest}

# Install deps
USER root
RUN apk add --no-cache curl jq bash nmap sudo whois

# Allow the zabbix user to run a specific command WITHOUT a password prompt
RUN echo "zabbix ALL=(ALL) NOPASSWD: /usr/bin/nmap" \
    > /etc/sudoers.d/zabbix \
    && chmod 0440 /etc/sudoers.d/zabbix

# Switch back to zabbix user
USER zabbix