FROM golang:1.23-alpine3.20
WORKDIR /home/CI-CD-WORKSHOP/server
COPY . /home/CI-CD-WORKSHOP/server
RUN go mod download
RUN go build -o ./build/server
CMD ["./build/server"]