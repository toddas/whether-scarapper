import re
from bs4 import BeautifulSoup
import urllib.request as urllib


def get_weather(url):
	dienu_list = []
	f = urllib.urlopen(url)
	soup = BeautifulSoup(f.read().decode('utf-8'), "lxml")
	dienos = soup.find_all("span", 'date')
	orai = soup.find_all("div", 'col')
	for diena in dienos:
		for oras in orai:

			if diena.text == "None":
				pass
			else:
				# diena_re = re.sub(r"([0-9]+(\.[0-9]+)?)", r" \1 ", diena.text)
				# oras_re = re.sub(r"([0-9]+(\.[0-9]+)?)", r" \1 ", oras.text).strip()

				dienu_list.append((diena.text+' '+oras.text))

	# for oras in orai:
	# 	if oras.text == "None":
	# 		pass
	# 	else:
	# 		oras_re = re.sub(r"([0-9]+(\.[0-9]+)?)", r" \1 ", oras.text)
	# 		dienu_list.append(oras_re)
		return dienu_list






url = 'http://www.meteo.lt/lt/miestas?placeCode=Kaunas'
wether = get_weather(url)
print(wether)

#output
#['Antradienis05.21  --- ', 'Antradienis05.21  Diena  29 °C 5 m/s  ', 'Antradienis05.21  Naktis  16 °C 2 m/s  ', 'Antradienis05.21  Diena  28 °C 3 m/s  ', 'Antradienis05.21  Naktis  17 °C 2 m/s  ', 'Antradienis05.21  Diena  28 °C 3 m/s  ', 'Antradienis05.21  Naktis  13 °C 3 m/s  ', 'Antradienis05.21  Diena  20 °C 4 m/s  ', 'Antradienis05.21  Naktis  10 °C 3 m/s  ', 'Antradienis05.21  Diena  19 °C 5 m/s  ', 'Antradienis05.21  Naktis  8 °C 4 m/s  ', 'Antradienis05.21  Diena  17 °C 5 m/s  ', 'Antradienis05.21  Naktis  10 °C 4 m/s  ', 'Antradienis05.21  Diena  20 °C 5 m/s  ']
