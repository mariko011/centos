# `wordpress:4.7.3-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:1eb73eb2c29622a444417a60481ac1f8c0d4dc31ae11318eddd1cc6124b0dd00`
- Created: `2017-03-07T01:34:55.895751514Z`
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
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.16`
  - `PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309`
  - `PHP_MD5=6161aba9d24322d889da5d2ff944bddf`
  - `WORDPRESS_VERSION=4.7.3`
  - `WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98`
