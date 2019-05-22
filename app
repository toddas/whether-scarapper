import re
from bs4 import BeautifulSoup
import urllib.request as urllib


def get_weather(url):
	dienu_list = []
	f = urllib.urlopen(url)
	soup = BeautifulSoup(f.read().decode('utf-8'), "lxml")
	dienos = soup.find_all("div", 'slider')

	for diena in dienos:
		if diena.text == "None":
			pass
		else:
			diena_re = re.sub(r"([0-9]+(\.[0-9]+)?)", r" \1 ", diena.text).strip()
			diena_re = re.sub(r"2019....", "", diena_re)
			dienu_list.append(diena_re)

		return dienu_list






url = 'http://www.meteo.lt/lt/miestas?placeCode=Kaunas'
wether = get_weather(url)
string = ''.join(wether)
formated_wh = string.split('       ')
formated_wh = [x.strip(' ') for x in formated_wh]
print("Orai sia savaite:\n")
for el in formated_wh:
	print(el+'\n')
