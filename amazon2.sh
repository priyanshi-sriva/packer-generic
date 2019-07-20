#!/bin/bash
cd /tmp
sudo tar -xvf amazon2.tar.gz
cd amazon2
sudo bash elasticsearch.sh
sudo bash kibana.sh
sudo bash fluentd.sh