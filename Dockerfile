FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY . .
RUN dotnet restore

# copy everything else and build app
COPY . .
RUN dotnet publish -c Release -o out

EXPOSE 5000/tcp

# Ask Corey about this runtime piece is it even necessary?
# FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime
# WORKDIR /app
# COPY --from=build /app/out ./

CMD ["dotnet", "watch", "run"]