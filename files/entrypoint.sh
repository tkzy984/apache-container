#!/bin/sh
rm -f /var/run/httpd/httpd.pid

mkdir -p /run/httpd

exec httpd -DFOREGROUND
