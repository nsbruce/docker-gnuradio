Build container with 

GNU Radio on phusion (Ubuntu 18.04) with a bunch of uhd/ettus/other SDR interfaces and theming so it feels like Ubuntu over XQuartz/X11.

```
docker build . -t gnuradio:basic
```

Running through macOS X_Display

```
IMAGE=gnuradio:basic
exec docker run --rm  -it -e XAUTHORITY=~/.Xauthority -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=host.docker.internal:0 -v "$PWD":/data -w /data --net host -h docker-gnuradio "$IMAGE"
```

This was pieced together from the following areas as well as my own bits:

- https://github.com/cjam/gnuradio-docker
- https://github.com/robotastic/docker-gnuradio