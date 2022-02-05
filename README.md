# facial_recog_pi

This project runs on Raspberry Pi OS (Legacy) [Debian Buster].

Steps to run.

  1.  [One-time Setup] Setup Google Cloud account first to use Google Cloud Vision service.

      End product is a downloaded json credential file.
      
      Place your credentials file in /home/pi/<credentials>.json
  
      run ```export GOOGLE_APPLICATION_CREDENTIALS=/home/pi/<credentials>.json```
  
  2.  Install docker and docker-compose
  
 ```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi
sudo pip3 install docker-compose
 ```
 
  3.  Clone this repository
   
  4.  Build and run image by running below command
  
  ```docker-compose run app```

  5.  Inside container, go to src. There will be 3 files inside.
  
  To test, run below commands:
  - ```python camera_vision_face.py``` - for detecting facial expressions
  - ```python camera_vision_label.py``` - for detecting objects
  - ```python camera_vision_logo.py``` - for detecting and identifying logos

 
