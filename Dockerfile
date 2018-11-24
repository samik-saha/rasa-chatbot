FROM rasa/rasa_core:latest
MAINTAINER Samik Saha
ADD ./models/rasa_core/ /app/models/
ADD ./config/ /app/config/
CMD run python -m rasa_core.run --enable_api --core models -c rest --endpoints config/endpoints.yml --credentials config/credentials.yml -u current/