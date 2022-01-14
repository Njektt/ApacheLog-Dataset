# ApacheLog-Dataset
This dataset was created from the logs of the server with the Apache site. log is a file used by web servers (Apache, Nginx, Lighttpd, boa, squid proxy, etc.) to record requests to the site. It is a text file, each line of which records one call to the server.

## Installation 

### ZPM
It's packaged with ZPM so it could be installed as:
```
zpm "install Dataset-ApacheLog"
```

### Docker
The repo is dockerised so you can  clone/git pull the repo into any local directory

```
$ git clone https://github.com/NjekTt/ApacheLog-Dataset.git
```

Open the terminal in this directory and run:

```
$ docker-compose up -d
```

### Sample Log File:

```
63.143.42.xx - - [30/Nov/2021:15:08:14 +0300] "GET / HTTP/1.1" 200 18648 "http://promjet.ru" "Mozilla/5.0+(compatible; UptimeRobot/2.0; http://www.uptimerobot.com/)"
63.143.42.xx - - [30/Nov/2021:15:10:34 +0300] "HEAD / HTTP/1.1" 200 - "http://promjet.ru" "Mozilla/5.0+(compatible; UptimeRobot/2.0; http://www.uptimerobot.com/)"
93.84.69.xx - - [30/Nov/2021:15:12:47 +0300] "GET /favicon.ico HTTP/1.1" 200 - "-" "Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0"
93.84.69.xx - - [30/Nov/2021:15:12:49 +0300] "GET /favicon.ico HTTP/1.1" 200 - "-" "Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0"
```
## UI Uploader

For convenience, a graphical loader for the dataset has been added, link to the graphical loader: http://localhost:32792/csp/apacheutils/index.html.
Below is an example of the work of the graphic loader


![Preview](https://user-images.githubusercontent.com/47400570/149420448-10cc6705-c6e4-4945-93a7-2630cddaaa9e.gif)

## Utils

This dataset has a tool that translates a log file into a table. The function takes 2 parameters, the first parameter is the name of the class, for example dc.data.teccod.promjetLog2021, the second parameter is the path to the log file.

```
$ d ##class(ApacheLogUtils.utils.utils).LogGenerate("dc.data.teccod.promjetLog2021", "/irisdev/app/src/data/promjetDec2021.log")
```

Online demo of data use can be viewed here :
http://atscale.teccod.ru:32792/dsw/index.html#/IRISAPP/Dashboard/Apache%20Log%20example.dashboard

An example of data usage can be found in the package 
https://openexchange.intersystems.com/package/promjet-stats

![image](https://user-images.githubusercontent.com/47400570/148698770-5fea5b7d-f109-4da3-9997-a42a053f6767.png)

![image](https://user-images.githubusercontent.com/47400570/148698957-4e9e25a5-f1fc-4f62-833a-f6c7b2310935.png)

