FROM ethereum/client-go:v1.8.27 AS build-stage

WORKDIR /root/data
COPY ./config /root/data/
RUN geth --datadir /root/data init /root/data/genesis.json
RUN ls /root/data/

FROM scratch AS export-stage
COPY --from=build-stage /root/data/geth /config/geth