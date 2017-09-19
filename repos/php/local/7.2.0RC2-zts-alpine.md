# `php:7.2.0RC2-zts-alpine`

## Docker Metadata

- Image ID: `sha256:c5d393fda3fb21c00148b850b88f6b03a7d160ce1a2df415aa1bf8e46807cd52`
- Created: `2017-09-15T21:03:36.638844858Z`
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
  - `PHP_VERSION=7.2.0RC2`
  - `PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC2.tar.xz.asc`
  - `PHP_SHA256=0406366fcd5be4ee5e76e3c6a4279e04f93a1827a44d27c4f57fbed9e01cd281`
  - `PHP_MD5=`
