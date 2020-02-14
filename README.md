# Image-classification-model-deployment-using-Flask-


Cat-and-dog-classification-using-keras-
This project is for self learning purpose .

In this project I have train a Binary image classification model using keras and save model wiegths .

Using those weights i have deploy it using flask web service on local host and docker it and push that image to docker hub you can dowload it from docker hub

docker push 06210621/cat_and_dog_classification_using_keras:latest

In this project i used base64 concept so that uploaded image will not save on server and didnot consume space on server

For running this code clone this repo

and run docker-compose.yml in your terminal

docker-compose up docker-compose build

Dowload weights and create a models dir and put that model inside it 

Model weights 
Download Link



![Screenshot from 2020-02-14 21-00-43](https://user-images.githubusercontent.com/45600643/74545047-36a4fa80-4f6e-11ea-8360-e0c0a6738df3.png)



![Screenshot from 2020-02-14 21-00-50](https://user-images.githubusercontent.com/45600643/74545075-41f82600-4f6e-11ea-9789-d3b73afabb78.png)


![Screenshot from 2020-02-14 21-00-56](https://user-images.githubusercontent.com/45600643/74545091-4a506100-4f6e-11ea-96fc-a59d781d5a6f.png)
