#!bin/bash
set -e
dotnet restore
dotnet build
# dotnet test test/WebTests/project.json =

rm -rf $(pwd)/out

dotnet publish aspnetcore/aspnetcore.csproj -c Release -o $(pwd)/out

cp Dockerfile $(pwd)/out  