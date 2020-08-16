FROM rasa/rasa:1.10.10

USER root
ADD ./models /app/models/
ADD ./config /app/config/
ADD ./actions /app/actions/
ADD ./scripts /app/scripts/
ADD ./data /app/data/
ADD ./domain.yml /app/
ADD ./config.yml /app/

RUN chmod +x /app/scripts/*

ENTRYPOINT []
CMD /app/scripts/start_services.sh
