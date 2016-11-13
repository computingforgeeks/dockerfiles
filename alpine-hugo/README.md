## Hugo docker files to build docker image based on Alpine Linux

These are my docker files  to build hugo docker image based on lightweight Linux; Alpine Linux

The resulting image is only 77mb 

The image is available on docker hub and you can pull it any time with:

``` docker pull jmutai/hugo```

## Building the image from the files

You can as well build your image using files provided here. Edit build.sh script, Dockerfile and run.sh script to suite your needs, then do

```
sh ./build.sh
```
To run the image, you can use run.sh script after modifying where necessary:
```
sh ./run.sh
``` 
