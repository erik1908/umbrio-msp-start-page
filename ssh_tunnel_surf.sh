#!/bin/bash

##
## ssh_tunnel_surf.sh
##
## Setup a SSH tunnel to the stepping stone server of Surf SOC to the GUI of the Splunk servers.
##

echo
echo "****************************************************"
echo 
echo "Setup SSH tunnels for SURF remote connections."
echo
echo "Connections made are:"
echo " - https://localhost:8010 > 10.0.6.10:8000 SURF DS 1"
echo " - https://localhost:8020 > 10.0.2.11:8000 SURF SH 1"
echo 
echo "Indexers have a random IP address"
echo 
echo "****************************************************"
echo "Running ${0}"
echo "****************************************************"

ssh -XT -i ~/.ssh/id_rsa \
    -L 127.0.0.1:8020:10.0.2.11:8000 \
    -L 127.0.0.1:8010:10.0.6.10:8000 \
    perry.vandenhondel@18.198.108.78

echo "Script completed."