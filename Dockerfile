FROM greycilik/cilikuserbot:buster

RUN git clone -b eskaygcast https://github.com/eskaytod/eksaygcast /home/eskayubot/ \
    && chmod 777 /home/eskayubot \
    && mkdir /home/eskayubot/bin/

COPY ./sample_config.env ./config.env* /home/eskayubot/

WORKDIR /home/eskayubot/

CMD ["python3", "-m", "userbot"]
