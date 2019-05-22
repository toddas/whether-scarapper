# whether-scarapper<br>

This small program goes into the local weather website and finds the weather for the upcoming week it displays a date, date code(will be used in the upcoming app) weekday day temperature and wind speed and night temperature and wind speed<br> 

#req<br>
re - https://docs.python.org/2/library/re.html <br>
bs4 - https://pypi.org/project/bs4/<br>
urllib - https://docs.python.org/2/library/urllib.html<br>

#Notes<br>
This program is in my native language but it should work on any website, for now, it works like this it takes the whole content out of tags in the HTML and then using regex we edit the strings to be more readable and then we split it into multiple list entries and print it out. If you want to test it on different websites please change the URL variable and the HTML tags in the get_weather function.<br> 
