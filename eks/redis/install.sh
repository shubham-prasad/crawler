 helm install redis-cluster -f values.yaml -n data --create-namespace bitnami/redis-cluster

 # export REDIS_PASSWORD=$(kubectl get secret --namespace "data" redis-cluster -o jsonpath="{.data.redis-password}" | base64 --decode)
 # kubectl port-forward --namespace data svc/redis-cluster 6379:6379 &
 # redis-cli -c -a $REDIS_PASSWORD