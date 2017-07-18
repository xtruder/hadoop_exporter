#!/bin/sh

go get github.com/prometheus/client_golang/prometheus
go get github.com/prometheus/log
CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags "-static"' namenode_exporter.go
CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags "-static"' resourcemanager_exporter.go
