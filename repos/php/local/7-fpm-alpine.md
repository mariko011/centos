# `php:7.1.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:13e86874f24bb5060b4c09d9b0d8857288fd74f94e46856b74604ec5b4e198c1`
- Created: `2016-12-07T19:11:55.895991382Z`
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
