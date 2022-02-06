# facial_recog_pi

This project was tested to run on Raspberry Pi OS (Legacy) [Debian Buster].

Steps to run.

  ## 1. **[One-time Setup]** Setup Google Cloud account
  
  Setup Google Cloud Vision service by following steps from [here](https://github.com/myworkmcoblefias/facial_recog_pi/blob/main/GOOGLE%20CLOUD%20SETUP%20README.md)

  > End product is a downloaded json credential file.
      
   Place your credentials file in ```/home/pi/<credentials>.json```. 
   
   *Any filename will do*
  
  ## 2.  Clone this repository
  
  ## 3.  Run below commands ⏩

  ```
  cd facial_recog_pi
  chmod +x prepare.sh
  ./prepare.sh
  ```
  
  ```prepare.sh``` will do the following: 🧰
  
    1.  Update and upgrade environment
    2.  Install docker
    3.  Add a Non-Root User to the Docker Group
    4.  Install docker-compose
    5.  Enable the Docker system service to start your containers on boot
   * *It will ask you to reboot after running all commands.*
  
  
  ## 4.  After reboot, export environment variable for credential file.
  
  ```export GOOGLE_APPLICATION_CREDENTIALS=/home/pi/<credentials>.json```
   
  ## 5.  Build and run image by running below commands.
  
  ```
  cd /home/pi/facial_recog_pi
  docker-compose run app
  ```
  
  > After run, it will open container in ```/home/pi/facial_recog_pi/src```.

  ## 6.  There will be 3 files inside src folder.
  
  To test, run below commands:
  ### ```python camera_vision_face.py``` - for detecting facial expressions
  *run command, look at the camera for around 2-3s, check result from console*
    
  ### ```python camera_vision_label.py``` - for detecting and identifying objects
  *run command, after 2-3s it will say which objects it detected in the surrounding*
  
  ### ```python camera_vision_logo.py``` - for detecting and identifying logos
  *run command, place a logo in front of camera around 1ft away for 2-3s, check result from console*

 
