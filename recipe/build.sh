#!/usr/bin/env bash
set -ex

if [ "$(uname)" == "Darwin" ]; then
  export USE_X11=0
  export USE_GSTREAMER=1
  export USE_OSX_FRAMEWORKS=0
else
  export USE_X11=1
  export USE_GSTREAMER=1
fi;
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:${PREFIX}/lib/pkgconfig"
export C_INCLUDE_PATH="${C_INCLUDE_PATH}:${PREFIX}/include/gstreamer-1.0"
USE_SDL2=1 $PYTHON -m pip install --no-deps --ignore-installed .
