# `wordpress:4.7.3-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:3669b24a74d4e2af085061fcc142ae5c4d126b4b2885f50e5a79ec0bf686c2a2`
- Created: `2017-04-18T23:27:43.539517418Z`
- Virtual Size: ~ 94.69 Mb  
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
  - `WORDPRESS_VERSION=4.7.3`
  - `WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98`
