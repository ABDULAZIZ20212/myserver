FROM golang:1-alpine
WORKDIR /app
COPY go.mod .
COPY *.go .
EXPOSE 8080
RUN go build -o /server
CMD ["/server"]
