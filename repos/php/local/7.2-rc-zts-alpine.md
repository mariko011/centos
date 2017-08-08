# `php:7.2.0beta2-zts-alpine`

## Docker Metadata

- Image ID: `sha256:67fbdb19eedc15476d3f86ea48fee10684b80f7dea0de19909227e7ed31f482a`
- Created: `2017-08-04T18:43:23.770759502Z`
- Virtual Size: ~ 64.53 Mb  
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
  - `PHP_VERSION=7.2.0beta2`
  - `PHP_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz`
  - `PHP_ASC_URL=http://downloads.php.net/~pollita/php-7.2.0beta2.tar.xz.asc`
  - `PHP_SHA256=0e2ac8e68c6fa92e9e14c610d78e162a711ba0e83987ecc9d02a6b898616c92d`
  - `PHP_MD5=`
