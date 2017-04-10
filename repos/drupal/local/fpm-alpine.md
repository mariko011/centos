# `drupal:8.3.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:28c238b7ea9a18428b723e474cafa0bdc5a8634bd1e6e3ad566395889a6e271f`
- Created: `2017-04-07T19:19:28.428963005Z`
- Virtual Size: ~ 130.74 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.3`
  - `PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0`
  - `PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4`
  - `DRUPAL_VERSION=8.3.0`
  - `DRUPAL_MD5=1dcce599eddba07eb00e8879937525c3`
