#!/bin/bash
export COMPOSE_PROJECT_NAME=twitter-djavue_${CI_COMMIT_SHA}
docker-compose -f docker/compose/test.yml run twitter-djavue unittests.sh
exitcode=$?
docker-compose -f docker/compose/test.yml down
exit $exitcode
