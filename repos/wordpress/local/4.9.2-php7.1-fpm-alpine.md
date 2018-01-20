# `wordpress:4.9.2-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:2bd7e8920860ea745fbeb3e1f4dd0f04cd1bb9bd1fd6389db99041eb55d9c904`
- Created: `2018-01-19T01:32:59.388298666Z`
- Virtual Size: ~ 100.07 Mb  
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
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172`
  - `PHP_VERSION=7.1.13`
  - `PHP_URL=https://secure.php.net/get/php-7.1.13.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.13.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=1a0b3f2fb61959b57a3ee01793a77ed3f19bde5aa90c43dcacc85ea32f64fc10`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.2`
  - `WORDPRESS_SHA1=96e0b38028b0b2d00209290ebac20cb9f4a6d085`
