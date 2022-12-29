# ai4iot

a monitoring solution for iot devices

This is a Kubernetes cluster that includes the following services:

- Grafana: A powerful open source dashboard and visualization platform
- InfluxDB: A time series database designed to handle high write and query loads
- Mosquitto: An open source MQTT broker that implements the MQTT protocol
- Node-RED: A visual programming tool for wiring together hardware devices, APIs, and online services
- Telegraf: An open source agent for collecting, processing, and reporting metrics

## Prerequisites

Before you can deploy this application, you will need to have the following software installed:

- Kubernetes
- kubectl

## Deployment

To deploy this application, follow these steps:

1. Clone the repository:

```bash
git clone https://github.com/<user>/<repository>.git && cd <repository>
```

2. Deploy the application:

```bash
kubectl apply -f services/
kubectl apply -f ingresses/
```

## Configuration

You can configure the services in this application by editing the configuration files in the services directory.

## Backup and Restore

 backup the data for this application, you can use the scripts in the backups directory.

To restore from a backup, follow these steps:

1. Copy the backup files to the backups directory.

2. Run the restore script:

```bash
./backups/restore.sh
```

## Maintenance

To perform maintenance on this application, you can use the scripts in the maintenance directory.

## Troubleshooting

if you run into any issues with this application, you can check the logs for each service using the following commands:

```bash
kubectl logs -f <service-name>-<pod-name>
```

Replace `<service-name>` and `<pod-name>` with the name of the service and the name of the pod, respectively.

## Uninstall

To uninstall this application, follow these steps:

1. Delete the application:

```bash
kubectl delete -f ingresses/
kubectl delete -f services/
```

2. Delete the persistent volumes:

```bash
kubectl delete pvc -l app=ai4iot
```

## Contributions

We welcome contributions to this project! If you have an idea for a new feature or have found a bug, please open an issue or submit a pull request.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for more information.