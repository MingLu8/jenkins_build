#!bin/bash
set -e
dotnet restore src/aspnetcore.sln
#dotnet build src

rm -rf $(pwd)/docker/out

dotnet publish ./src/presentations/aspnetcore/aspnetcore.csproj -c Release -o $(pwd)/docker/out

cp ./docker/Dockerfile $(pwd)/docker/out
