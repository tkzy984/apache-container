#!/bin/sh
rm -f /var/run/httpd/httpd.pid

exec httpd -DFOREGROUND
