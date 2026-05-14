# Stage 1: Build
FROM gcc:latest AS builder

WORKDIR /app

COPY . .

RUN g++ main.cpp -o calculator

# Stage 2: Run
FROM ubuntu:latest

WORKDIR /app

COPY --from=builder /app/calculator .

CMD ["./calculator"]
