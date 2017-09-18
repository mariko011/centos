# `drupal:8.4.0-rc1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:0d548dcf92f4a1221665fd792e38932e4b572f9042cec81fec6765236632057b`
- Created: `2017-09-15T02:44:59.980243695Z`
- Virtual Size: ~ 131.67 Mb  
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
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.9`
  - `PHP_URL=https://secure.php.net/get/php-7.1.9.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.9.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=ec9ca348dd51f19a84dc5d33acfff1fba1f977300604bdac08ed46ae2c281e8c`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=8.4.0-rc1`
  - `DRUPAL_MD5=28f7b802ddf81f6a5f50a1400766d913`
