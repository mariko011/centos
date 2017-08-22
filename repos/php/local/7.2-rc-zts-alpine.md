# `php:7.2.0beta3-zts-alpine`

## Docker Metadata

- Image ID: `sha256:b35475b9e9a0b4f2eb82a3bbdb83ae173ddb4023460d09b2360109eb0c9bb7a0`
- Created: `2017-08-21T18:44:42.28890473Z`
- Virtual Size: ~ 64.86 Mb  
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
  - `PHP_VERSION=7.2.0beta3`
  - `PHP_URL=https://downloads.php.net/~remi/php-7.2.0beta3.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0beta3.tar.xz.asc`
  - `PHP_SHA256=86ab60f96223768d2cb6b3669ce5d048ce904beccf532119aa02058e7cc9e498`
  - `PHP_MD5=`
