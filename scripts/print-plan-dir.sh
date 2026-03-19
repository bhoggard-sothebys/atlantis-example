#!/bin/bash
# Prints the directory Atlantis is using for the plan step.
# Atlantis sets several environment variables during workflow steps:
#   DIR - absolute path to the directory where Atlantis runs the plan
#   See https://www.runatlantis.io/docs/custom-workflows.html#reference

echo "Atlantis plan directory: ${DIR}"

