#!/usr/bin/env bash
set -ex

docker rmi intrahealth/clinfhir-docker || true
docker build --no-cache -f Dockerfile -t intrahealth/clinfhir-docker .
docker push intrahealth/clinfhir-docker