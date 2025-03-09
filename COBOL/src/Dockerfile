FROM ubuntu:latest
ADD . /src/
WORKDIR /src

RUN apt update && \
    apt install gnucobol4 -y && \
    apt clean
RUN cobc -free -x -o ejercicio_4 ejercicio_4.cob
RUN chmod +x run.sh
CMD ["./run.sh"]
