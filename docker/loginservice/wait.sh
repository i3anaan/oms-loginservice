#!/bin/ash


echo "Waiting for bootstrap"

while ! nc -z localhost 4000; do   
  sleep 0.1
done

echo "Bootstrap finished"

