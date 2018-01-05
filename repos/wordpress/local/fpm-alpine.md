# `wordpress:4.9.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:42efa362b065aacf0eab5e0168801ee60020af16df9db3ec14d20be76cc84dc1`
- Created: `2018-01-04T02:42:45.720082474Z`
- Virtual Size: ~ 108.39 Mb  
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
  - `PHP_VERSION=7.2.0`
  - `PHP_URL=https://secure.php.net/get/php-7.2.0.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.0.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=87572a6b924670a5d4aac276aaa4a94321936283df391d702c845ffc112db095`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.1`
  - `WORDPRESS_SHA1=892d2c23b9d458ec3d44de59b753adb41012e903`
