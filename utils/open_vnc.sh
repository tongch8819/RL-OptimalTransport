Xvfb :1 -screen 0 1920x1080x24 &
echo $! >> pids.txt
x11vnc -display :1 -localhost &
echo $! >> pids.txt

# env DISPLAY=:1.0 MESA_GL_VERSION_OVERRIDE=3.2 MESA_GLSL_VERSION_OVERRIDE=150 \