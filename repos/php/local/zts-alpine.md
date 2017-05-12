# `php:7.1.4-zts-alpine`

## Docker Metadata

- Image ID: `sha256:5effad81c7527edd2eb908ca207c1a5a0619d2e7642e3c8ee01ab2dbe4644009`
- Created: `2017-05-11T18:30:09.084013184Z`
- Virtual Size: ~ 57.31 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php","-a"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.4`
  - `PHP_URL=https://secure.php.net/get/php-7.1.4.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.4.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=71514386adf3e963df087c2044a0b3747900b8b1fc8da3a99f0a0ae9180d300b`
  - `PHP_MD5=a74c13f8779349872b365e6732e8c98e`
