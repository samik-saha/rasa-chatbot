from typing import Any, Dict, Text
import requests
import json
from rasa_sdk import Action
import os


class ActionJoke(Action):
  def name(self) -> Text:
    return "action_joke"

  async def run(self, dispatcher, tracker, domain: Dict[Text, Any]):
    url = 'https://api.jokes.one/jod?category=knock-knock'
    headers = {'content-type': 'application/json'}
    joke=requests.get(url, headers=headers).json()['contents']['jokes'][0]['joke']['text']

    #request = requests.get('http://api.icndb.com/jokes/random').json() #make an api call
    #joke = request['value']['joke'] #extract a joke from returned json response
    dispatcher.utter_message('Here is a joke to cheer you up!')
    dispatcher.utter_message(joke) #send the message back to the user
    return []

class ActionGetWeather(Action):
  def name(self):
    return "action_get_weather"
  
  def run(self, dispatcher, tracker, domain):
    city=tracker.get_slot('location')
    url = f'https://api.openweathermap.org/data/2.5/weather?q={city}&units=metric&appid={os.getenv("OPENWEATHERMAP_API_KEY")}'
    weather=requests.get(url).json()
    #response_loc=weather['name']
    main=weather['weather'][0]['main']
    description=weather['weather'][0]['description']
    temp=weather["main"]["temp"]
    humidity=weather["main"]["humidity"]
    feels_like=weather["main"]["feels_like"]
    dispatcher.utter_message(f'Weather in {city}: {main}, {description}, Temp:{temp}, Humidity:{humidity}, Feels like {feels_like}')
    return []
