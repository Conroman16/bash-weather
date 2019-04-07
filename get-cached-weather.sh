#!/bin/bash

. /opt/weather/weather_vars
. /opt/weather/weather_functions

ensure_cache_path

if [[ $(cat $cache_file | wc -l) -eq 0 ]]; then
	cache_weather
fi

# Deleting any lines that start with '<' to remove any error pages or any other HTML
cat $cache_file | sed '/^</d'
