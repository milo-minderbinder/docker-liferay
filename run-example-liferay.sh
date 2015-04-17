#!/bin/bash

docker build -t mminderbinder/liferay .
docker run -it --rm -p 127.0.0.1:8080:8080 -p 127.0.0.1:8009:8009 --name liferay mminderbinder/liferay
