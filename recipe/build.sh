if [ "$(uname)" == "Darwin" ]; then
  export USE_X11=0
  export USE_GSTREAMER=1
  export USE_OSX_FRAMEWORKS=0
else
  export USE_X11=1
  export USE_GSTREAMER=1
fi;
USE_SDL2=1 $PYTHON -m pip install --no-deps --ignore-installed .
