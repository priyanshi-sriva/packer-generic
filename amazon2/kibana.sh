cd ..
cd kibana
sudo wget https://artifacts.elastic.co/downloads/kibana/kibana-6.7.1-x86_64.rpm
sudo rpm --install kibana-6.7.1-x86_64.rpm
sudo chkconfig --add kibana
sudo service kibana start
