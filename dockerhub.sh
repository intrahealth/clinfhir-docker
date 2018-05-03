#!/usr/bin/env bash
set -ex

docker rmi intrahealth/clinfhir || true
docker build --no-cache -f Dockerfile -t intrahealth/clinfhir .
docker push intrahealth/clinfhir