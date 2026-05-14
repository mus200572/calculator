FROM gcc:latest

WORKDIR /app

COPY . .

RUN g++ main.cpp -o calculator

CMD ["./calculator"]
