# `php:7.1.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:a594f92bea1deea41ba44dcb9e2f97e4f4ffefa79f1fc5fe8a259a3b203d15f8`
- Created: `2017-03-03T22:57:17.551732146Z`
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
  - `PHP_VERSION=7.1.2`
  - `PHP_URL=https://secure.php.net/get/php-7.1.2.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.2.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=d815a0c39fd57bab1434a77ff0610fb507c22f790c66cd6f26e27030c4b3e971`
  - `PHP_MD5=d79afea1870277c86fac903566fb6c5d`
