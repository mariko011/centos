# `php:7.1.11-zts-alpine3.4`

## Docker Metadata

- Image ID: `sha256:46531cfee728552e117d6c29ac0de65ca9c6cbf8da38b982d11bc4fc408c3214`
- Created: `2017-11-04T10:46:13.707053989Z`
- Virtual Size: ~ 57.09 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php","-a"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.11`
  - `PHP_URL=https://secure.php.net/get/php-7.1.11.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.11.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=074093e9d7d21afedc5106904218a80a47b854abe368d2728ed22184c884893e`
  - `PHP_MD5=`
