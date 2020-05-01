Build container with 

```
docker build . -t gnuradio:basic
```

Running through macOS X_Display

```
IMAGE=gnuradio:basic
exec docker run --rm -i -t -e DISPLAY=host.docker.internal:0 -v "$PWD":/data -w /data --net host -h docker-gnuradio "$IMAGE"

```

To make fonts look correct, you need to install the [Ubuntu fonts](https://design.ubuntu.com/font/) on your host system.


This was pieced together from the following areas as well as my own bits:

- https://github.com/cjam/gnuradio-docker
- https://github.com/robotastic/docker-gnuradio