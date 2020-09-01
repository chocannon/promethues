#!/bin/bash
basedir=$(cd `dirname $0`;pwd)

docker stop alertmanager
docker rm alertmanager
docker run -d --name alertmanager -p 9093:9093 -v /Users/chocannon/Documents/Workspace/containers/shells/:/etc/alertmanager/ prom/alertmanager --config.file=/etc/alertmanager/alertmanager.yml