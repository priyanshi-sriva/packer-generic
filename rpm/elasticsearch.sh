sudo yum update
cd /home
mkdir elasticsearch kibana
sudo yum install net-tools vim wget java-1.8.0-openjdk -y
cd elasticsearch
sudo wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.7.1.rpm
sudo rpm --install elasticsearch-6.7.1.rpm
sudo chkconfig --add elasticsearch
sudo service elasticsearch start



