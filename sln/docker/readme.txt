add the following in the jenkins window batch command step

D:\Code\buildtools\bin\dos2unix.exe build.sh
docker-compose -f docker-compose-build.yml up
docker build --rm -t webapp:latest out