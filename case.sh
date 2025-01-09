#!/bin/bash

var=$(date '+%A')
var=$1
case $var in
	'Monday') touch monday.1 monday.2
	;;
	'Tuesday') touch Tuesday.1; rm -rf Monday.1
	;;
	'wednesday') mv monday.1 wednesday.1
        ;;
	'Saturday' | 'sunday') echo "Saturday and Sunday is holiday"
	;;
esac
