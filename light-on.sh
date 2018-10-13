#!/bin/sh

docker-compose exec mqtt mosquitto_pub -t 'light/my-light/state' -m 'ON'
