#!/bin/bash
docker stop dev-container-name  
docker rm dev-container-name  
docker run --name dev-container-name -v "$PWD":/usr/share/nginx/html -v "$PWD"/dev/nginx.conf:/etc/nginx/nginx.conf:ro -p 3000:80 -d nginx 