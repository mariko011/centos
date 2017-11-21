# `wordpress:4.9.0-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:80d96e4fdc063ae5aa32c5841086236f8b8bef8bebf2ef480224c84168a71de0`
- Created: `2017-11-21T00:04:20.701397915Z`
- Virtual Size: ~ 100.02 Mb  
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
  - `PHP_VERSION=7.1.11`
  - `PHP_URL=https://secure.php.net/get/php-7.1.11.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.11.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=074093e9d7d21afedc5106904218a80a47b854abe368d2728ed22184c884893e`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9`
  - `WORDPRESS_SHA1=6127bd2aed7b7c0a2c1789c8f17a2222a9081d6c`
