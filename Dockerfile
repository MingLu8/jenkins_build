FROM microsoft/aspnetcore
WORKDIR /app
COPY . .
EXPOSE 80
ENTRYPOINT ["dotnet", "aspnetcore.dll"]