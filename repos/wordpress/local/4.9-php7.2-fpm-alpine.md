# `wordpress:4.9.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:df4fe013b1b4ed07b59ec1f2004d9ebe31a11de4b75ac3bfda3e668237fd674f`
- Created: `2018-01-19T01:46:01.606827049Z`
- Virtual Size: ~ 107.53 Mb  
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
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.1`
  - `PHP_URL=https://secure.php.net/get/php-7.2.1.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.1.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=6c6cf82fda6660ed963821eb0525214bb3547e8e29f447b9c15b2d8e6efd8822`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.2`
  - `WORDPRESS_SHA1=96e0b38028b0b2d00209290ebac20cb9f4a6d085`
