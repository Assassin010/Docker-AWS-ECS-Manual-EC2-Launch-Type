Deploying a simple express app 
Requirements:

1. package.json
2. index.js (define express app and all the endpoints)
3. package.json (all different dependencies is located here)
4. Dockerfile (to dockerize the application)

FROM node:alpine
ENV NODE_ENV=development

WORKDIR /app                   #to create a working directory named "app"

COPY package.json .            #copy this file from the current directory to the working directory "app"


RUN npm install --development  #install all dependencies (located in package.json)


COPY . .                       #copy all the files from the current directory to the working directory "app"                      

EXPOSE 80                      #localhost in the container

CMD ["node", "index.js"]       #command to be run as soon as the container runs

----------------------------------------------------


START

*On Local

1. Creating the Dockerfile 
2. Follow these steps below "Commands for Local"


*On AWS
1. Creating a Repo with ECR
2. Creating an ECS Cluster
3. Creating a Task Definition
4. Configuring the Security Group
5. Create a Task in the newly created cluster (run new task)


------------------------------------

Commands for Local 

To build the dockerfile in the app directory
run => docker build -t express-app .

To check the image ID: 
run => docker images

To run the container: 
run => docker run -p 5560:80 Image ID

*5566 is a random port (local host) that we choose on local machine, it can be anything else to be connected to local host in the container (80)
*80: Local host (port) where we want our container to be running 


----------------------------------

Commands for ECR

"Check Push commands" on the upper right after the creation of ECR repository 




