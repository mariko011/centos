# `wordpress:4.8.1-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:6818453860491f83aec46a970125a4230bdb5f72100a9da10a19c310713a6ab8`
- Created: `2017-08-17T19:01:28.348233334Z`
- Virtual Size: ~ 96.13 Mb  
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
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.8`
  - `PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.8.1`
  - `WORDPRESS_SHA1=5376cf41403ae26d51ca55c32666ef68b10e35a4`
