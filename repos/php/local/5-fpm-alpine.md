# `php:5.6.28-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:286f83b0721b657ef2cc7d60bcac74ef076388312f173b27ae3dceb6683eae7c`
- Created: `2016-12-07T19:12:30.299884697Z`
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
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.28`
  - `PHP_URL=https://secure.php.net/get/php-5.6.28.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.28.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=07187ba2870f89cef334cd2ad6cb801aeec5eaf283da0293a9a6be75d6786d11`
  - `PHP_MD5=1e01c66b2e67ab3b56a6180ee560fe4c`
