if [ -z "$DISPLAY" ]; then
    export DISPLAY=:0
fi

xhost +local:root
sudo docker run --device /dev/snd \
                -e DISPLAY=$DISPLAY \
                -e XDG_RUNTIME_DIR=/tmp \
                -v /tmp/.X11-unix:/tmp/.X11-unix \
                -it tbytecreator/boxedmsx:v01