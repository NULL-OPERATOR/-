import urllib2
import json
import datetime
import os


key = ""
url = "http://api.openweathermap.org/data/2.5/weather?q=London,uk&units=metric&appid="

response = urllib2.urlopen(url + key)
html = response.read()
response.close()

data = json.loads(html)

def nice_time(ts):
    return datetime.datetime.fromtimestamp(ts).strftime('%H:%M:%S')

msg = data['weather'][0]['description']\
   + " - temp: " + str(data['main']['temp'])\
   + " - wind speed: " + str(data['wind']['speed'])\
   + " - pressure: " + str(data['main']['pressure'])\
   + " - sunrise: " + nice_time(data['sys']['sunrise'])\
   + " - sunset: " + nice_time(data['sys']['sunset'])

os.popen("echo '{}'".format(msg), 'w')
