# jdev-goweb
Sample go web application


# Repo:  https://github.com/baseonballs/jdev-goweb.git

export GOFLAGS=-mod=vendor
export GO111MODULE=on

# build

go mod download
go mod vendor
go mod verify


docker build \
         --build-arg USER_ID=$(id -u) \
         --build-arg GROUP_ID=$(id -g) \
         -t mathapp-development .

## useful commands

> docker images

docker run -it --rm -p 8010:8010 -v $PWD/src:/go/src/mathapp mathapp-development

