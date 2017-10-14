#!bin/bash
set -e
dotnet restore
dotnet build
<<<<<<< HEAD
# dotnet test test/WebTests/project.json =
=======
# dotnet test test/WebTests/project.json
>>>>>>> 996d905d093d0b0459ef42ce7cfa60d411807121

rm -rf $(pwd)/out

dotnet publish aspnetcore/aspnetcore.csproj -c Release -o $(pwd)/out
<<<<<<< HEAD


cp Dockerfile $(pwd)/out  
=======
cp Dockerfile $(pwd)/out
>>>>>>> 996d905d093d0b0459ef42ce7cfa60d411807121
