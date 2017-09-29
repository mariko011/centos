# `php:7.2.0RC3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:c3f0f9eec5ea80846978758d2f096ff4a19fc7e513041f759cdae0a5fc91e226`
- Created: `2017-09-29T03:10:05.630916294Z`
- Virtual Size: ~ 77.66 Mb  
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
  - `PHP_VERSION=7.2.0RC3`
  - `PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz.asc`
  - `PHP_SHA256=abe0a237f94837854f2cfd9c7dc99fbca2c817ae1d6194a514f29b463db36853`
  - `PHP_MD5=`
