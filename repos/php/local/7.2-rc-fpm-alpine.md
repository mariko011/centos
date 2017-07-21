# `php:7.2.0beta1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:220b0a05eb8582cf2531f61c82073a106df682160a00740e5b71f947b70b760f`
- Created: `2017-07-21T00:17:44.89322092Z`
- Virtual Size: ~ 86.15 Mb  
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
  - `PHP_VERSION=7.2.0beta1`
  - `PHP_URL=http://downloads.php.net/~pollita/php-7.2.0beta1.tar.xz`
  - `PHP_ASC_URL=http://downloads.php.net/~pollita/php-7.2.0beta1.tar.xz.asc`
  - `PHP_SHA256=8d7d839cb20ba48f8c947ef44274ef625630f06c7e6d13f3f64b9d17205324db`
  - `PHP_MD5=`
