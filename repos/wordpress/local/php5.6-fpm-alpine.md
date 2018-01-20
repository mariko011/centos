# `wordpress:4.9.2-php5.6-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:1e2993a9e42f0da8da5054bd254bd5a4d4ab48b8e24eba9ba68ce90d07a44d89`
- Created: `2018-01-19T00:46:05.772506507Z`
- Virtual Size: ~ 85.37 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
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
  - `WORDPRESS_VERSION=4.9.2`
  - `WORDPRESS_SHA1=96e0b38028b0b2d00209290ebac20cb9f4a6d085`
