# renew-letsencrypt-certificates

A small script to update all letsencrypt domains on your uberspace.

## Installation / Getting started
After you cloned the repository, I would advise you to link the script to a folder where you keep all your scripts. You can bundle different scripts in a single location and still manage them with different git repositories. 

## Usage
Add a new cronjob.

    crontab -e 

Then you enter the following line

    @daily ~/<scriptfolder>/renew-letsencrypt-certificates.sh

That's it. 
