docker run --rm --volume ${pwd}:/app \
          --workdir /app rasa/rasa:1.10.10 \
          train --fixed-model-name rasa-model \
          --config config.yml