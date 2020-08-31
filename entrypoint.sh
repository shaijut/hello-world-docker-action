#!/bin/sh -l

RUN chmod +x entrypoint.sh

echo "Hello $1 from docker action"
time=$(date)
echo "::set-output name=time::$time from docker action"