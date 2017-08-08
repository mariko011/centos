# `php:7.1.8-zts-alpine`

## Docker Metadata

- Image ID: `sha256:c9e7c4457d95483f731a1da43db5582d5491adaece40485f5fe7cf6bdbaeeca1`
- Created: `2017-08-04T19:16:30.634954553Z`
- Virtual Size: ~ 57.45 Mb  
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
  - `PHP_VERSION=7.1.8`
  - `PHP_URL=https://secure.php.net/get/php-7.1.8.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.8.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=8943858738604acb33ecedb865d6c4051eeffe4e2d06f3a3c8f794daccaa2aab`
  - `PHP_MD5=`
