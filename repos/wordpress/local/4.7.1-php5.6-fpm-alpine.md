# `wordpress:4.7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:ccbc3d162dc06aed0a809f987669902fa8f37ad41cd0923335ae73e2f4805d27`
- Created: `2017-01-13T19:37:50.68774239Z`
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
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.29`
  - `PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7`
  - `PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164`
  - `WORDPRESS_VERSION=4.7.1`
  - `WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6`
