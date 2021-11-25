

## Usage

```
docker build . -t bakery-server-image
docker run -dt -p 8080:8080 bakery-server-image
```

## Cross compilation

```
## Windows
env GOOS=windows GOARCH=amd64 go build -v -o ./bin/server_windows-1.0.exe
## Linux
env GOOS=linux GOARCH=amd64 go build -v -o ./bin/server_linux-1.0
## macos
env GOOS=darwin GOARCH=amd64 go build -v -o ./bin/server_macos-1.0
```
