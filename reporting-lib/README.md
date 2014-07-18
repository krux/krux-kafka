krux-kafka custom reporting jar
===============================

Built from https://github.com/krux/java-kafka-metrics-reporter

The jar pointed to by the kafka-metrics-reporter.jar symlink will
be copied to the kafka libs dir by package.sh, and relies on the
following config in the kafka server's config file to work:

```
# additional logger info
kafka.metrics.reporters=com.krux.metrics.reporter.KafkaGraphiteMetricsReporter
kafka.graphite.metrics.reporter.enabled=true
kafka.graphite.metrics.host=localhost
kafka.graphite.metrics.port=2003

#full tree prefix
kafka.graphite.metrics.env=prod

#if true, log all reported metrics to stdout. Default is false.
kafka.graphite.metrics.log.debug=true
```





