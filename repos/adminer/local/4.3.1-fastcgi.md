# `adminer:4.3.1-fastcgi`

## Docker Metadata

- Image ID: `sha256:2a913061a534c28d99d66333a5deadc44459d6087b8cd4afdd9cd4c916bc7fd8`
- Created: `2017-05-30T16:04:17.799657572Z`
- Virtual Size: ~ 70.75 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pcre-dev 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.19`
  - `PHP_URL=https://secure.php.net/get/php-7.0.19.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.19.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=640e5e3377d15a6d19adce2b94a9d876eeddabdb862d154a5e347987f4225ef6`
  - `PHP_MD5=1a17e45c8be9ce28f036d884563e8ae7`
  - `ADMINER_VERSION=4.3.1`
  - `ADMINER_DOWNLOAD_SHA256=71688c5db4d4e504c48c26ec2966ad85e721ef61e0377c5505cfb50b026d5491`
  - `ADMINER_SRC_DOWNLOAD_SHA256=fd016c93bb3bb8e85ed9cf826064584012c4db83f30c4948d701250e29a6d953`
