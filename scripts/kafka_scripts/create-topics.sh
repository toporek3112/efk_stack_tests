echo "Waiting for Kafka to come online..."

cub kafka-ready -b broker:19092 1 20

kafka-topics \
  --bootstrap-server broker:19092 \
  --topic http-server-log-messages \
  --replication-factor 3 \
  --partitions 3 \
  --config "cleanup.policy=compact"  \
  --config "min.cleanable.dirty.ratio=0.01"  \
  --config "segment.ms=100"  \
  --config "delete.retention.ms=100"  \
  --create

kafka-topics \
  --bootstrap-server broker:19092 \
  --topic python-app-log-messages \
  --replication-factor 3 \
  --partitions 3 \
  --config "cleanup.policy=compact"  \
  --config "min.cleanable.dirty.ratio=0.01"  \
  --config "segment.ms=100"  \
  --config "delete.retention.ms=100"  \
  --create

sleep infinity
