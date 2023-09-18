# Explanation

> ** Important Note**
> On December 22, 2016, CoreOS announced that it will no longer maintain fleet; It will receive security updates and bug fixes until February of 2017, when it will be removed from CoreOS. The CoreOs recommends using Kubernetes for all clustering needs. Since CoreOS is deprecated the similar implementation can be done using kubernetes and kubectl. The folder minikube-redis does the same as expected to be done here which means conatins a redis deployment, service and cron job which load the loadthe dummy data every 5 minutes to redis.

- redis.service: It is a systemd unit file written in INI-style configuration format. It defines a service unit called "Redis Container" and contains configurations for managing a Docker container running Redis. This unit file will ensure that Redis runs on only one host in the cluster and restarts automatically. The Global=true option makes sure it runs on only one host.
- memchaced.service: It is a systemd unit file, similar to the one described previously, but it is tailored for managing a Docker container running Memcached. This unit file is similar to the Redis one and ensures that Memcached runs on only one host in the cluster and restarts automatically.
- loaddata.timer: It is a systemd timer unit file for Loading Dummy Data into Redis at predefined intervals.
- loaddata.service: It is a Service Unit File to Run a Script for Loading Data into Redis.
- script.sh: This will submit the unit files to Fleet and start the Redis, Memcached, and timer services. The timer will execute the data loading service every 5 minutes.