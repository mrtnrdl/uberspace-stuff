#!/bin/sh
valid_days=5
cert_dir='~/.config/letsencrypt/live'
cert_file='cert.pem'
domains='blog.mrtnrdl.de'

# find all certificates
export cert="$(find $cert_dir/$domain/ -iname $cert_file | sort -k1)"

# check certificate validation date
openssl x509 -checkend $(( $valid_days * 86400 )) -in "$cert" > /dev/null

# renew certifiacates if they are only 5 more days valid
if [ $? != 0 ]; then	
	letsencrypt certonly
	uberspace-add-certificate -k ~/.config/letsencrypt/live/blog.mrtnrdl.de-0001/privkey.pem -c ~/.config/letsencrypt/live/blog.mrtnrdl.de-0001/cert.pem
fi 

