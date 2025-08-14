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
                -it boxedmsx