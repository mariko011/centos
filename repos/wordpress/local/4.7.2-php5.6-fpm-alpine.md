# `wordpress:4.7.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:0241d4aab7f49b9f20610c8050960c94d0ef2ff4312c72b0bfa30a0be6d58f8a`
- Created: `2017-02-10T01:04:00.515892373Z`
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
  - `PHP_VERSION=5.6.30`
  - `PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805`
  - `PHP_MD5=68753955a8964ae49064c6424f81eb3e`
  - `WORDPRESS_VERSION=4.7.2`
  - `WORDPRESS_SHA1=7b687f1af589c337124e6247229af209ec1d52c3`
