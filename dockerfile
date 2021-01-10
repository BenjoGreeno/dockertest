FROM debian:jessie-slim

RUN apt-get update                              && \
    apt-get install -y --no-install-recommends     \
        cowsay                                     \
        screenfetch                             && \
    rm -rf /var/lib/apt/lists/*

ENV PATH "$PATH:/usr/games"

CMD ["cowsay", "I am trapped in a cow-nsole"]