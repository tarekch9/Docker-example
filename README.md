This is a basic example of the usage of a docker-image. It contains a local webserver with node.js which serves on Port 3000. The package.json is used to track the dependencies of this simple web-application.
The Dockerfile is used for deploying the application on different eviroments. It defines the dependencies needed to deploy the application and also defines how to start the webserver.In order to run the 
application locally, following commands have to be written in the commandline of the directory.
1. The docker-image needs to be build with following command: "docker build -t node-app . "
2. The docker container needs to get started: "docker run -p 3000:3000 node-app"

The sentence "Hello world" should now appear, if you open the local-host on port 3000. The Node.js application is now running succesful on Docker-container.
