#!/bin/bash
set -euo pipefail

# replace your namespace
NAMESPACE="es"
ENVIRONMENT="dev"

PWD=$(pwd)

kubectl get namespace ${NAMESPACE} || kubectl create namespace ${NAMESPACE}
helm install efk ${PWD} -n ${NAMESPACE} --set global.environment=${ENVIRONMENT} --set global.namespace=${NAMESPACE}
