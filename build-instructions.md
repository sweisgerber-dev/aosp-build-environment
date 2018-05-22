# AOSP Docker Build Environment

## Support 

>Currently supported versions:

- AOSP 6.0 Marshmallow


# Build DOCKER Container


```bash
docker build -t aosp-build-environment:latest .
```

OR execute the `build.sh` script.


# Start DOCKER Container


```bash
docker run -ti \
    --hostname aosp-6-0 \
    --volume /HOST/PATH/TO/ANDROID/CHECKOUT:/aosp/android-VERSION \
    -e LOCAL_USER_ID=`id -u $USER` \
    -e LOCAL_GROUP_ID=`id -g $USER` \
    -e GIT_USER_NAME="USERNAME" \
    -e GIT_USER_EMAIL="user@example.org" \
    aosp-build-environment:latest
```

OR modify the `run.sh` script.

### AOSP Build in DOCKER Container


> Commands to acquire the sources and build Android, e.g.:


```bash
cd aosp-6.0/
yes | repo init -u https://android.googlesource.com/platform/manifest -b android-6.0.1_r62
repo sync
source build/envsetup.sh
lunch aosp_x86_64-eng # lunch aosp_arm64-eng
make -j<THREADS>
```
