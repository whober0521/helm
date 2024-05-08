# helm upgrade [RELEASE] [CHART] [flags]
#   -i, --install                                    if a release by this name doesn't already exist, run an install
#   -f, --values strings                             specify values in a YAML file or a URL (can specify multiple)
#   -n, --namespace string                namespace scope for this request
#       --create-namespace                           if --install is set, create the release namespace if not present
#       --wait                                       if set, will wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment, StatefulSet, or ReplicaSet are in a ready state before marking the release as successful. It will wait for as long as --timeout
#       --reset-values                               when upgrading, reset the values to the ones built into the chart
#       --timeout duration                           time to wait for any individual Kubernetes operation (like Jobs for hooks) (default 5m0s)
#       --debug                           enable verbose output
RELEASE="testrelease"
CHART="charts"

helm upgrade ${RELEASE} ${CHART} \
    --install \
    --namespace "test" \
    --create-namespace \
    --wait --reset-values --timeout 5m0s --debug

helm get all testrelease -n test