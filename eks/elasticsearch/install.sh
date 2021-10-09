helm install elasticsearch -f values.yaml -n data --create-namespace bitnami/elasticsearch
# helm install elastic-operator elastic/eck-operator -n data --create-namespace

# kubectl port-forward --namespace data svc/elasticsearch-coordinator 9200:9200 &
# kubectl port-forward --namespace data svc/elasticsearch-kibana 5601:5601 &
# curl http://127.0.0.1:9200/
# curl http://elasticsearch-coordinator.data.svc.cluster.local:9200