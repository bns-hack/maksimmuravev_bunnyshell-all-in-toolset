#!/bin/sh

wget -O envsubst https://github.com/a8m/envsubst/releases/download/v1.4.2/envsubst-Linux-x86_64
chmod +x envsubst

export PUSHGATEWAY_URL=${PUSHGATEWAY_URL%?}
./envsubst < raw_config.yaml > /prometheus/prometheus.yml

/bin/prometheus
