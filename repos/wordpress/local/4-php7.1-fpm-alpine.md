# `wordpress:4.8.3-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:0ece934889b385b12baf67c0edb474f918facdc6e700c878720e01bd23531b74`
- Created: `2017-11-04T21:08:36.549888997Z`
- Virtual Size: ~ 95.80 Mb  
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
  - `WORDPRESS_VERSION=4.8.3`
  - `WORDPRESS_SHA1=8efc0b9f6146e143ed419b5419d7bb8400a696fc`
