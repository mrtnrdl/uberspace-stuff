#!/bin/bash

domain="blog.mrtnrdl.de"
#suffix="0002"

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin

letsencrypt certonly

uberspace-add-certificate -k ~/.config/letsencrypt/live/$domain/privkey.pem -c ~/.config/letsencrypt/live/$domain/cert.pem
