#!/usr/bin/env bash
set -e

if [ "$MODE" = 'CLUSTER' ]; then
    echo "Running cluster mode"
    su -c '/home/spark/spark-2.4.0-bin-hadoop2.7/sbin/start-slave.sh spark://master:7077' - spark
else
    echo "Running master mode"
    su -c '/home/spark/spark-2.4.0-bin-hadoop2.7/sbin/start-master.sh' - spark
fi

exec /usr/sbin/sshd -D