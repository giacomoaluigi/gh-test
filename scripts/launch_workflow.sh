#!/bin/bash -e
# shellcheck disable=SC2207


printf " ------------------------------------------------------------------------------------\n"
printf "  🧹 test  🤖\n"
printf " ------------------------------------------------------------------------------------\n\n"
printf "\n"


gh workflow run test-actions.yml -r "main" -F "workflow_subject=my-first-subject"
