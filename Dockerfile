FROM rockylinux:9

WORKDIR /app

COPY app.sh .

RUN chmod +x app.sh

CMD ["./app.sh"]

