Apache
=========

[![Build Status](https://travis-ci.org/awasilyev/apache-container.svg?branch=master)](https://travis-ci.org/awasilyev/memcached-container)

Use this role to add a apache httpd service to your Ansible Container project. See Role Variables below for how to configure ssl and additional parameters. 
It will listen on 80 and 443 ports (if ssl enabled).

Run the following commands to install the service:

```
# Set the working directory to your Ansible Container project root
$ cd myproject

# Install the service
$ ansible-container install awasilyev.apache-container-role 
```

Role Variables
--------------

Set the following environment variables in container.yml:

APACHE_HOSTNAME
> apache hostname (default localhost)

APACHE_SSL
> use ssl. If /etc/httpd/ssl/cert.crt and /etc/httpd/ssl/cert.key files exists - they will be used, if not - self-signed certificate will be generated  (0 - no / 1 - yes, default: 0)

APACHE_SSL_PROTOCOLS
> SSL protocol (default "All -SSLv2 -SSLv3")

APACHE_SSL_CIPHER_SUITE
> SSL cipher suite (default "AES256+EECDH:AES256+EDH")

APACHE_ALLOW_OVERRIDE
> AllowOverride configuration option (default "All")

APACHE_VHOST_OPTIONS
> Options vhost configuration option (default "Indexes FollowSymLinks")

APACHE_DEFAULT_CHARSET
> Apache default charset (default "UTF-8")

APACHE_EXTRA_PARAMETERS
> list of additional parameters for vhost. for example 
```
APACHE_EXTRA_PARAMETERS: ['RewriteCond %{HTTP_HOST} !^www\. [NC]','RewriteRule ^(.*)$ http://www.%{HTTP_HOST}%{REQUEST_URI} [R=301,L]']
```
(default [])

Dependencies
------------

None.

License
-------

MIT/BSD

Author Information
------------------

[@awasilyev](https://github.com/awasilyev)
