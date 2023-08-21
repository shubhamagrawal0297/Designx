sudo apt-get install -y adduser libfontconfig1 
wget https://dl.grafana.com/enterprise/release/grafana-enterprise_9.4.7_amd64.deb
sudo dpkg -i grafana-enterprise_9.4.7_amd64.deb
systemctl enable --now grafana-server
sudo systemctl restart grafana-server
