#!/bin/bash
# Bash Menu Script

PS3='Please enter your choice: '
options=("WhAllo" "Install docker toolbox" "Run Images" "Build your own image and your good to go!" "WhaleBye")
select opt in "${options[@]}"
do
    case $opt in
        "WhAllo")
            echo "Docker provides an integrated technology suite that enables development and IT operations teams to build, ship, and run distributed applications anywhere.
Please follow this tutorial to install dockertoolbox, run images and containers and leanm more on how to use Docker."
	    ;;
        "Install docker toolbox")
            echo "Dockertoolbox comes with:
   - Docker CLI client for running Docker Engine to create images and containers
   - Docker Machine so you can run Docker Engine commands from Mac OS X terminals
   - Docker Compose for running the docker-compose command
   - Kitematic, the Docker GUI
   - the Docker QuickStart shell preconfigured for a Docker command-line environment
   - Oracle VM VirtualBox
run:  brew cask install dockertoolbox"
echo "Please enter command: "
read input
$input
eval "$(docker-machine env default)"
echo "now run: docker run hello-world"
read input
$input
	    ;;
        "Run Images")
            echo "To Download an image into the container you can run: docker run <yourimage>; Here is an example on how to load a docker whale image saying whAllo!
run: docker run docker/whalesay cowsay whAllo! "
	    echo "Please enter command: "
	    read input
             $input
	     echo "

you can check to see the list of images your have on you local system buy running the command: docker images"
             echo "Please enter command: "
             read input
             $input
             ;;
        "Build your own image and your good to go!")
	    echo "To build your own images you'll have to create a directory using the command: mkdir mydockerbuild, then go into that directory by typping: cd mydockerbuild . Once in the directory you can create a Dockerfile and run you own program"
            ;;
	"WhaleBye")
	    break
	    ;;
        *) echo invalid option;;
    esac
done
