#! /bin/bash

if [ -z "$1" ]; then
	echo "Usage: cert.sh <domain>"
	echo "Domains:"
	files=/etc/letsencrypt/live/*
	for f in $files; do
		f=${f/"/etc/letsencrypt/live/"/}
		if [ $f != "README" ]; then
			echo $f
		fi
	done
else
	certbot certonly --manual --preferred-challenges=dns -d $1
fi
