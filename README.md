PURPOSE:
In this program, I use three different API classes which names are IPAddress, Country, and Weather. They are sub classes from ProxyInterface class and also there is a decorator class to manage all these API classes and main class to run the program. In IPAddress class, Ip address information are received from API and returns in JSON format then Country class get this ip address and use it to find the location. Then, Weather class use the location information and receive weather information. All of these processes are managed by decorator class.

ruby Main.rb
