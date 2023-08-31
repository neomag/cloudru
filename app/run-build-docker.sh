#!/bin/bash
docker build --no-cache -t app .
docker run -e UUID=$(uuid) -e AUTHOR=neomag -d -p 8000:8000 app

