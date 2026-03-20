#!/bin/bash
# Sets environment-specific variables for Terraform based on the project directory.
# Secret values are mounted as env vars by the Helm chart (environmentSecrets).

ENV="${REPO_REL_DIR##*/}"
echo "Atlantis environment: ${ENV}"

ENV_UPPER=$(echo "${ENV}" | tr '[:lower:]' '[:upper:]')
AUTH0_CLIENT_ID=$(eval echo "\$${ENV_UPPER}_AUTH0_CLIENT_ID")
export AUTH0_CLIENT_ID
