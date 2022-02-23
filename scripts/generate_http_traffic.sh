#!/bin/bash

while true
do
    CALLS_COUNT=$(($(od -An -N1 -i /dev/random) % 10))
    
    curl http://localhost:$1/[1-$CALLS_COUNT]

    sleep $2
done
