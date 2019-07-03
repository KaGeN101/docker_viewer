
## Introduction 
This is a super simple Rails implementation of interogating a Docker registry for image history  
It uses no plugins. It calls the system docker command and parses the output and displays it in the browser page


## Environment and Assumptions
This was done on a vanilla Ubuntu 18.04 setup
Docker is installed and setup to work without sudo and connected to a registry  
You can use the localhosty:5000 registry that can started from the docker_registry folder
It installs rvm and inside that:
 - Ruby 2.5.5
 - Rails 5.2.3
The Rails application is not dockerised
Did not implement anything with the tag parameter

### Docker Registry USERNAME and Password
dev_user
123456

## Scritps
There are scritps that setup the whole environment for you from a default state  
You can run it in the local environment by executing and install_me.sh, start_registry.sh and build_me.sh scripts  
install_me.sh tries to install everything needed to make the environment operational


## Startup
cd to docker_view/
rails s
If you using the local repository use the build_me.sh script to add it and can then test it with this command:
http://localhost:3000/history?name=test-image&tag=latest

![](https://github.com/KaGeN101/docker_viewer/screenshot.png)
