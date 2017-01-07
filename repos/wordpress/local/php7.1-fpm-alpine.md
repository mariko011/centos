# `wordpress:4.7.0-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:d145d13f20636e0f0dc6b94ebcc786d25d39ef1ca03582b1e44dfc0efbd5d087`
- Created: `2017-01-07T00:00:30.843989278Z`
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0`
  - `PHP_VERSION=7.1.0`
  - `PHP_URL=https://secure.php.net/get/php-7.1.0.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.0.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=a810b3f29c21407c24caa88f50649320d20ba6892ae1923132598b8a0ca145b6`
  - `PHP_MD5=cf36039303c47f493100afea522a8f53`
  - `WORDPRESS_VERSION=4.7`
  - `WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020`
