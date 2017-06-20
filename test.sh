sudo yum install docker git nodejs npm  mongodb-org -y
sudo systemctl start docker 
sudo systemctl start mongod
npm install
node server.js >> file.txt 2>&1 &
sleep 5
wget -O - http://localhost:8080 
exit_status=$?
ps -ef|grep -i server.js|grep -v grep|awk '{ print $2 }'|xargs kill -9
rm file.txt
exit $exit_status
# This is test 
