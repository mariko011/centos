# `wordpress:4.7.2-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:de74c287e059fa73e088398ff4e926b65ec4809d698dbac681d2007192db9698`
- Created: `2017-02-17T21:14:37.335749833Z`
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
  - `PHP_VERSION=7.0.16`
  - `PHP_URL=https://secure.php.net/get/php-7.0.16.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.16.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=244ac39bc657448962860aa7a590e4417f68513ad5e86ee2727b1328b0537309`
  - `PHP_MD5=6161aba9d24322d889da5d2ff944bddf`
  - `WORDPRESS_VERSION=4.7.2`
  - `WORDPRESS_SHA1=7b687f1af589c337124e6247229af209ec1d52c3`
