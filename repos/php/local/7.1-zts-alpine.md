# `php:7.1.3-zts-alpine`

## Docker Metadata

- Image ID: `sha256:2713342975cc0ba8e5b2fac07fe26beeed4952695770b26c42783c7ed5bf1230`
- Created: `2017-03-17T22:36:54.24770402Z`
- Virtual Size: ~ 57.92 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php","-a"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.3`
  - `PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0`
  - `PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4`
