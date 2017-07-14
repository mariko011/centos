# `php:7.2.0alpha3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:d7ab3cf3dd982bf376a7e7fc2f35463be0657fe9fae6ea94168e0f0c57e32c85`
- Created: `2017-07-13T17:17:00.44129233Z`
- Virtual Size: ~ 79.03 Mb  
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
  - `PHP_VERSION=7.2.0alpha3`
  - `PHP_URL=http://downloads.php.net/~remi/php-7.2.0alpha3.tar.xz`
  - `PHP_ASC_URL=http://downloads.php.net/~remi/php-7.2.0alpha3.tar.xz.asc`
  - `PHP_SHA256=68abd6fc51cc5cfc7a7b1c2153644c7052f3ed841c21519095dda24eee67f63b`
  - `PHP_MD5=`
