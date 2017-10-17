# `php:7.2.0RC4-zts-alpine3.6`

## Docker Metadata

- Image ID: `sha256:46962e2c43dfab7798e528b5ce35650fc46c5652d515739eff503a0321a53fa7`
- Created: `2017-10-14T01:07:42.167448828Z`
- Virtual Size: ~ 64.52 Mb  
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
  - `PHP_VERSION=7.2.0RC4`
  - `PHP_URL=https://downloads.php.net/~remi/php-7.2.0RC4.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~remi/php-7.2.0RC4.tar.xz.asc`
  - `PHP_SHA256=08ee9e764891224d73f157e01594605fc85c63ffc9d4773d9ac29b0e3160c68f`
  - `PHP_MD5=`
