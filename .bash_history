sudo yum update -y
sudo yum upgrade -y
sudo yum install -y docker
sudo systemctl enable docker
sudo systemctl start docker
docker --version
sudo usermod -aG docker $USER
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
sudo yum install -y git
git --version
ll
yun install tree
yum install tree
sudo yum install tree
tree
git clone https://github.com/ValentinIA/TFG.git
tree
nano TFG/back-app/Dockerfile
git clone https://github.com/KevinML18/front-app.git
ll
tree
nano TFG/back-app/Dockerfile
tree
mkdir nginx
nano nginx/nginx.conf
tree
cd nginx/
mkdir certs
tree
cd ..
openssl req -x509 -nodes -days 365 -newkey rsa:2048   -keyout nginx/certs/selfsigned.key   -out nginx/certs/selfsigned.crt   -subj "/C=US/ST=State/L=City/O=Organization/OU=Department/CN=localhost"
tree
mv TFG/back-app/ .
tree
rm -r TFG/
tree
cd TFG/
ll
ll -a
rm -r TFG/
cd ..
rm -r TFG/
tree
mv back-app/ TFG
tree
nano TFG/Dockerfile 
tree
nano TFG/Dockerfile 
nano docker-compose.yaml
ll
nano docker-compose.yaml
docker-compose up --build -d
sudo docker-compose up --build -d
docker ps
sudo docker ps
sudo docker ps -a
sudo docker logs nginx_proxy
sudo docker ps
nano nginx/nginx.conf 
sudo docker-compose down
nano docker-compose.yaml
sudo docker-compose up --build -d
sudo docker ps
sudo docker-compose down
nano docker-compose.yaml
sudo docker-compose up --build -d
sudo docker-compose down
nano docker-compose.yaml
nano nginx/nginx.conf
sudo docker-compose up --build -d
sudo docker-compose down
nano nginx/nginx.conf
sudo docker-compose up --build -d
sudo docker-compose down
cd front-app/
git pull
sudo docker-compose up --build -d
sudo docker-compose down
cd ..
nano TFG/src/Models/Index/mostrarportada.py 
sudo docker-compose up --build -d
sudo docker-compose down
nano docker-compose.yaml
sudo docker-compose up --build -d
sudo docker-compose down
nano TFG/Dockerfile 
nano nginx/nginx.conf 
nano docker-compose.yaml 
