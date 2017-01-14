# `wordpress:4.7.1-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:67164762a42e5799d084673bcaab310e6acb8d91c413bdac40b2628b9c682b49`
- Created: `2017-01-13T19:38:08.423762501Z`
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
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763`
  - `PHP_VERSION=7.0.14`
  - `PHP_URL=https://secure.php.net/get/php-7.0.14.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.14.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=0f1dff6392a1cc2ed126b9695f580a2ed77eb09d2c23b41cabfb41e6f27a8c89`
  - `PHP_MD5=a51f1d4f03f4e4c745856e9f76fca476`
  - `WORDPRESS_VERSION=4.7.1`
  - `WORDPRESS_SHA1=8e56ba56c10a3f245c616b13e46bd996f63793d6`
