FROM golang:1.22.4-alpine

WORKDIR /planner

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . .

RUN go build -o bin/planner ./cmd/planner

EXPOSE 8080
ENTRYPOINT [ "./bin/planner" ]
