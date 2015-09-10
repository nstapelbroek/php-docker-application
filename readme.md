# php-docker-application

A personal view on building containerized php applications using Docker. Basically this image is tutum's [apache-php](https://github.com/tutumcloud/apache-php) container with a few extra bash commands to integrate better with my personal workflow.

## How should i use this?
Assuming you allready have docker installed and nothing is listening on your http port you can "containerize" your php application like so:
1. `cd` to your application
2. `docker run -p 80:80 -v $(pwd):/app --name {application_name} nstapelbroek/php-docker-application`

A few things to note:
- Replace {application_name} with your own application name. This will be the name of the container, if you ever need to restart it.
- If your application doesn't require the apache virtualhost to serve the public folder as its documentroot, be sure to append `-e USE_PUBLIC='FALSE'` after the {application_name}
- If you wish to burry your head in the sand, feel free to append `-d` to run your docker container in the backgroud. your terminal won't be filled with output.
