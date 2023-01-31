Steps to configure Prometheus Server
1. Launch an EC2 instance.
2. Run the following script install_promethus.sh
3. you can able to navigate to prometheus on port 9090.

Steps to integrate target machines to prometheus using node-exporter

1. Install node-exporter on target machines using the following script install_node-exporter.sh
2. we can validate it on port 9100/metrics.

To integrate the target machines to prometheus server whitelist the target machines IP addresses in prometheus.yaml file. Located /usr/local/prometheus

Steps to install Grafana

1. Install grafana on prometheus server using the script grafana.sh
2. we can verfiy it on port 3000.

Steps to Integrate Grafana to prometheus

1. In Grafana add data source as Prometheus and specify the localhost url.
2. Import the grafana dashboards from Grafana official website.
3. select the specified job and you are able to see the metrics in a visualized format.

Happy Learning😊😊😊😊

