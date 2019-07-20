#!/bin/bash
curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-bionic-td-agent3.sh | sh
sudo systemctl start td-agent.service
