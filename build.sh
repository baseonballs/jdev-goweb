# !/bin/sh


docker build -f Dockerfile \
         --build-arg USER_ID=$(id -u) \
         --build-arg GROUP_ID=$(id -g) \
         -t mathapp-development .
