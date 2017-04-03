# `drupal:8.3.0-rc2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:1e139c6745cc0f502051ad85d4014ab236e5ccd60ceaf9d24847ad4cd11c6ad0`
- Created: `2017-03-20T18:01:25.927522907Z`
- Virtual Size: ~ 128.44 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.17`
  - `PHP_URL=https://secure.php.net/get/php-7.0.17.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.17.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=471c16fcdd6a5e1a37199e97bcaeea6117626229785185be7532aaa7c6ee04be`
  - `PHP_MD5=549df69a7a3c79d49fcafe2097579d9e`
  - `DRUPAL_VERSION=8.3.0-rc2`
  - `DRUPAL_MD5=3bcddc9a48801f7035c7cb0e6f02f6d0`
