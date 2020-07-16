#!/bin/sh
curl -L -s $1 -o /dev/null -w "%{http_code}"
