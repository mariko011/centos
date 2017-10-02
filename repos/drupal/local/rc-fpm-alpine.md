# `drupal:8.4.0-rc2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:33c03687193a6ea87755a9ea100f23afaac48e4f3df1e62964c225d0fbffa897`
- Created: `2017-09-30T00:21:39.729509802Z`
- Virtual Size: ~ 132.13 Mb  
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
  - `PHP_VERSION=7.1.10`
  - `PHP_URL=https://secure.php.net/get/php-7.1.10.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.10.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=2b8efa771a2ead0bb3ae67b530ca505b5b286adc873cca9ce97a6e1d6815c50b`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=8.4.0-rc2`
  - `DRUPAL_MD5=50730355dd1a82d988e484c2b4eff422`
