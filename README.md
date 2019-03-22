# Spark Install Guide

## Quick Start
```text
# docker run -d -P --name spark zwidny/spark:2.4
b393e5b144faf130d50c01fb97eca470a7ab34085de96033d581f609515de7cc

# docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' spark
172.17.0.3

# ssh root@172.17.0.3

```