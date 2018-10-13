#!/bin/sh

docker-compose exec mqtt mosquitto_sub -t '#' -d
