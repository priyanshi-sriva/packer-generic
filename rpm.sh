#!/bin/bash
cd /tmp
sudo tar -xvf rpm.tar.gz
cd rpm
sudo bash elasticsearch.sh
sudo bash kibana.sh
sudo bash fluentd.sh