#!/bin/bash
MAC_IP=$(ipconfig getifaddr en0)
sed "s/EXTERNAL_IP.*/EXTERNAL_IP=${MAC_IP}/g" .env.template > .env
docker-compose up
