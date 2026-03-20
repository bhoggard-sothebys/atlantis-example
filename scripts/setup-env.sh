#!/bin/bash
# Reads environment-specific secrets from the atlantis K8s secret
# and exports them as environment variables for Terraform.

ENV="${REPO_REL_DIR##*/}"
echo "Atlantis environment: ${ENV}"

AUTH0_CLIENT_ID=$(kubectl get secret atlantis -n default -o jsonpath="{.data.${ENV}-auth0-client-id}" | base64 -d)
export AUTH0_CLIENT_ID
