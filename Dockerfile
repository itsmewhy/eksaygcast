FROM greycilik/cilikuserbot:buster

RUN git clone -b eskayubot https://github.com/eskaytod/eksaygcast /home/eskaygcast/ \
    && chmod 777 /home/eskaygcast \
    && mkdir /home/eskaygcast/bin/

COPY ./sample_config.env ./config.env* /home/eskaygcast/

WORKDIR /home/eskaygcast/

CMD ["python3", "-m", "userbot"]
