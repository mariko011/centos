# `php:5.6.31-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:48a90e7cfb1bfa654b493992d6ecbe526a711703c524a676e291406d2edfba1f`
- Created: `2017-09-27T22:19:04.226872587Z`
- Virtual Size: ~ 54.17 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.31`
  - `PHP_URL=https://secure.php.net/get/php-5.6.31.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.31.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=c464af61240a9b7729fabe0314cdbdd5a000a4f0c9bd201f89f8628732fe4ae4`
  - `PHP_MD5=`
