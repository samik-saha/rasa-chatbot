# Train Dialoge model
docker run --rm -v ${PWD}:/app rasa-chatbot python3 `
           -m rasa_core.train -d /app/domain.yml `
           -s /app/data/stories.md `
           -o /app/models/rasa_core

# Train NLU model
docker run --rm -v ${PWD}:/app rasa-chatbot python3 `
           -m rasa_nlu.train -c /app/config/nlu_config.yml `
           -d /app/data/nlu.md --fixed_model_name nlu `
           -o /app/models/rasa_nlu --project current
