# AOSP Docker Build Environment

> [DockerHub](https://hub.docker.com/r/sweisgerber/aosp-build-environment/)

# Build DOCKER Container


```bash
docker build -t aosp-build-environment:aosp-7.1 .
```

OR execute the `build.sh` script.


# Start DOCKER Container


```bash
docker run -ti \
    --hostname aosp-7-1 \
    --volume /HOST/PATH/TO/ANDROID/CHECKOUT:/aosp/android-VERSION \
    -e LOCAL_USER_ID=`id -u $USER` \
    -e LOCAL_GROUP_ID=`id -g $USER` \
    -e GIT_USER_NAME="USERNAME" \
    -e GIT_USER_EMAIL="user@example.org" \
    aosp-build-environment:latest
```

OR modify the `run.sh` script.

## AOSP Build in DOCKER Container


> Commands to acquire the sources and build Android, e.g.:


```bash
cd aosp-7.1/
yes | repo init -u https://android.googlesource.com/platform/manifest -b android-7.1.1_r6
repo sync
source build/envsetup.sh
lunch aosp_x86_64-eng # lunch aosp_arm64-eng
make -j<THREADS>
```
