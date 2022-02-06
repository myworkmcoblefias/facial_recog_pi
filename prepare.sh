# Update and Upgrade
echo "Updating and upgrading OS"
sudo apt-get update && sudo apt-get upgrade

# Install Docker
echo "Installing docker"
curl -sSL https://get.docker.com | sh

# Add a Non-Root User to the Docker Group
echo "Adding a Non-Root User to the Docker Group"
sudo usermod -aG docker pi
sudo usermod -aG docker ${USER}
groups ${USER}

# Install Docker-Compose
echo "Installing docker-compose"
sudo apt-get install libffi-dev libssl-dev
sudo apt install python3-dev
sudo apt-get install -y python3 python3-pip
sudo pip3 install docker-compose

# Enable the Docker system service to start your containers on boot
echo "Enable the Docker system service to start your containers on boot"
sudo systemctl enable docker

while true; do
    read -p "System needs to reboot. Proceed? [y/n]" yn
    case $yn in
        [Yy]* ) sudo reboot; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
