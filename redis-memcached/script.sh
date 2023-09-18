fleetctl submit redis.service
fleetctl submit memcached.service
fleetctl submit load_data.timer
fleetctl submit load_data.service

fleetctl start redis.service
fleetctl start memcached.service
fleetctl start load_data.timer
