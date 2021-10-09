eksctl create cluster \
    --name conductor \
    --tags "Owner=shubham,Env=dev" \
    --region "us-east-1" \
    --zones "us-east-1a,us-east-1b,us-east-1c" \
    --version "1.21" \
    --with-oidc \
    --spot \
    --instance-types "m3.xlarge,m4.xlarge" \
    --nodes 3 \
    --instance-name "conductor-k8-node" \
    --full-ecr-access \
    --alb-ingress-access

eksctl create iamidentitymapping \
    --cluster conductor \
    --arn arn:aws:iam::993493008830:role/OktaSSO_Compute \
    --group system:masters \
    --username admin \
    --region us-east-1

aws eks update-kubeconfig --name conductor