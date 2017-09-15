# `php:7.2.0RC1-zts-alpine`

## Docker Metadata

- Image ID: `sha256:901d18126eb951870ee29c644f9b1b75a778433ee777888f96697db48491d11a`
- Created: `2017-09-14T23:57:38.675431982Z`
- Virtual Size: ~ 64.44 Mb  
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
  - `PHP_VERSION=7.2.0RC1`
  - `PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC1.tar.xz.asc`
  - `PHP_SHA256=04f68d9accb60e56adecc34a80b84bde16edb255a13eef701ea2d6c2b13dc15b`
  - `PHP_MD5=`
