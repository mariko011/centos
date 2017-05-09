# `wordpress:4.7.4-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:f96e027f3374279d305d8c1fec4afe520aa44b74a62e34d7a5caf453b5dcd60b`
- Created: `2017-05-06T00:09:23.537132452Z`
- Virtual Size: ~ 94.80 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.18`
  - `PHP_URL=https://secure.php.net/get/php-7.0.18.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.18.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=679cffcdf2495dee5ab89bda595e678a1096136678b3a1d08f1f57ba347c234d`
  - `PHP_MD5=a578c55644d233635d2caa96c3a6f9c7`
  - `WORDPRESS_VERSION=4.7.4`
  - `WORDPRESS_SHA1=153592ccbb838cafa1220de9174ec965df2e9e1a`
