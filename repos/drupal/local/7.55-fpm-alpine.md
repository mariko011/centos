# `drupal:7.55-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:64da18acb73280f4a2fa6c64d1078e591873a9cec1e4bbd72d9f91c5889d62fd`
- Created: `2017-06-09T16:59:12.036020898Z`
- Virtual Size: ~ 86.74 Mb  
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
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.20`
  - `PHP_URL=https://secure.php.net/get/php-7.0.20.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.20.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=31b9cf1fb83fe3cd82c2f6603a0ae81ae6abacb5286827e362d8f85e68908e0a`
  - `PHP_MD5=e84615871c1c6dbd0860746a31f3a7c8`
  - `DRUPAL_VERSION=7.55`
  - `DRUPAL_MD5=ad97f8c86cee7be9d6ab13724b55fa1c`
