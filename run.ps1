docker build -t rasa-chatbot .
docker run -it --rm -p 5005:5005 -e PORT=5005 rasa-chatbot