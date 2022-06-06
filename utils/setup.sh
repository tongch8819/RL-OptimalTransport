export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so
env DISPLAY=:1.0 MESA_GL_VERSION_OVERRIDE=3.2 MESA_GLSL_VERSION_OVERRIDE=150 \
python /tmp/tmp.py