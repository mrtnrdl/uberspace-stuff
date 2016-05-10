#!/bin/bash

domain="blog.mrtnrdl.de"
suffix="-0001"

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin

letsencrypt certonly

uberspace-add-certificate -k ~/.config/letsencrypt/live/$domain$suffix/privkey.pem -c ~/.config/letsencrypt/live/$domain$suffix/cert.pem
