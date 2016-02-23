export AICDeploy=true
export AICHostIP=server
export AICHostPort=7099
export AICToken=$token
export AICRetryDelay=5000

unzip client.zip -d client/

chown -R runner:runner client

cd client/src
sudo -E -u runner -s java -classpath .:../:../libs/gson-2.3.1.jar client.Main

echo 'Client terminated.'
