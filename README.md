# whether-scarapper<br>

This small program goes in to the local wheather website and finds the wether for upcoming week it displays a date date code(will be used in the upcoming app) weekday day temrature and wind speed and night teperature and windspeed<br> 

#req<br>
re - https://docs.python.org/2/library/re.html <br>
bs4 - https://pypi.org/project/bs4/<br>
urllib - https://docs.python.org/2/library/urllib.html<br>

#Notes<br>
This program is in my native language but it should work on any website for now it works like this it takes the whole content out of tags in the html and then using regex we edit the strings to be more readable and then we split it in to multiple list entries and print it out. If you want to test it on diffrent websites please change the url variable and the html tags in the get_weather function.<br> 
