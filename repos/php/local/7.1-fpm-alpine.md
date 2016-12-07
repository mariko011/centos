# `php:7.1.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:8f31bdc999caedea01fce2bc413c81c8dfa8ad28a5b4ad726e07a144adeac75c`
- Created: `2016-12-06T21:37:18.560074981Z`
- Arch: `linux`/`amd64`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `LDFLAGS=-Wl,-O1 -Wl,--hash-style=both`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0`
  - `PHP_VERSION=7.1.0`
  - `PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6`
  - `PHP_MD5=cf36039303c47f493100afea522a8f53`
