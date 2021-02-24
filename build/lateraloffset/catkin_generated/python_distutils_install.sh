#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/christian/lateralOffset/src/lateraloffset"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/christian/lateralOffset/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/christian/lateralOffset/install/lib/python2.7/dist-packages:/home/christian/lateralOffset/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/christian/lateralOffset/build" \
    "/usr/bin/python" \
    "/home/christian/lateralOffset/src/lateraloffset/setup.py" \
    build --build-base "/home/christian/lateralOffset/build/lateraloffset" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/christian/lateralOffset/install" --install-scripts="/home/christian/lateralOffset/install/bin"
