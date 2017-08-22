# `php:7.2.0beta3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:f3eb7ba1ccf2b16499f012c0fb0a8226f82522e86ad014d091d690f6bfe20fbd`
- Created: `2017-08-21T18:30:16.662971383Z`
- Virtual Size: ~ 78.55 Mb  
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
  - `PHP_VERSION=7.2.0beta3`
  - `PHP_URL=https://downloads.php.net/~remi/php-7.2.0beta3.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0beta3.tar.xz.asc`
  - `PHP_SHA256=86ab60f96223768d2cb6b3669ce5d048ce904beccf532119aa02058e7cc9e498`
  - `PHP_MD5=`
