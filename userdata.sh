#!bin/bash
sudo dnf install docker -y
sudo systemctl enable --now docker
sudo docker pull omerteomim/myapp:latest
sudo docker run -d -p 80:5000 omerteomim/myapp:latest