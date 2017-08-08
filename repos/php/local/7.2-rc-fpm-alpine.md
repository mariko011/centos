# `php:7.2.0beta2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:20ff37d36239c628de747014ba184773210ce7765cadbb767c695d7dd9fcd0cd`
- Created: `2017-08-04T18:31:48.552529648Z`
- Virtual Size: ~ 78.20 Mb  
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
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.0beta2`
  - `PHP_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz`
  - `PHP_ASC_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz.asc`
  - `PHP_SHA256=0e2ac8e68c6fa92e9e14c610d78e162a711ba0e83987ecc9d02a6b898616c92d`
  - `PHP_MD5=`
