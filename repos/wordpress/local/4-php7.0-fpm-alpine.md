# `wordpress:4.8.0-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:d0dd6c74b4067d39bcc08634380345ccabf0088c1d40a431e605ab10e3cfd8ae`
- Created: `2017-07-21T17:43:44.896641847Z`
- Virtual Size: ~ 94.28 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
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
  - `PHP_VERSION=7.0.21`
  - `PHP_URL=https://secure.php.net/get/php-7.0.21.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.21.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=6713fe3024365d661593235b525235045ef81f18d0043654658c9de1bcb8b9e3`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.8`
  - `WORDPRESS_SHA1=3738189a1f37a03fb9cb087160b457d7a641ccb4`
