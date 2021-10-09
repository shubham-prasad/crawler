export DASHBOARD_VERSION="v2.0.0"

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/${DASHBOARD_VERSION}/aio/deploy/recommended.yaml

# kubectl proxy --port=8090 --address=0.0.0.0 --disable-filter=true &

# dashboard url
# http://localhost:8090/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/login

# Get token
# aws eks get-token --cluster-name conductor --region us-east-1 | jq ".status.token"