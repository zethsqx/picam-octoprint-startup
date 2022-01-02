#! /bin/bash

chmod +x picam-octoprint-startup/check-network.sh
echo '*/30 * * * * root /picam-octoprint-startup/check-network.sh' > /etc/cron.d/root
python3 picam-octoprint-startup/picam.py >> py.log
