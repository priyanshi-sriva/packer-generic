#!/bin/bash
cd /tmp
sudo tar -xvf amazon1.tar.gz
cd amazon1
sudo bash elasticsearch.sh
sudo bash kibana.sh
sudo bash fluentd.sh