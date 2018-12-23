FROM rasa/rasa_core_sdk:latest
MAINTAINER Samik Saha
ADD . /app/actions
ENTRYPOINT []
CMD python -m rasa_core_sdk.endpoint --actions actions.actions -p $PORT