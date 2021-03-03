#!/bin/bash

##
## ssh_tunnel_uvahva.sh
##
## Setup a SSH tunnel to the stepping stone server of UVA HVA to the GUI of the Splunk servers.
##

echo
echo "****************************************************"
echo 
echo "Setup SSH tunnels for UVAHVA remote connections."
echo
echo "Connections made are:"
echo " - https://localhost:8010 > 10.1.1.10:8000 CM"
echo " - https://localhost:8020 > 10.1.2.10:8000 SH UVA"
echo " - https://localhost:8030 > 10.1.3.10:8000 SH HVA"
echo " - https://localhost:8040 > 10.1.4.10:8010 HF1"
echo " - https://localhost:8050 > 10.1.5.10:8000 HF2"
echo " - https://localhost:8060 > 10.1.6.10:8000 DS"
echo 
echo "Indexers have a random IP address"
echo 
echo "****************************************************"
echo "Running ${0}"
echo "****************************************************"

ssh -XT -i ~/.ssh/id_rsa \
-L 127.0.0.1:8010:10.1.1.10:8000 \
-L 127.0.0.1:8020:10.1.2.10:8000 \
-L 127.0.0.1:8030:10.1.3.10:8000 \
-L 127.0.0.1:8040:10.1.4.10:8010 \
-L 127.0.0.1:8050:10.1.5.10:8000 \
-L 127.0.0.1:8060:10.1.6.10:8000 \
perry.vandenhondel@18.198.85.32

echo "Script completed."