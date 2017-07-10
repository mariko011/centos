# `drupal:8.3.5-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:0cb5959e64458603e06fcda8df746ac4e8dadf2b8d5d0d584c773d531ade7bfa`
- Created: `2017-07-06T17:08:48.695837046Z`
- Virtual Size: ~ 130.26 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.6`
  - `PHP_URL=https://secure.php.net/get/php-7.1.6.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.6.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=01584dc521ab7ec84b502b61952f573652fe6aa00c18d6d844fb9209f14b245b`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=8.3.5`
  - `DRUPAL_MD5=23832fcfe0c6398727d24e582042f149`
