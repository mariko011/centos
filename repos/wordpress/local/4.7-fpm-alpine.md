# `wordpress:4.7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:cc92cf1f7ceb6fc54fd7c3f0f755f5045f9259e3b505a147875b65a31615c288`
- Created: `2016-12-14T21:29:52.496031075Z`
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
  - `WORDPRESS_VERSION=4.7`
  - `WORDPRESS_SHA1=1e14144c4db71421dc4ed22f94c3914dfc3b7020`
