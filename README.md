# facial_recog_pi

This project runs on Raspberry Pi OS (Legacy) [Debian Buster].

Steps to run.

  1.  [One-time Setup] Setup Google Cloud account first to use Google Cloud Vision service.

      End product is a downloaded json credential file.
      
      Place your credentials file in ```/home/pi/credentials.json```
  
  2.  Clone this repository
  
  3.  Run below commands

  ```
  cd facial_recog_pi
  chmod +x prepare.sh
  ./prepare.sh
  ```
  
  ```prepare.sh``` will do the following:
  
    1.  Update and upgrade environment
    2.  Install docker
    3.  Add a Non-Root User to the Docker Group
    4.  Install docker-compose
    5.  Enable the Docker system service to start your containers on boot
    *   It will ask you to reboot after running all commands.
  
  
  3.  After reboot, export environment variable for credential file.
  
  ```export GOOGLE_APPLICATION_CREDENTIALS=/home/pi/<credentials>.json```
   
  4.  Build and run image by running below command. After run, it will open container in ```/home/pi/facial_recog_pi/src```.
  
  ```
  cd /home/facial_recog_pi
  docker-compose run app
  ```

  5.  There will be 3 files inside src folder.
  
  To test, run below commands:
  - ```python camera_vision_face.py``` - for detecting facial expressions
  - ```python camera_vision_label.py``` - for detecting and identifying objects
  - ```python camera_vision_logo.py``` - for detecting and identifying logos

 
