#!/bin/bash
echo 8096 > /writable-proc/sys/net/core/somaxconn
echo StrictHostKeyChecking no >> /root/.ssh/config
pm2-docker start /web/config.json