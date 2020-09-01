#!/bin/bash
basedir=$(cd `dirname $0`;pwd)

docker stop prometheus
docker rm prometheus
docker run -d --name prometheus  -p 9090:9090 -v /Users/chocannon/Documents/Workspace/containers/shells/:/etc/prometheus/ prom/prometheus --config.file=/etc/prometheus/prometheus.yml --web.enable-admin-api
