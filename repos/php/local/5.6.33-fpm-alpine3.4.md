# `php:5.6.33-fpm-alpine3.4`

## Docker Metadata

- Image ID: `sha256:a3f552801bce94850e26c58615a31432cf727c4b83895a326daf8034adc733e5`
- Created: `2018-01-10T04:19:32.790288018Z`
- Virtual Size: ~ 54.90 Mb  
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
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.33`
  - `PHP_URL=https://secure.php.net/get/php-5.6.33.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.33.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=9004995fdf55f111cd9020e8b8aff975df3d8d4191776c601a46988c375f3553`
  - `PHP_MD5=`
