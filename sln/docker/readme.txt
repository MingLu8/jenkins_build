# add the following in the jenkins window batch command step

cd sln\docker

# using build script 
# D:\Code\buildtools\bin\dos2unix.exe build.sh
# docker-compose -f docker-compose-ci-build.yml up

# without using script
docker-compose -f docker-compose.ci.build.yml up

docker build --rm -t webapp:latest ../out