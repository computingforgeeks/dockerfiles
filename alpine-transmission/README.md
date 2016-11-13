## Docker transmission build files based on Alpine Linux
It's very easy to build an image and run a cointainer with these config files. Follow steps below

1. Create a folder and put all files

2. Run build.sh script which will build an image for you

```
 $ sh ./build.sh
```

Once the build is complete, you can launch a new container by running run.sh script file

 ```
$ sh ./run.sh
```

You can modify settings.json file to your liking before building the file.

Directories on the host mapped to container are:

**/home/$USER/Torrents/downloads => /transmission/downloads**

**/home/$USER/Torrents/incomplete => /transmission/incomplete**

**/home/$USER/Downloads => /transmission/watch**

The watch is important if you want to just place .torrent files inside your Downloads directory and the container automatically start downloading

To access web interface, use

container-ip:9091

Example: http://172.17.0.2:9091/

To get container ip, the syntax is:

```
$ docker inspect --format "{{.NetworkSettings.Networks.bridge.IPAddress}}" <container name or id>
```
Example:

```
$ docker inspect --format "{{.NetworkSettings.Networks.bridge.IPAddress}}" transmission
```
With the ip address you can access web interface. I'll push the prebuild docker image to docker hub.

