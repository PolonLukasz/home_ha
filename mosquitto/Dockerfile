from eclipse-mosquitto:latest

COPY ./custom_entrypoint.sh /custom_entrypoint.sh
RUN chmod +x /custom_entrypoint.sh

WORKDIR /mosquitto

COPY ./initial_configuration/mosquitto.conf ./config/mosquitto.conf

RUN touch ./config/pwfile && \
    chown mosquitto:mosquitto ./config/pwfile && \
    chmod 0700 ./config/pwfile 

ENTRYPOINT ["/custom_entrypoint.sh"]