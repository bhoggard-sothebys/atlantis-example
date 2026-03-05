# Atlantis Helm setup

## Setup

The following environment variables must be defined:

- ATLANTIS_TOKEN
- ATLANTIS_WEBHOOK_SECRET

Then run

```bash
helm upgrade --install atlantis runatlantis/atlantis \
  --kubeconfig "$HOME/kube_config_cluster.yml" \
  -f values.yaml \
  --set github.user="bhoggard-sothebys" \
  --set github.token="$ATLANTIS_TOKEN" \
  --set github.secret="$ATLANTIS_WEBHOOK_SECRET"
```