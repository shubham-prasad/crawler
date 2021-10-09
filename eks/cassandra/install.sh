helm repo add k8ssandra https://helm.k8ssandra.io

helm repo update

helm install cass-dev -f values.yaml -n data --create-namespace k8ssandra/k8ssandra

# kubectl port-forward --namespace data svc/cass-dev-dc1-service 9042:9042 &
# kubectl port-forward --namespace data svc/cass-dev-dc1-stargate-service 8081:8081 &
# kubectl port-forward --namespace data svc/cass-dev-dc1-stargate-service 8082:8082 &

# kubectl get secret cass-dev-superuser -n data -o jsonpath="{.data.password}" | base64 --decode ; echo;
# ~/cqlsh-5.1.20/bin/cqlsh -u cass-dev-superuser -p xeCUpBxPp5GfQfJVWE0d

# select data_center, cluster_name, cql_version, host_id, rack, release_version, schema_version from system.local;
# select data_center, host_id, rack, release_version, schema_version from system.peers;