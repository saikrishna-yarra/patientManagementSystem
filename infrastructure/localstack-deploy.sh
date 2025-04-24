#!/bin/bash

set -e # stops the script if any command fails

aws --endpoint-url=http://localhost:4566 cloudformation deploy \
    --stack-name patient-management \
    --template-file "./cdk.out/localStack.template.json"


aws --endpoint-url=http://localhost:4566 elbv2 describe-load-balancers \
    --query "LoadBalancer[0].DNSName" --output text