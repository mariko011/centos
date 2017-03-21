# `wordpress:4.7.3-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:0541a4c5fedd3a0501f4aef5e726053ab46f89e83694504cc3eb8f1b34c9a08c`
- Created: `2017-03-20T21:56:57.975871427Z`
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
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E`
  - `PHP_VERSION=7.1.3`
  - `PHP_URL=https://secure.php.net/get/php-7.1.3.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.3.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=e4887c2634778e37fd962fbdf5c4a7d32cd708482fe07b448804625570cb0bb0`
  - `PHP_MD5=d604d688be17f4a05b99dbb7fb9581f4`
  - `WORDPRESS_VERSION=4.7.3`
  - `WORDPRESS_SHA1=35adcd8162eae00d5bc37f35344fdc06b22ffc98`
