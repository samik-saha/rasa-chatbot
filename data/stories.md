## happy_path
* greet
  - utter_greet
* mood_happy
  - utter_happy
* goodbye
  - utter_goodbye

## sad_path
* greet
  - utter_greet
* mood_unhappy
  - action_joke
* goodbye
  - utter_goodbye

## Weather with location
* greet
  - utter_greet
* get_weather{"location": "Mississauga"}
  - slot{"location": "Mississauga"}
  - action_get_weather
* goodbye
  - utter_goodbye

## Weather
* greet
  - utter_greet
* get_weather
  - utter_ask_location
* inform{"location": "Mississauga"}
  - slot{"location": "Mississauga"}
  - action_get_weather
* goodbye
  - utter_goodbye
