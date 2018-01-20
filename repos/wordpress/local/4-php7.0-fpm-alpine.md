# `wordpress:4.9.2-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:defa98568c7d46955cd68aff75e5420c2f9b2ab082e0bc67c42ce86de8f39895`
- Created: `2018-01-19T00:55:47.854436211Z`
- Virtual Size: ~ 98.19 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.27`
  - `PHP_URL=https://secure.php.net/get/php-7.0.27.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.27.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=4b2bc823e806dbf7b62fe0b92b0d14b0c6e03f88c3fc5d96278416c54ce11f6c`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.2`
  - `WORDPRESS_SHA1=96e0b38028b0b2d00209290ebac20cb9f4a6d085`
