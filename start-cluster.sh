# this script starts the cluster on microk8s
# it assumes that the cluster is already installed
# and that the user has access to the cluster
# it also assumes that the user has access to the
# docker registry

# start the cluster
microk8s start

# enable the registry
microk8s enable registry

# enable the dns
microk8s enable dns

# enable the dashboard
microk8s enable dashboard

# enable the storage
microk8s enable storage

# enable the ingress
microk8s enable ingress

# enable the metrics server
microk8s enable metrics-server

# enable the helm
microk8s enable helm

# apply the prometheus operator
kubectl apply -f https://raw.githubusercontent.com/coreos/prometheus-operator/master/bundle.yaml


# apply the grafana config
microk8s kubectl apply -f services/grafana/k8s/grafana-claim0-persistentvolumeclaim.yaml
microk8s kubectl apply -f services/grafana/k8s/grafana-claim1-persistentvolumeclaim.yaml

# apply the grafana service
microk8s kubectl apply -f services/grafana/k8s/grafana-service.yaml

# apply the grafana ingress
microk8s kubectl apply -f ingress/grafana-ingress.yaml

# apply the grafana deployment
microk8s kubectl apply -f grafana-deployment.yaml

# apply the influxdb config
kubectl apply -f influxdb-config.yaml

# apply the influxdb service
kubectl apply -f influxdb-service.yaml

# apply the influxdb ingress
kubectl apply -f influxdb-ingress.yaml

# apply the influxdb deployment
kubectl apply -f influxdb-deployment.yaml

