# My RaspberryPi Server
## Steps
### 1. RaspberryPi-Imager Install UBUNTU SERVER 22.04.4 LTS (64bit)
### 2. Terminal execution 
#### 2.1 Initial
>ssh username@piName/IP (on error check ~/.ssh/known_hosts)  
>sudo apt update  
>sudo apt upgrade
#### 2.2 Install Docker https://docs.docker.com/engine/install/ubuntu/
##### Add Docker's official GPG key:
>sudo apt-get update  
>sudo apt-get install ca-certificates curl
>sudo install -m 0755 -d /etc/apt/keyrings  
>sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc  
>sudo chmod a+r /etc/apt/keyrings/docker.asc  
##### Add the repository to Apt sources:
>echo \\  
>"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] \\ 
>https://download.docker.com/linux/ubuntu \\  
>$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \\  
>sudo tee /etc/apt/sources.list.d/docker.list > /dev/null    
>sudo apt-get update
##### Install docker packages
>sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
##### Test Docker
>sudo docker run hello-world
##### Reboot to be sure
>sudo reboot
### 3. Git clone
>git clone https://github.com/markusRog/Pi-Server.git
### 4. Start Container
>sudo docker build -f Dockerfile -t apache
