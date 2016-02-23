export AICDeploy=true
export AICHostIP=server
export AICHostPort=7099
export AICToken=$token
export AICRetryDelay=5000

unzip client.zip -d client/

chown -R runner:runner client

cd client
sudo -E -u runner -s ./flows.out

echo 'Client terminated.'
