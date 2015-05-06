#!/bin/bash

set -e
set -x

godep go build -a github.com/newrelic-forks/cadvisor

docker build -t google/cadvisor:canary .
