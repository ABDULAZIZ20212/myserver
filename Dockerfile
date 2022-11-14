FROM golang:1-alpine
COPY ["go.mod", "*.go", "/app/"]
ENV HOST=0.0.0.0 PORT=80
WORKDIR /app
EXPOSE ${PORT}
RUN go build -o /server
CMD ["/server"]
