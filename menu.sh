#!/bin/bash
# Bash Menu Script

PS3='Please enter your choice: '
options=("Intro" "Install" "Images" "Status" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Intro")
            echo "Docker provides an integrated technology suite that enables development and IT operations teams to build, ship, and run distributed applications anywhere.
Please follow this tutorial to install dockertoolbox, run images and containers and leanm more on how to use Docker."
	    ;;
        "Install")
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
        "Images")
            echo "To Download an image into the container you can run: docker run <yourimage>; Here is an example on how to load a docker whale image saying whAllo!
run: docker run docker/whalesay cowsay whAllo! "
	    echo "Please enter command: "
	    read input
             $input
           ;;
        "Status")
	    echo "you can check to see the list of images your have on you local system buy running the command: docker images"
            echo "Please enter command: "
            read input
            $input
            ;;
	"Exit")
	    break
	    ;;
        *) echo invalid option;;
    esac
done
