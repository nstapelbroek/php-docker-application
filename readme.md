# php-docker-application

A personal view on building containerized PHP applications using Docker. Basically this image is Tutum's [apache-php](https://github.com/tutumcloud/apache-php) container with a few extra bash commands to integrate better with my personal workflow. If you have any tips on using Docker at all, hit me up!

## How should i use this?
Assuming you already have docker installed and nothing is listening on your HTTP port you can "containerize" your PHP application like so:

1. `cd` to your application
2. `docker run -p 80:80 -v $(pwd):/app --name {application_name} nstapelbroek/php-docker-application`

A few extra things to note:
- Replace {application_name} with your own application name. This will be the name of the container, if you ever need to restart it.
- If your application doesn't require the apache virtualhost to serve the public folder as its documentroot, be sure to append `-e USE_PUBLIC='FALSE'` after the {application_name}
- If you wish to bury your head in the sand, feel free to append `-d` to run your docker container in the background. your terminal won't be filled with output.
- Using a database? [Don't forget to link!](https://docs.docker.com/userguide/dockerlinks/)
- Neglect the `-p 80:80` and use [a nginx reverse proxy container](https://github.com/jwilder/nginx-proxy) to show everyone how dominant you are: you can now run multiple containers!

## Extra disclaimer

I've just started using Docker and I am using this to harvest feedback. If you have a well- founded opinion on how Docker should be used and why I am doing this wrong. Feel free to tell me.
