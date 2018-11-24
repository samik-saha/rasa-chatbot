FROM rasa/rasa_nlu:latest-spacy
MAINTAINER Samik Saha
ADD ./models/rasa_nlu/ /app/models/
ENTRYPOINT python -m rasa_nlu.server --path models