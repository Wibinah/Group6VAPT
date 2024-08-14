!/bin/bash
sudo service ssh start
LOCAL_PORT="8080"  # Local port to forward
REMOTE_PORT="21"   # Remote port blocked by UFW (e.g., FTP)
ssh -fN -L ${LOCAL_PORT}:localhost:${REMOTE_PORT} localhost
echo "Testing connection to blocked port 21 via SSH tunnel on port 8080..."
nc -vz localhost ${LOCAL_PORT}
if [ $? -eq 0 ]; then
    echo "Connection successful. Tunnel is working."
else
    echo "Connection failed. Check SSH tunnel."
fi
