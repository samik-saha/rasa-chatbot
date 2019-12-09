FROM ubuntu:18.04
MAINTAINER Samik Saha

RUN apt-get update && apt-get install -y python3 python3-pip
RUN python3 -m pip install --upgrade pip
RUN pip3 install rasa-x --extra-index-url https://pypi.rasa.com/simple
# RUN pip3 install spacy

# # Download and link spaCy model
# RUN python3 -m spacy download en_core_web_md
# RUN python3 -m spacy link en_core_web_md en

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
