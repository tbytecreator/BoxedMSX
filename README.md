# BoxedMSX
A MSX Emulator in a docker container 

# Getting image
sudo docker pull tbytecreator/boxedmsx:v01

# Running
sudo docker run --device /dev/snd -e DISPLAY=$DISPLAY -e XDG_RUNTIME_DIR=/tmp -v /tmp/.X11-unix:/tmp/.X11-unix -it boxedmsx:v01 
