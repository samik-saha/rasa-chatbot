FROM rasa/rasa_core:latest
MAINTAINER Samik Saha
ADD ./models /app/models/
ADD ./config/ /app/config/
CMD python -m rasa_core.run --enable_api --core models/rasa_core --endpoints config/endpoints.yml --credentials config/credentials.yml -p $PORT -u current/nlu
#CMD ["python","-m","rasa_core.run","--enable_api","--core","models/rasa_core","-c","rest","--endpoints","config/endpoints.yml", "--credentials", "config/credentials.yml","-p","${PORT}"]

ENTRYPOINT []