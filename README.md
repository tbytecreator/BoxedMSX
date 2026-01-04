# BoxedMSX

A MSX Emulator in a docker container

## Build image from source

sudo docker build -t tbytecreator/boxedmsx:v01 .

## Getting image

sudo docker pull tbytecreator/boxedmsx:v01

## After modifications, you can publish to Docker Hub

./publish.sh

## Running

To run, you will need to be in a graphic session, or start the x environment.

### Sample start script (drun.sh)

if [ -z "$DISPLAY" ]; then
    export DISPLAY=:0
fi

xhost +local:root
sudo docker run --device /dev/snd \
                -e DISPLAY=$DISPLAY \
                -e XDG_RUNTIME_DIR=/tmp \
                -v /tmp/.X11-unix:/tmp/.X11-unix \
                -it boxedmsx:v01
sudo docker run --device /dev/snd -e DISPLAY=$DISPLAY -e XDG_RUNTIME_DIR=/tmp -v /tmp/.X11-unix:/tmp/.X11-unix -it boxedmsx:v01
