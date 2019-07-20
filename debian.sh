#!/bin/bash
cd /tmp
sudo tar -xvf debian.tar.gz
cd debian
sudo bash elasticsearch.sh
sudo bash kibana.sh
sudo bash fluentd.sh
