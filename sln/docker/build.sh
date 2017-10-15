#!bin/bash
set -e
dotnet restore src
dotnet build src

rm -rf $(pwd)/out

dotnet publish ./src/presentations/aspnetcore/aspnetcore.csproj -c Release -o $(pwd)/out

cp ./docker/Dockerfile $(pwd)/out
