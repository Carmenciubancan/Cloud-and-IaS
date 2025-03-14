# Created droplet on digital ocean. 167.172.108.35

# ran on server
apt-get update
apt install openjdk-8-jre-headless

# running Java application on server

# clone java app git repo

# build application locally 

$ gradle build

# copy artifact to remote droplet

scp build/libs/java-react-example.jar root@167.172.108.35:/root

$ java -jar java-react-example.jar & #run on droplet, to execute the jar file and run Java app (in the background)

# allow inbound traffic for port 7071 on droplet 

# Java app is accessible here --> http://167.172.108.35:7071/
 
# Create a separate linux user for the app, give it only the needed permissions

$ adduser javey

$ usermod -aG sudo javey

$ mkdir /home/javey/.ssh

$ vim /home/javey/.ssh/authorized_keys

# add public ssh key to authorized keys to give the javey user permissions to the server 
