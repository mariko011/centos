# `php:7.1.3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:e97e3208d0190e210967dea2157839e13b7f7143a264be95574b7abf7c9ccc0f`
- Created: `2017-03-17T22:29:01.075942738Z`
- Virtual Size: ~ 69.61 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.3`
  - `PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0`
  - `PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4`
