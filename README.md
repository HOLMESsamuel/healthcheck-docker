# healthcheck-docker

This repository allow to create a docker image for a service that does curl healthcheck requests to a given URL at a given frequency.

## how to use ?

You can either build the image locally with command : 

```
docker image build -t healthcheck .
```

And then replace the image name by "healthcheck" in the docker-compose.yml file.
Or just use the published image and leave the docker-compose.yml file untouched.

You can change variables inside docker-compose.yml file to change the URL and frequency. I will add more parameters later.

Then just run :

```
docker stack deploy -c docker-compose.yml healthcheck
```

This will create a service executing the requests. For now you can consult request result and time in service logs but I will add notification features later.

