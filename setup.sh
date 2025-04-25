sudo apt update && sudo apt upgrade -y
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt install -y openjdk-21-jre-headless
mkdir vanilla && cd vanilla
wget https://piston-data.mojang.com/v1/objects/e6ec2f64e6080b9b5d9b471b291c33cc7f509733/server.jar
ufw allow 25565
echo "eula=true" > eula.txt
java -Xmx1024M -Xms1024M -jar server.jar nogui
stop
sed -i 's/online-mode=true/online-mode=false/' server.properties
sudo apt install tmux
tmux new -s minecraft
cd ~/vanilla
java -Xmx1G -Xms1G -jar server.jar nogui

