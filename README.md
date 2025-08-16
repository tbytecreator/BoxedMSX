# BoxedMSX
A MSX Emulator in a docker container 

# Getting image
sudo docker pull tbytecreator/boxedmsx:v01

# Running
To run, you will need to be in a graphic session, or start the x environment.

Sample start script (drun.sh)

if [ -z "$DISPLAY" ]; then
    export DISPLAY=:0
fi

if ! xset q &>/dev/null; then
    echo "O ambiente gráfico não está ativo. Inicie com 'startx' ou faça login em uma sessão gráfica."
    exit 1
fi

xhost +local:root
sudo docker run --device /dev/snd \
                -e DISPLAY=$DISPLAY \
                -e XDG_RUNTIME_DIR=/tmp \
                -v /tmp/.X11-unix:/tmp/.X11-unix \
                -it boxedmsx:v01
sudo docker run --device /dev/snd -e DISPLAY=$DISPLAY -e XDG_RUNTIME_DIR=/tmp -v /tmp/.X11-unix:/tmp/.X11-unix -it boxedmsx:v01 
