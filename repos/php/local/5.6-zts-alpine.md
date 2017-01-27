# `php:5.6.30-zts-alpine`

## Docker Metadata

- Image ID: `sha256:215a8adbaeb48829430cf5afc894b021ef34702502dc5d42376c9cc2b384be23`
- Created: `2017-01-24T19:42:25.243801762Z`
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php","-a"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.30`
  - `PHP_URL=https://secure.php.net/get/php-5.6.30.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.30.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=a363185c786432f75e3c7ff956b49c3369c3f6906a6b10459f8d1ddc22f70805`
  - `PHP_MD5=68753955a8964ae49064c6424f81eb3e`
