# `drupal:8.3.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:c998e3ded396b1a5aee7dcf7e8d91f9757f2431c1b16ea9587b4f9b1ea4c599f`
- Created: `2017-05-30T17:04:23.769375592Z`
- Virtual Size: ~ 129.98 Mb  
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
  - `PHP_VERSION=7.1.5`
  - `PHP_URL=https://secure.php.net/get/php-7.1.5.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.5.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=d149a3c396c45611f5dc6bf14be190f464897145a76a8e5851cf18ff7094f6ac`
  - `PHP_MD5=fb0702321c7aceac68c82b8c7a10d196`
  - `DRUPAL_VERSION=8.3.2`
  - `DRUPAL_MD5=d1fce1ec78ca1bcde4a346f4c06531b4`
