#!/bin/bash

. /opt/weather/weather_vars
. /opt/weather/weather_functions

ensure_cache_path

if [[ $(cat $cache_file | wc -l) -eq 0 ]]; then
	cache_weather
fi

# I'm piping this throuhg grep here because I don't want any
# lines that don't start with the zip code such as '64131: ⛅️ +76°F'
cat $cache_file | egrep '[0-9]' --color='none'
