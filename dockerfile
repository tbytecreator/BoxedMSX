FROM debian:11-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    openmsx \
    xserver-xorg-core \
    libasound2 \
    alsa-utils \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY systemroms/ /usr/share/openmsx/systemroms/
COPY dsk/ /root/dsk/
RUN echo "export DISPLAY=:0" >> /root/.bashrc
RUN echo "export XDG_RUNTIME_DIR=/tmp" >> /root/.bashrc
RUN echo "xhost +local:root" >> /root/.bashrc
RUN echo "export QT_X11_NO_MITSHM=1" >> /root/.bashrc
RUN echo "export SDL_VIDEODRIVER=x11" >> /root/.bashrc
RUN echo "export SDL_AUDIODRIVER=alsa" >> /root/.bashrc
RUN echo "export SDL_AUDIO_DEVICE=default" >> /root/.bashrc
RUN echo "startx" > /root/.bash_profile
RUN echo "exec openmsx" > /root/.xinitrc
ENTRYPOINT ["openmsx", "-machine", "Gradiente_Expert_GPC-1", "-ext", "DDX_3.0", "-diska", "/root/dsk/."]