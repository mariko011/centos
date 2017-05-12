# `php:7.1.4-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:bfac4c1a30090268e38fd48dd9c4c24a80a5e26cc204ba0f2fb21ac68c1d4ef2`
- Created: `2017-05-11T18:16:54.359528318Z`
- Virtual Size: ~ 68.59 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.4`
  - `PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b`
  - `PHP_MD5=a74c13f8779349872b365e6732e8c98e`
