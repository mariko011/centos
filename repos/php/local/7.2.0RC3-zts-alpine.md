# `php:7.2.0RC3-zts-alpine`

## Docker Metadata

- Image ID: `sha256:6a46c8721c64a9493c3ac2b3d983003a516f3e791ec17f9715243b6dfd450390`
- Created: `2017-09-29T03:18:51.607434983Z`
- Virtual Size: ~ 64.01 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php","-a"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.0RC3`
  - `PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC3.tar.xz.asc`
  - `PHP_SHA256=abe0a237f94837854f2cfd9c7dc99fbca2c817ae1d6194a514f29b463db36853`
  - `PHP_MD5=`
