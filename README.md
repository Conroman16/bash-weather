# bash-weather
A couple scripts I use to locally-cache and display one-line weather in my terminal


This relies on the awesome [wttr.in](https://github.com/chubin/wttr.in) service.  It caches the response in a local file so that it can be read and outputted on the terminal quickly and without needing to wait for an http request to complete before the prompt shows up.

If you want to use this, it cen be configured like so:

1. Clone the repo to `/opt/weather`
1. Copy the `weather_vars.example` file to `weather_vars` and configure the variables within to match your needs
1. Put the `cache-weather.sh` script under `cron` and and run it however often you'd like to cache the response from wttr.in (please be nice and don't hammer wttr.in)
1. Run the `get-cached-weather.sh` script to get the weather from the cache whenever you need it.  If the cache file is empty, this script will cache the weather first before responding
