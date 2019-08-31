docker build -t dockercraft .
docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY --device /dev/snd dockercraft