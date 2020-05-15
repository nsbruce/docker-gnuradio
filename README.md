# README

GNU Radio on Ubuntu LTS Minimal with a bunch of uhd/ettus/other SDR interfaces.

## Tags

### Latest

Whatever served from the gnuradio-releases ppa on the latest Ubuntu LTS Minimal.

### 3.7

Whatever is served from the gnuradio-releases-3.7 ppa on the Ubuntu 18.04 Minimal.

- Includes some theming so that it doesn't appear like trash on XQuartz

## Running through macOS X_Display

```bash
IMAGE=nsbruce/gnuradio:tag
exec docker run --rm  -it -e XAUTHORITY=~/.Xauthority -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=host.docker.internal:0 -v "$PWD":/data -w /data --net host -h docker-gnuradio "$IMAGE"
```

This was pieced together from the following areas as well as my own bits:

- [cjam/gnuradio-docker](https://github.com/cjam/gnuradio-docker)
- [robotastic/docker-gnuradio](https://github.com/robotastic/docker-gnuradio)