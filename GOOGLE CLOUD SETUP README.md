# Steps To Setup Google Cloud Account and Google Cloud Vision Service

## 1. Setup your free trial account [here](https://console.cloud.google.com/freetrial)
## 2. Create a project [here](https://console.cloud.google.com/project)
    1. Click CREATE PROJECT
  
  ![image](https://user-images.githubusercontent.com/48803444/152648797-f6120979-aff2-4a99-ad9e-ef1b3a8fb1cb.png)

    2. Enter Project name (e.g. vision1)
    3. Can leave Location as 'No organization'
    4. Click CREATE button
    
  ![image](https://user-images.githubusercontent.com/48803444/152648833-bc2cccfa-acb9-4ccc-990f-2726ccdc4ca6.png)

## 3. Enable billing for your new project
*don't worry, you will not be billed yet*

    1. Click hamburger button on the upper-left of console and click Billing
  ![image](https://user-images.githubusercontent.com/48803444/152648954-28f64354-b705-43a2-8ace-e0dba900d3f0.png)
    
    2. Click LINK A BILLING ACCOUNT.
   Further details can be found [here](https://support.google.com/cloud/answer/6293499#enable-billing)
   
## 4.  Enable API [here](https://console.cloud.google.com/flows/enableapi?apiid=vision.googleapis.com)
    1. Click Next
   ![image](https://user-images.githubusercontent.com/48803444/152649183-ca85e910-f098-4904-8ba8-f216481b0056.png)

    2. Click Enable
   ![image](https://user-images.githubusercontent.com/48803444/152649200-80e9a268-96e9-4457-b4bc-3fa005e635b4.png)

## 5. Create a JSON credentials key [here](https://console.cloud.google.com/home/dashboard)
    1. Click hamburger button on the upper-left of dashboard, select APIs and services, then select Credentials
   ![image](https://user-images.githubusercontent.com/48803444/152649275-9baacd7d-ec72-49eb-9107-913814a36e89.png)
   
    2. Click CREATE CREDENTIALS, then Service account
   ![image](https://user-images.githubusercontent.com/48803444/152649380-08c56d99-19a2-4524-92cb-b22e8c6b2b01.png)

    3. Enter Service account details, then click CREATE AND CONTINUE
   ![image](https://user-images.githubusercontent.com/48803444/152649420-be24935a-c486-44fd-9b91-2b8762ea6196.png)

    4. Assign role as Project > Owner, then click CONTINUE
   ![image](https://user-images.githubusercontent.com/48803444/152649524-691e685b-4971-4b4d-8684-6806a52a8a0c.png)

    5. Create JSON key, by clicking KEYS in the newly create Service account
   ![image](https://user-images.githubusercontent.com/48803444/152649725-53e7b9e8-e586-4428-9590-ad90ed7cf586.png)
   
    6. Click ADD KEY, then Create new key
   ![image](https://user-images.githubusercontent.com/48803444/152649751-cd5faff6-6a56-4a4e-983b-4fd28d493806.png)

    7. Select JSON, then click CREATE button
   ![image](https://user-images.githubusercontent.com/48803444/152649775-49fb610d-4543-4e27-bcc8-27256f31a775.png)

    8. It will prompt you to save the newly created file in your local machine.
    
    9. Copy/Move the downloaded JSON key to your raspberry pi folder (/home/pi)
    
 ## DONE!
