FROM scratch

EXPOSE 9070
EXPOSE 9088

ADD resourcemanager_exporter /resourcemanager_exporter
ADD namenode_exporter /namenode_exporter

ENTRYPOINT ["/resourcemanager_exporter"]
