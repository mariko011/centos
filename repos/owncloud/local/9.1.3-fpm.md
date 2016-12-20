# `owncloud:9.1.3-fpm`

## Docker Metadata

- Image ID: `sha256:d17efac25e92e6a7dfdc5287910cd82fd4232c4dd8b058f55031650c248370aa`
- Created: `2016-12-19T23:05:36.890666387Z`
- Arch: `linux`/`amd64`
- Entrypoint: `["/entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.29`
  - `PHP_URL=https://secure.php.net/get/php-5.6.29.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.29.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=0ff352a433f73e2c82b0d5b283b600402518569bf72a74e247f356dacbf322a7`
  - `PHP_MD5=190bf5b52d1fc68d5500a8cdc7e33164`
  - `OWNCLOUD_VERSION=9.1.3`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-2`

Binary Packages:

- `acl=2.2.52-2`
- `libacl1:amd64=2.2.52-2`

Licenses: (parsed from: `/usr/share/doc/acl/copyright`, `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-2
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52-2.dsc' acl_2.2.52-2.dsc 2025 SHA256:015097e04740e84fefbe6c890d02c603f79edece45c51cbb5c18431647cd7aad
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52-2.debian.tar.xz' acl_2.2.52-2.debian.tar.xz 8524 SHA256:de81ec13cab6d33538db24a53c17838c5bdb32dd0e00e0b0b5d3325114e64e10
```

Likely also available for browsing at:

- https://sources.debian.net/src/acl/2.2.52-2/
- https://sources.debian.net/src/acl/2.2.52-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `adduser=3.113+nmu3`

Binary Packages:

- `adduser=3.113+nmu3`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.113+nmu3
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.113+nmu3.dsc' adduser_3.113+nmu3.dsc 1733 SHA256:7f9fa8841080591834389fd56352e2d05ca3d86eb4df15d2f13bea9faf4a6f2d
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.113+nmu3.tar.gz' adduser_3.113+nmu3.tar.gz 342554 SHA256:02682be3f51f3e732121f20a3e4922bb8bef15cfacb8767fc250a01d09502122
```

Likely also available for browsing at:

- https://sources.debian.net/src/adduser/3.113+nmu3/
- https://sources.debian.net/src/adduser/3.113+nmu3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `apt=1.0.9.8.4`

Binary Packages:

- `apt=1.0.9.8.4`
- `libapt-pkg4.12:amd64=1.0.9.8.4`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg4.12/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.0.9.8.4
'http://security.debian.org/pool/updates/main/a/apt/apt_1.0.9.8.4.dsc' apt_1.0.9.8.4.dsc 2530 SHA256:51fe8ce9490de264e55220e4c5f61a8bbb6d2f824c49c90914b2248db3e28bd3
'http://security.debian.org/pool/updates/main/a/apt/apt_1.0.9.8.4.tar.xz' apt_1.0.9.8.4.tar.xz 1793116 SHA256:ac2a267b9f98685977d421e41b4518eceb66e9b85cd0d4a9f9a03db729190f7a
```

Likely also available for browsing at:

- https://sources.debian.net/src/apt/1.0.9.8.4/
- https://sources.debian.net/src/apt/1.0.9.8.4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `attr=1:2.4.47-2`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.47-2.dsc' attr_2.4.47-2.dsc 2027 SHA256:ee842d6d62d473acf02b494c432cf33128fa46455a09d3172c77c252449fa1a6
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.47-2.debian.tar.xz' attr_2.4.47-2.debian.tar.xz 8096 SHA256:f65909562def601b1556393f5656032c058dc574ba622414ad3eb80c7b05a42a
```

Likely also available for browsing at:

- https://sources.debian.net/src/attr/1:2.4.47-2/
- https://sources.debian.net/src/attr/1:2.4.47-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `audit=1:2.4-1`

Binary Packages:

- `libaudit-common=1:2.4-1`
- `libaudit1:amd64=1:2.4-1+b1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.4-1
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.4-1.dsc' audit_2.4-1.dsc 2068 SHA256:01d240bd783697b8ab4cd941f944612eebc81e1f535a8afb36b25ab3021cd15f
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.4.orig.tar.gz' audit_2.4.orig.tar.gz 937809 SHA256:6e5d39e7af9d00477ef60f824be8c93bd23a227869d6993ff36b7e7fa28fe99b
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.4-1.debian.tar.xz' audit_2.4-1.debian.tar.xz 15808 SHA256:c18c1b88c41f3b8be9e59d3041563599f822994cb10574ffc17f00f0a157c12c
```

Likely also available for browsing at:

- https://sources.debian.net/src/audit/1:2.4-1/
- https://sources.debian.net/src/audit/1:2.4-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `autoconf=2.69-8`

Binary Packages:

- `autoconf=2.69-8`

Licenses: (parsed from: `/usr/share/doc/autoconf/copyright`)

- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf exception`
- `GPL-3+ with Texinfo exception`
- `MIT-X-Consortium`
- `no-modification`
- `other`
- `permissive`
- `permissive-long-disclaimer`
- `permissive-short-disclaimer`
- `permissive-without-disclaimer`
- `permissive-without-notices-or-disclaimer`

Source:

```console
$ apt-get source -qq --print-uris autoconf=2.69-8
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-8.dsc' autoconf_2.69-8.dsc 1961 SHA256:cdf9c0f1959925e1f80746eac03dea2e95c2b7a12b1d14c78134e7ea813ca9ad
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-8.debian.tar.xz' autoconf_2.69-8.debian.tar.xz 21220 SHA256:5ae055184f30a0c54523cf88e44aca6efdb772f02ed83991fc39b56a39ebe3f1
```

Likely also available for browsing at:

- https://sources.debian.net/src/autoconf/2.69-8/
- https://sources.debian.net/src/autoconf/2.69-8/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `base-files=8+deb8u6`

Binary Packages:

- `base-files=8+deb8u6`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=8+deb8u6
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_8+deb8u6.dsc' base-files_8+deb8u6.dsc 1026 SHA256:3433a64763c55e32323a89e34153b8c9d4c74bf95cfde3bc50f7717eae764ab8
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_8+deb8u6.tar.xz' base-files_8+deb8u6.tar.xz 53156 SHA256:2d7dcd1d16150516d0b3bf7773da2aba054720d7aa257046c30f5b1dace47df1
```

Likely also available for browsing at:

- https://sources.debian.net/src/base-files/8+deb8u6/
- https://sources.debian.net/src/base-files/8+deb8u6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `base-passwd=3.5.37`

Binary Packages:

- `base-passwd=3.5.37`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.37
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.37.dsc' base-passwd_3.5.37.dsc 1733 SHA256:211a49b6a3bbfdb61a91e9b5d9994c59d8a511a047c2cfc489c03c4c379d6cfe
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.37.tar.xz' base-passwd_3.5.37.tar.xz 51392 SHA256:7cb1cdd8e4aee39b5f59a3dc42d63619590fc4a2136db482fdb6be6e74bb3d04
```

Likely also available for browsing at:

- https://sources.debian.net/src/base-passwd/3.5.37/
- https://sources.debian.net/src/base-passwd/3.5.37/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `bash=4.3-11`

Binary Packages:

- `bash=4.3-11+b1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.3-11
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.3-11.dsc' bash_4.3-11.dsc 1540 SHA256:81394eb07c09c244e5d01c6be19e69fc60153575f11923cb10ea1ed87b71ce5b
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.3.orig.tar.gz' bash_4.3.orig.tar.gz 7516231 SHA256:b2fe79ddf9e7abdb4695e3070afa866d2a94a58d1cc9d731585330c753815491
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.3-11.debian.tar.xz' bash_4.3-11.debian.tar.xz 78732 SHA256:e042d5be5df8df339a516290bb27b1cdf027cbba0bd6c695e62f6782b4d72dba
```

Likely also available for browsing at:

- https://sources.debian.net/src/bash/4.3-11/
- https://sources.debian.net/src/bash/4.3-11/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `binutils=2.25-5`

Binary Packages:

- `binutils=2.25-5`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.25-5
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.25-5.dsc' binutils_2.25-5.dsc 2366 SHA256:5fdc61e6cf7ecd2332707cf0675272e86b7fddc6eef0af8cc115e8162a638697
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.25.orig.tar.gz' binutils_2.25.orig.tar.gz 34179370 SHA256:a608164c4858bfe42fcac4639c341482ba6207118dadeca624fdfabf39cd7281
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.25-5.diff.gz' binutils_2.25-5.diff.gz 146295 SHA256:517430db3c991bd1790071aa5f54de2af14a9ee19ec888bb4c129861c58f1a52
```

Likely also available for browsing at:

- https://sources.debian.net/src/binutils/2.25-5/
- https://sources.debian.net/src/binutils/2.25-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `bzip2=1.0.6-7`

Binary Packages:

- `bzip2=1.0.6-7+b3`
- `libbz2-1.0:amd64=1.0.6-7+b3`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-7.dsc' bzip2_1.0.6-7.dsc 2261 SHA256:098b7e38d1d634fc361847602bf85753dadeca121b9531f6dba2614b16e0637c
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-7.debian.tar.bz2' bzip2_1.0.6-7.debian.tar.bz2 59542 SHA256:17e030ccb2908d15553c1510869e09d8ef41b5f8e72c7c65d1d5503396a5bd3a
```

Likely also available for browsing at:

- https://sources.debian.net/src/bzip2/1.0.6-7/
- https://sources.debian.net/src/bzip2/1.0.6-7/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `ca-certificates=20141019+deb8u1`

Binary Packages:

- `ca-certificates=20141019+deb8u1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20141019+deb8u1
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20141019+deb8u1.dsc' ca-certificates_20141019+deb8u1.dsc 1433 SHA256:d1f91f7a31060dae8611347b31c1afca8f7afe600f4b7adefcb966d80f60368a
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20141019+deb8u1.tar.xz' ca-certificates_20141019+deb8u1.tar.xz 295128 SHA256:2066818ba8214001053c8889f409d062826cb37971723e1067cb1a830df8b18a
```

Likely also available for browsing at:

- https://sources.debian.net/src/ca-certificates/20141019+deb8u1/
- https://sources.debian.net/src/ca-certificates/20141019+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cdebconf=0.192`

Binary Packages:

- `libdebconfclient0:amd64=0.192`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.192
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.192.dsc' cdebconf_0.192.dsc 2574 SHA256:85d39068de77c67036b6e2ca5ebdf3990e19a6c5b0f01422608ff7656c166dbd
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.192.tar.xz' cdebconf_0.192.tar.xz 266320 SHA256:bb09e6c04b514dd12684dbc6eacde57fb03e282f67f0199e67078c13ffffd667
```

Likely also available for browsing at:

- https://sources.debian.net/src/cdebconf/0.192/
- https://sources.debian.net/src/cdebconf/0.192/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cloog=0.18.2-1`

Binary Packages:

- `libcloog-isl4:amd64=0.18.2-1+b2`

Licenses: (parsed from: `/usr/share/doc/libcloog-isl4/copyright`)

- `GFDL`
- `GPL`
- `LGPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cloog=0.18.2-1
'http://deb.debian.org/debian/pool/main/c/cloog/cloog_0.18.2-1.dsc' cloog_0.18.2-1.dsc 1299 SHA256:a7a186409b4436bc4202c01f6fca47380916176d18fc457805469596c151fd6e
'http://deb.debian.org/debian/pool/main/c/cloog/cloog_0.18.2.orig.tar.gz' cloog_0.18.2.orig.tar.gz 2376691 SHA256:ba3cc2d3750dfcb51f65ce029f0dda31347b8eeed216b1bac6170ab12d967581
'http://deb.debian.org/debian/pool/main/c/cloog/cloog_0.18.2-1.debian.tar.xz' cloog_0.18.2-1.debian.tar.xz 7824 SHA256:45cb83d37782fc705aac74942b8adfaa22680089f5b5537f0539daec89c08438
```

Likely also available for browsing at:

- https://sources.debian.net/src/cloog/0.18.2-1/
- https://sources.debian.net/src/cloog/0.18.2-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `coreutils=8.23-4`

Binary Packages:

- `coreutils=8.23-4`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.23-4
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.23-4.dsc' coreutils_8.23-4.dsc 1942 SHA256:280ace2d2f1740c2319338e96da6b5000b9e65ddb9549c772917123633afe772
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.23.orig.tar.gz' coreutils_8.23.orig.tar.gz 12582141 SHA256:d606551dccd8c4ed079d7aa8d74af152b1d16215cae763d86b40b26fdbde9c73
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.23-4.diff.gz' coreutils_8.23-4.diff.gz 48759 SHA256:19ab6ff1b82f29e8a8f8107f925eec91b1eaad53b690f2d7154ab07101bf8c01
```

Likely also available for browsing at:

- https://sources.debian.net/src/coreutils/8.23-4/
- https://sources.debian.net/src/coreutils/8.23-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cryptsetup=2:1.6.6-5`

Binary Packages:

- `libcryptsetup4:amd64=2:1.6.6-5`

Licenses: (parsed from: `/usr/share/doc/libcryptsetup4/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cryptsetup=2:1.6.6-5
'http://deb.debian.org/debian/pool/main/c/cryptsetup/cryptsetup_1.6.6-5.dsc' cryptsetup_1.6.6-5.dsc 2624 SHA256:f7582c8becb38fecaed22aa531bd748dee2ebdbdac64e00c7e39e45afe7eaae1
'http://deb.debian.org/debian/pool/main/c/cryptsetup/cryptsetup_1.6.6.orig.tar.xz' cryptsetup_1.6.6.orig.tar.xz 1145940 SHA256:2d2ce28e4e1137dd599d87884b62ef6dbf14fd7848b2a2bf7d61cf125fbd8e6f
'http://deb.debian.org/debian/pool/main/c/cryptsetup/cryptsetup_1.6.6-5.debian.tar.xz' cryptsetup_1.6.6-5.debian.tar.xz 82944 SHA256:fa12da2f5448e0b02e1e5c89357de3749f854b2b96441f9c56737766c11cded0
```

Likely also available for browsing at:

- https://sources.debian.net/src/cryptsetup/2:1.6.6-5/
- https://sources.debian.net/src/cryptsetup/2:1.6.6-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `curl=7.38.0-4+deb8u5`

Binary Packages:

- `curl=7.38.0-4+deb8u5`
- `libcurl3:amd64=7.38.0-4+deb8u5`
- `libcurl4-openssl-dev:amd64=7.38.0-4+deb8u5`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`

Source:

```console
$ apt-get source -qq --print-uris curl=7.38.0-4+deb8u5
'http://security.debian.org/pool/updates/main/c/curl/curl_7.38.0-4+deb8u5.dsc' curl_7.38.0-4+deb8u5.dsc 2637 SHA256:2b5e0bf7ea27efaa23d3274a487227436a8b6777dc571c957ae1c9fb4e455d8d
'http://security.debian.org/pool/updates/main/c/curl/curl_7.38.0.orig.tar.gz' curl_7.38.0.orig.tar.gz 4094034 SHA256:5661028aa6532882fa228cd23c99ddbb8b87643dbb1a7ea55c068d34a943dff1
'http://security.debian.org/pool/updates/main/c/curl/curl_7.38.0-4+deb8u5.debian.tar.xz' curl_7.38.0-4+deb8u5.debian.tar.xz 40224 SHA256:3f917091d1694a77852fe05293dafff079382e70d93f62f7de5c61f1812cf69d
```

Likely also available for browsing at:

- https://sources.debian.net/src/curl/7.38.0-4+deb8u5/
- https://sources.debian.net/src/curl/7.38.0-4+deb8u5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cyrus-sasl2=2.1.26.dfsg1-13+deb8u1`

Binary Packages:

- `libsasl2-2:amd64=2.1.26.dfsg1-13+deb8u1`
- `libsasl2-dev=2.1.26.dfsg1-13+deb8u1`
- `libsasl2-modules-db:amd64=2.1.26.dfsg1-13+deb8u1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-dev/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-2-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.26.dfsg1-13+deb8u1
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-13+deb8u1.dsc' cyrus-sasl2_2.1.26.dfsg1-13+deb8u1.dsc 3461 SHA256:ed1cba2b699aaf1ad08b99ea82d40c583c02817f6fbd765b9bbcd940d72fc3f3
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz' cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz 1494337 SHA256:172c39555012f479543ce7305949db75df708771fe8f8b34248027f09e53bb85
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-13+deb8u1.debian.tar.xz' cyrus-sasl2_2.1.26.dfsg1-13+deb8u1.debian.tar.xz 94284 SHA256:14e00798c41b6fae965211f1af8b47a67d22001146d0019f81af0fc7be9f162f
```

Likely also available for browsing at:

- https://sources.debian.net/src/cyrus-sasl2/2.1.26.dfsg1-13+deb8u1/
- https://sources.debian.net/src/cyrus-sasl2/2.1.26.dfsg1-13+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `dash=0.5.7-4`

Binary Packages:

- `dash=0.5.7-4+b1`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.7-4
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.7-4.dsc' dash_0.5.7-4.dsc 1105 SHA256:c77f4baef8cbdc105a783bf6e4d3253ae10671ad98c27bf8537c8c731f073310
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.7.orig.tar.gz' dash_0.5.7.orig.tar.gz 223794 SHA256:ae89fa9f1145b7748cf0740e1df04cd52fdf8a285da4911dd0f04983efba4e39
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.7-4.diff.gz' dash_0.5.7-4.diff.gz 42834 SHA256:649d97aa0c48dc0db73c08d7e89a004b9d413279a823388161940342016284f0
```

Likely also available for browsing at:

- https://sources.debian.net/src/dash/0.5.7-4/
- https://sources.debian.net/src/dash/0.5.7-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `db5.3=5.3.28-9`

Binary Packages:

- `libdb5.3:amd64=5.3.28-9`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-9
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-9.dsc' db5.3_5.3.28-9.dsc 3166 SHA256:0020cd1491a10a2bfc7a125eb5f3a4db3745387e2d5f8f8f079be27ddfbdcf05
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-9.debian.tar.xz' db5.3_5.3.28-9.debian.tar.xz 27664 SHA256:62adde71eda43c1300cdff51118721cef03dbc4bbe219f2669db5dcd90278ac3
```

Likely also available for browsing at:

- https://sources.debian.net/src/db5.3/5.3.28-9/
- https://sources.debian.net/src/db5.3/5.3.28-9/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `debconf=1.5.56`

Binary Packages:

- `debconf=1.5.56`
- `debconf-i18n=1.5.56`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`, `/usr/share/doc/debconf-i18n/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.56
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.56.dsc' debconf_1.5.56.dsc 1977 SHA256:584e73f5a84791f4b25ac0bcb65dd5a63de10e5398d986cb005597566fd23ca4
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.56.tar.gz' debconf_1.5.56.tar.gz 1004238 SHA256:e8371becb1ad91b69b0f2b2e580d30a0a4c63b4c2803dea2fb8e3136b662bfa5
```

Likely also available for browsing at:

- https://sources.debian.net/src/debconf/1.5.56/
- https://sources.debian.net/src/debconf/1.5.56/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `debian-archive-keyring=2014.3`

Binary Packages:

- `debian-archive-keyring=2014.3`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2014.3
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2014.3.dsc' debian-archive-keyring_2014.3.dsc 1597 SHA256:2a3e604f936b8fbaf1beeea0a7611a1a88cacffd26571df4cc58c16ecefa362a
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2014.3.tar.xz' debian-archive-keyring_2014.3.tar.xz 61380 SHA256:46be978ec2f72b0277d9e71bda30ea1b2b9aa00b1952cb35e8b22a2c016f5e22
```

Likely also available for browsing at:

- https://sources.debian.net/src/debian-archive-keyring/2014.3/
- https://sources.debian.net/src/debian-archive-keyring/2014.3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `debianutils=4.4`

Binary Packages:

- `debianutils=4.4+b1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.4
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.4.dsc' debianutils_4.4.dsc 1560 SHA256:e365ad42af528f46eb117ef244216aaf265372f2b92635b28452a8f0d981bb17
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.4.tar.gz' debianutils_4.4.tar.gz 272098 SHA256:190850cdd6b5302e0a1ba1aaed1bc7074d67d3bd8d04c613f242f7145afa53a6
```

Likely also available for browsing at:

- https://sources.debian.net/src/debianutils/4.4/
- https://sources.debian.net/src/debianutils/4.4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `diffutils=1:3.3-1`

Binary Packages:

- `diffutils=1:3.3-1+b1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.3-1
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.3-1.dsc' diffutils_3.3-1.dsc 1427 SHA256:72df1fed003b47509a063dfa8aa89108c884cd3bf52a06ce40e1ffb61f5a256c
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.3.orig.tar.xz' diffutils_3.3.orig.tar.xz 1197832 SHA256:a25e89a8ab65fded1731e4186be1bb25cda967834b6df973599cdcd5abdfc19c
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.3-1.debian.tar.gz' diffutils_3.3-1.debian.tar.gz 10584 SHA256:23765ea43cd1b4e5e504ce0984a16e27d5c01e9272cba489ebbebd217f227fc7
```

Likely also available for browsing at:

- https://sources.debian.net/src/diffutils/1:3.3-1/
- https://sources.debian.net/src/diffutils/1:3.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `dpkg=1.17.27`

Binary Packages:

- `dpkg=1.17.27`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.17.27
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.17.27.dsc' dpkg_1.17.27.dsc 2018 SHA256:730ad9445990322551acf79a752515d27ffca5c8b6d978b3276d28e88d60e34f
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.17.27.tar.xz' dpkg_1.17.27.tar.xz 4413092 SHA256:90749c31b9f1fceb46dd9fab5b50de34272efef333cc16d9e144f514fd944bb6
```

Likely also available for browsing at:

- https://sources.debian.net/src/dpkg/1.17.27/
- https://sources.debian.net/src/dpkg/1.17.27/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `e2fsprogs=1.42.12-2`

Binary Packages:

- `comerr-dev=2.1-1.42.12-2`
- `e2fslibs:amd64=1.42.12-2`
- `e2fsprogs=1.42.12-2`
- `libcomerr2:amd64=1.42.12-2`
- `libss2:amd64=1.42.12-2`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.42.12-2
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.42.12-2.dsc' e2fsprogs_1.42.12-2.dsc 2200 SHA256:c0edf462e2d55c64bc0e8278602066f458efd1b744627238a1d2b38e4ac2af94
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.42.12.orig.tar.gz' e2fsprogs_1.42.12.orig.tar.gz 6381695 SHA256:e17846d91a0edd89fa59b064bde8f8e5cec5851e35f587bcccb4014dbd63186c
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.42.12-2.debian.tar.xz' e2fsprogs_1.42.12-2.debian.tar.xz 68700 SHA256:23b927df5556f4854ea26bb8e7c55cdc9a31b920d1dd0be7a2965378dde30bd4
```

Likely also available for browsing at:

- https://sources.debian.net/src/e2fsprogs/1.42.12-2/
- https://sources.debian.net/src/e2fsprogs/1.42.12-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `file=1:5.22+15-2+deb8u2`

Binary Packages:

- `file=1:5.22+15-2+deb8u2`
- `libmagic1:amd64=1:5.22+15-2+deb8u2`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.22+15-2+deb8u2
'http://deb.debian.org/debian/pool/main/f/file/file_5.22+15-2+deb8u2.dsc' file_5.22+15-2+deb8u2.dsc 2082 SHA256:92617d204716436098950fdd3fddf7fa833f2cc70fb79f4ee1a68d5764a4518e
'http://deb.debian.org/debian/pool/main/f/file/file_5.22+15.orig.tar.xz' file_5.22+15.orig.tar.xz 569332 SHA256:c021e9f73b3eb3b6cc2532c5d9a77af1a92902935013c2740ba3fef83f1804d2
'http://deb.debian.org/debian/pool/main/f/file/file_5.22+15-2+deb8u2.debian.tar.xz' file_5.22+15-2+deb8u2.debian.tar.xz 30212 SHA256:f3695289c706c6f221bd88af5cb841ed1a649e31ed8e2627b628ff0746f42eee
```

Likely also available for browsing at:

- https://sources.debian.net/src/file/1:5.22+15-2+deb8u2/
- https://sources.debian.net/src/file/1:5.22+15-2+deb8u2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `findutils=4.4.2-9`

Binary Packages:

- `findutils=4.4.2-9+b1`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.2`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.4.2-9
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.4.2-9.dsc' findutils_4.4.2-9.dsc 1996 SHA256:0dd9d96af8260d2e81c5819d2e5536f95cb894e771c9adcab44ba70726adb13e
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.4.2.orig.tar.gz' findutils_4.4.2.orig.tar.gz 2149838 SHA256:434f32d171cbc0a5e72cfc5372c6fc4cb0e681f8dce566a0de5b6fccd702b62a
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.4.2-9.debian.tar.xz' findutils_4.4.2-9.debian.tar.xz 27384 SHA256:8a9f5fb20c255b833994d7dfff1999b3f4f95dea6008495f2b0ef6c549d62c34
```

Likely also available for browsing at:

- https://sources.debian.net/src/findutils/4.4.2-9/
- https://sources.debian.net/src/findutils/4.4.2-9/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `freetype=2.5.2-3+deb8u1`

Binary Packages:

- `libfreetype6:amd64=2.5.2-3+deb8u1`
- `libfreetype6-dev=2.5.2-3+deb8u1`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`, `/usr/share/doc/libfreetype6-dev/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `Catharon-OSL`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GZip`
- `OpenGroup-BSD-like`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.5.2-3+deb8u1
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.5.2-3+deb8u1.dsc' freetype_2.5.2-3+deb8u1.dsc 2096 SHA256:a56cdf04463a7d9b13c1a2fd1c257b9626f28516efc7243fd2ee34eae2f14a13
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.5.2.orig.tar.gz' freetype_2.5.2.orig.tar.gz 1971155 SHA256:5fda4996e43cfdf9b602a0eb5abde014f1a3c3b2d82bbb9b86942011c63f5c3a
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.5.2-3+deb8u1.diff.gz' freetype_2.5.2-3+deb8u1.diff.gz 68796 SHA256:196918fc99a74441d7f7e6e85133b0ba7d6b85b2d5b5cd764fc32edd7dd97923
```

Likely also available for browsing at:

- https://sources.debian.net/src/freetype/2.5.2-3+deb8u1/
- https://sources.debian.net/src/freetype/2.5.2-3+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gcc-4.8=4.8.4-1`

Binary Packages:

- `gcc-4.8-base:amd64=4.8.4-1`

Licenses: (parsed from: `/usr/share/doc/gcc-4.8-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-4.8=4.8.4-1
'http://deb.debian.org/debian/pool/main/g/gcc-4.8/gcc-4.8_4.8.4-1.dsc' gcc-4.8_4.8.4-1.dsc 10638 SHA256:9ba284727055aba04bb3122ef7f857587a403a5c9a2f924948829da49ca2ef02
'http://deb.debian.org/debian/pool/main/g/gcc-4.8/gcc-4.8_4.8.4-1.tar.gz' gcc-4.8_4.8.4-1.tar.gz 187653934 SHA256:c38d9687b6fef3010f250adaf89a3f1bd0f12c9cd82ed531a52e7d394b8226cf
```

Likely also available for browsing at:

- https://sources.debian.net/src/gcc-4.8/4.8.4-1/
- https://sources.debian.net/src/gcc-4.8/4.8.4-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gcc-4.9=4.9.2-10`

Binary Packages:

- `cpp-4.9=4.9.2-10`
- `g++-4.9=4.9.2-10`
- `gcc-4.9=4.9.2-10`
- `gcc-4.9-base:amd64=4.9.2-10`
- `libasan1:amd64=4.9.2-10`
- `libatomic1:amd64=4.9.2-10`
- `libcilkrts5:amd64=4.9.2-10`
- `libgcc-4.9-dev:amd64=4.9.2-10`
- `libgcc1:amd64=1:4.9.2-10`
- `libgomp1:amd64=4.9.2-10`
- `libitm1:amd64=4.9.2-10`
- `liblsan0:amd64=4.9.2-10`
- `libquadmath0:amd64=4.9.2-10`
- `libstdc++-4.9-dev:amd64=4.9.2-10`
- `libstdc++6:amd64=4.9.2-10`
- `libtsan0:amd64=4.9.2-10`
- `libubsan0:amd64=4.9.2-10`

Licenses: (parsed from: `/usr/share/doc/cpp-4.9/copyright`, `/usr/share/doc/g++-4.9/copyright`, `/usr/share/doc/gcc-4.9/copyright`, `/usr/share/doc/gcc-4.9-base/copyright`, `/usr/share/doc/libasan1/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-4.9-dev/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-4.9-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-4.9=4.9.2-10
'http://deb.debian.org/debian/pool/main/g/gcc-4.9/gcc-4.9_4.9.2-10.dsc' gcc-4.9_4.9.2-10.dsc 19222 SHA256:591b7db6bd972dd1a7b99953e367a89f859deb3a13efa8531034c2ab568314b1
'http://deb.debian.org/debian/pool/main/g/gcc-4.9/gcc-4.9_4.9.2.orig.tar.gz' gcc-4.9_4.9.2.orig.tar.gz 73565212 SHA256:861aa811d5f9e9ecf32d8195d2346fc434eba7e17330878ed3d876c49a32ec4e
'http://deb.debian.org/debian/pool/main/g/gcc-4.9/gcc-4.9_4.9.2-10.diff.gz' gcc-4.9_4.9.2-10.diff.gz 848893 SHA256:7e566640487ea9456186656848bfc1e43242ed448766ed3553b79fee16d25edb
```

Likely also available for browsing at:

- https://sources.debian.net/src/gcc-4.9/4.9.2-10/
- https://sources.debian.net/src/gcc-4.9/4.9.2-10/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gcc-defaults=1.136`

Binary Packages:

- `cpp=4:4.9.2-2`
- `g++=4:4.9.2-2`
- `gcc=4:4.9.2-2`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.136
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.136.dsc' gcc-defaults_1.136.dsc 3255 SHA256:5ac9089c83ce76445a7b3dcb546460e85352bce22fa0ce26fc26c1a8812d484a
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.136.tar.gz' gcc-defaults_1.136.tar.gz 64341 SHA256:7146bd9f988928c0c9e765677d9997edec7bd23472306dbec9be54bdaa21e558
```

Likely also available for browsing at:

- https://sources.debian.net/src/gcc-defaults/1.136/
- https://sources.debian.net/src/gcc-defaults/1.136/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gdbm=1.8.3-13.1`

Binary Packages:

- `libgdbm3:amd64=1.8.3-13.1`

Licenses: (parsed from: `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-13.1
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-13.1.dsc' gdbm_1.8.3-13.1.dsc 1830 SHA256:b1d8bef30edc491315c337930cbe2b61f44f55035adfc26ae945bab5ca57d5c9
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-13.1.debian.tar.xz' gdbm_1.8.3-13.1.debian.tar.xz 14748 SHA256:251401e1f5210226f384e936b1b7ea1df40119a918d9f3dbf48b2e51d4df8983
```

Likely also available for browsing at:

- https://sources.debian.net/src/gdbm/1.8.3-13.1/
- https://sources.debian.net/src/gdbm/1.8.3-13.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `glib2.0=2.42.1-1`

Binary Packages:

- `libglib2.0-0:amd64=2.42.1-1+b1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.42.1-1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.42.1-1.dsc' glib2.0_2.42.1-1.dsc 3119 SHA256:61b01cb94e8bb8b9fdd1799b2e1bed907371dc45d364beec4b79a129745f588f
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.42.1.orig.tar.xz' glib2.0_2.42.1.orig.tar.xz 6985120 SHA256:8f3f0865280e45b8ce840e176ef83bcfd511148918cc8d39df2ee89b67dcf89a
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.42.1-1.debian.tar.xz' glib2.0_2.42.1-1.debian.tar.xz 68072 SHA256:1cd368c2bce6100c07b8a07ff7f3f38572679d88563356b8784560606fcfac56
```

Likely also available for browsing at:

- https://sources.debian.net/src/glib2.0/2.42.1-1/
- https://sources.debian.net/src/glib2.0/2.42.1-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `glibc=2.19-18+deb8u6`

Binary Packages:

- `libc-bin=2.19-18+deb8u6`
- `libc-dev-bin=2.19-18+deb8u6`
- `libc6:amd64=2.19-18+deb8u6`
- `libc6-dev:amd64=2.19-18+deb8u6`
- `multiarch-support=2.19-18+deb8u6`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.19-18+deb8u6
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.19-18+deb8u6.dsc' glibc_2.19-18+deb8u6.dsc 8220 SHA256:e84bc32d28a021e1d17e41ae2b3c862efe927160525b0fdb2b2bab9151f845b2
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.19.orig.tar.xz' glibc_2.19.orig.tar.xz 12387008 SHA256:746e52bb4fc9b2f30bcd33d415172a40ab56c5fff6c494052d31b0795593cc60
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.19-18+deb8u6.debian.tar.xz' glibc_2.19-18+deb8u6.debian.tar.xz 1062520 SHA256:21ce25c8a325df5a0864217910c9161c0874d1d5f58a18044bf4bdb056311d06
```

Likely also available for browsing at:

- https://sources.debian.net/src/glibc/2.19-18+deb8u6/
- https://sources.debian.net/src/glibc/2.19-18+deb8u6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gmp=2:6.0.0+dfsg-6`

Binary Packages:

- `libgmp10:amd64=2:6.0.0+dfsg-6`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.0.0+dfsg-6
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.0.0+dfsg-6.dsc' gmp_6.0.0+dfsg-6.dsc 1840 SHA256:40f44bfae4ed9df69a8c64fe9bf9deded10cc4a75844c95bbfbfc3307976f53a
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.0.0+dfsg.orig.tar.xz' gmp_6.0.0+dfsg.orig.tar.xz 1756792 SHA256:7539e094815fc321f4dc64b0a6968db9e1bee85a459bc64d4cc2b9dd0f6729a5
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.0.0+dfsg-6.debian.tar.xz' gmp_6.0.0+dfsg-6.debian.tar.xz 21024 SHA256:83219073eab9fb886dd1123b6b571b45fbe2f7c290c4201b07696784ffcf7fd1
```

Likely also available for browsing at:

- https://sources.debian.net/src/gmp/2:6.0.0+dfsg-6/
- https://sources.debian.net/src/gmp/2:6.0.0+dfsg-6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gnupg=1.4.18-7+deb8u3`

Binary Packages:

- `gnupg=1.4.18-7+deb8u3`
- `gpgv=1.4.18-7+deb8u3`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpgv/copyright`)

- `GPL-3`
- `GPL-3+ with OpenSSL exception`
- `RFC-Reference`

Source:

```console
$ apt-get source -qq --print-uris gnupg=1.4.18-7+deb8u3
'http://deb.debian.org/debian/pool/main/g/gnupg/gnupg_1.4.18-7+deb8u3.dsc' gnupg_1.4.18-7+deb8u3.dsc 2432 SHA256:936c6e278b978f3edd24264940fca2f16d3c22c58437400578cdc7a9e6cb4148
'http://deb.debian.org/debian/pool/main/g/gnupg/gnupg_1.4.18.orig.tar.gz' gnupg_1.4.18.orig.tar.gz 5047888 SHA256:10a8936b76ccadb98521535b5f41cc5b41b3c159a6c2915f062bd4dc8ac12d12
'http://deb.debian.org/debian/pool/main/g/gnupg/gnupg_1.4.18-7+deb8u3.debian.tar.xz' gnupg_1.4.18-7+deb8u3.debian.tar.xz 301204 SHA256:2117df33f763efb2afbd9c154b6bfbf6a91c0ef1c1bee73357c03fd15f18605f
```

Likely also available for browsing at:

- https://sources.debian.net/src/gnupg/1.4.18-7+deb8u3/
- https://sources.debian.net/src/gnupg/1.4.18-7+deb8u3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gnutls28=3.3.8-6+deb8u3`

Binary Packages:

- `libgnutls-deb0-28:amd64=3.3.8-6+deb8u3`

Licenses: (parsed from: `/usr/share/doc/libgnutls-deb0-28/copyright`)

- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `GPLv3+`
- `LGPL`
- `LGPL-3`
- `LGPL2.1`
- `The main library is licensed under GNU Lesser`
- `nonstandard, see below`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.3.8-6+deb8u3
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.3.8-6+deb8u3.dsc' gnutls28_3.3.8-6+deb8u3.dsc 2941 SHA256:5c1cd78b2eb4547377ef5c0894de48945265251dbdca2303526cef894e77e46d
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.3.8.orig.tar.xz' gnutls28_3.3.8.orig.tar.xz 6153180 SHA256:bd4642f180e19632f4ed3a1e62d60c824c7b695f5cddf41a8fba1b272eaef046
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.3.8-6+deb8u3.debian.tar.xz' gnutls28_3.3.8-6+deb8u3.debian.tar.xz 95104 SHA256:fe56f1f7a79b855577a5539202408e91a5a7a57095751550d983368cc0c08f8d
```

Likely also available for browsing at:

- https://sources.debian.net/src/gnutls28/3.3.8-6+deb8u3/
- https://sources.debian.net/src/gnutls28/3.3.8-6+deb8u3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `grep=2.20-4.1`

Binary Packages:

- `grep=2.20-4.1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.20-4.1
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.20-4.1.dsc' grep_2.20-4.1.dsc 2627 SHA256:62ae6c19839e940462d27b2a234e925210cdb9209e2a4080b695fcec439c1d04
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.20.orig.tar.xz' grep_2.20.orig.tar.xz 1237196 SHA256:f0af452bc0d09464b6d089b6d56a0a3c16672e9ed9118fbe37b0b6aeaf069a65
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.20-4.1.debian.tar.bz2' grep_2.20-4.1.debian.tar.bz2 113054 SHA256:4aa8c4487d05dc82498668deeb485a9d4891a74df29466adf74e2faf738d2917
```

Likely also available for browsing at:

- https://sources.debian.net/src/grep/2.20-4.1/
- https://sources.debian.net/src/grep/2.20-4.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gzip=1.6-4`

Binary Packages:

- `gzip=1.6-4`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-4
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6-4.dsc' gzip_1.6-4.dsc 1853 SHA256:9605bb67aa336e3f1dd68429fa713a80dff3439d67f944160895b14c98503147
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6-4.debian.tar.xz' gzip_1.6-4.debian.tar.xz 14476 SHA256:20a474283cc0063de7db623ccc3b17da7df6bc15f681de4e9e1da12b990a2743
```

Likely also available for browsing at:

- https://sources.debian.net/src/gzip/1.6-4/
- https://sources.debian.net/src/gzip/1.6-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `hostname=3.15`

Binary Packages:

- `hostname=3.15`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.15
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.15.dsc' hostname_3.15.dsc 804 SHA256:e787dec3ac9ee20ff564d6d7afde242103e71830907ee8fa63367162b04e9844
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.15.tar.gz' hostname_3.15.tar.gz 13039 SHA256:b6d10114ed14306b21745d2cac1b9adf7a2546f16b9fd719bec14bd7cec61d20
```

Likely also available for browsing at:

- https://sources.debian.net/src/hostname/3.15/
- https://sources.debian.net/src/hostname/3.15/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `icu=52.1-8+deb8u4`

Binary Packages:

- `icu-devtools=52.1-8+deb8u4`
- `libicu-dev:amd64=52.1-8+deb8u4`
- `libicu52:amd64=52.1-8+deb8u4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=52.1-8+deb8u4
'http://security.debian.org/pool/updates/main/i/icu/icu_52.1-8+deb8u4.dsc' icu_52.1-8+deb8u4.dsc 2015 SHA256:cabdf27f9976550a61f1b5c84d7353f19f3338b55b2b9002f0db593fccda86c7
'http://security.debian.org/pool/updates/main/i/icu/icu_52.1.orig.tar.gz' icu_52.1.orig.tar.gz 23875368 SHA256:2f4d5e68d4698e87759dbdc1a586d053d96935787f79961d192c477b029d8092
'http://security.debian.org/pool/updates/main/i/icu/icu_52.1-8+deb8u4.debian.tar.xz' icu_52.1-8+deb8u4.debian.tar.xz 35588 SHA256:cf298a04a576aaa8016d25ebe1387f6c923de1acea4411a27f9858bf1af72f5a
```

Likely also available for browsing at:

- https://sources.debian.net/src/icu/52.1-8+deb8u4/
- https://sources.debian.net/src/icu/52.1-8+deb8u4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `inetutils=2:1.9.2.39.3a460-3`

Binary Packages:

- `inetutils-ping=2:1.9.2.39.3a460-3`

Licenses: (parsed from: `/usr/share/doc/inetutils-ping/copyright`)

- `BSD-3-clause`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `Wietse`

Source:

```console
$ apt-get source -qq --print-uris inetutils=2:1.9.2.39.3a460-3
'http://deb.debian.org/debian/pool/main/i/inetutils/inetutils_1.9.2.39.3a460-3.dsc' inetutils_1.9.2.39.3a460-3.dsc 2700 SHA256:021a37cd7a0f71452f02390ee449974892b88b07605ec73b1393138950c2783a
'http://deb.debian.org/debian/pool/main/i/inetutils/inetutils_1.9.2.39.3a460.orig.tar.xz' inetutils_1.9.2.39.3a460.orig.tar.xz 1337612 SHA256:b24c6ebe9c4a3ae10d421c4b59cc173fc72ea9cddf03386553c3740d247d0865
'http://deb.debian.org/debian/pool/main/i/inetutils/inetutils_1.9.2.39.3a460-3.debian.tar.xz' inetutils_1.9.2.39.3a460-3.debian.tar.xz 75536 SHA256:496fbacdb8b0aad5669a55ac04cbd0f7eefe03227e2fc9e140f4f676116e7ef6
```

Likely also available for browsing at:

- https://sources.debian.net/src/inetutils/2:1.9.2.39.3a460-3/
- https://sources.debian.net/src/inetutils/2:1.9.2.39.3a460-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `init-system-helpers=1.22`

Binary Packages:

- `init=1.22`

Licenses: (parsed from: `/usr/share/doc/init/copyright`)

- `BSD`
- `GPL`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.22
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.22.dsc' init-system-helpers_1.22.dsc 1880 SHA256:f2ba7e0e1804b56d9c2967ed60be92274619068d7d3894c2dc750f31dbb0ff25
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.22.tar.xz' init-system-helpers_1.22.tar.xz 30728 SHA256:4f64b9fd86f2c68a3996903e03d6024d73f637ff8a06f1bd4f73bedcf8154124
```

Likely also available for browsing at:

- https://sources.debian.net/src/init-system-helpers/1.22/
- https://sources.debian.net/src/init-system-helpers/1.22/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `insserv=1.14.0-5`

Binary Packages:

- `insserv=1.14.0-5`

Licenses: (parsed from: `/usr/share/doc/insserv/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris insserv=1.14.0-5
'http://deb.debian.org/debian/pool/main/i/insserv/insserv_1.14.0-5.dsc' insserv_1.14.0-5.dsc 1947 SHA256:183dbcd57db6061d61e781197231275fe49c321f6600ec147546d5c24a8ba021
'http://deb.debian.org/debian/pool/main/i/insserv/insserv_1.14.0.orig.tar.gz' insserv_1.14.0.orig.tar.gz 53851 SHA256:da74dcf5225a00aa8aef4d5afc6a20e009b2ed9af328dabd55fef1cb3a32140e
'http://deb.debian.org/debian/pool/main/i/insserv/insserv_1.14.0-5.debian.tar.gz' insserv_1.14.0-5.debian.tar.gz 53943 SHA256:496a3ece3cf4b53ff19f45eeffab6b5a7714785d1db524087c9cbe9cbdd88b2a
```

Likely also available for browsing at:

- https://sources.debian.net/src/insserv/1.14.0-5/
- https://sources.debian.net/src/insserv/1.14.0-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `iproute2=3.16.0-2`

Binary Packages:

- `iproute2=3.16.0-2`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=3.16.0-2
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_3.16.0-2.dsc' iproute2_3.16.0-2.dsc 1693 SHA256:dd657e1707a85c7a15a3a2ba17e3e02fbf133aac4513ed86e4d8b1d6e4cd6a45
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_3.16.0.orig.tar.xz' iproute2_3.16.0.orig.tar.xz 438820 SHA256:1f0a8a6c0e872166f75433f5cbf9766f3002b5c2f13501b3bb8c51846a127b79
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_3.16.0-2.debian.tar.xz' iproute2_3.16.0-2.debian.tar.xz 27032 SHA256:9e5c631b4465ee258a2d61150f6a591f37d116b1b465b363f9e50d496e0359ab
```

Likely also available for browsing at:

- https://sources.debian.net/src/iproute2/3.16.0-2/
- https://sources.debian.net/src/iproute2/3.16.0-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `isl=0.12.2-2`

Binary Packages:

- `libisl10:amd64=0.12.2-2`

Licenses: (parsed from: `/usr/share/doc/libisl10/copyright`)

- `2-clause BSD`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.12.2-2
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.12.2-2.dsc' isl_0.12.2-2.dsc 1245 SHA256:7c6f6a2baeb9ca7f5501fe2262d8e6e28772a4cc19bd1455ee5df6e5b6a60322
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.12.2.orig.tar.bz2' isl_0.12.2.orig.tar.bz2 1319434 SHA256:f4b3dbee9712850006e44f0db2103441ab3d13b406f77996d1df19ee89d11fb4
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.12.2-2.debian.tar.xz' isl_0.12.2-2.debian.tar.xz 17296 SHA256:b91528d5f201c3883f0d57b0c2a44985a933c9e50836ca98000d3db9377784b1
```

Likely also available for browsing at:

- https://sources.debian.net/src/isl/0.12.2-2/
- https://sources.debian.net/src/isl/0.12.2-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `keyutils=1.5.9-5`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-5+b1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-5
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-5.dsc' keyutils_1.5.9-5.dsc 2080 SHA256:8c8ca9ef9274046901b107f143260bd1255387939ee517ae842829bd167fd49d
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-5.debian.tar.xz' keyutils_1.5.9-5.debian.tar.xz 14596 SHA256:8cef47fc1fd688cc54e36cbb7cee26f38b38d10a1c59af8d8dc0869a0e4359fc
```

Likely also available for browsing at:

- https://sources.debian.net/src/keyutils/1.5.9-5/
- https://sources.debian.net/src/keyutils/1.5.9-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `kmod=18-3`

Binary Packages:

- `libkmod2:amd64=18-3`

Licenses: (parsed from: `/usr/share/doc/libkmod2/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris kmod=18-3
'http://deb.debian.org/debian/pool/main/k/kmod/kmod_18-3.dsc' kmod_18-3.dsc 1865 SHA256:f16ef133e00db0fa360dcfb0d4723afc31e3803141b5f864e4df6a8b810eaeea
'http://deb.debian.org/debian/pool/main/k/kmod/kmod_18.orig.tar.gz' kmod_18.orig.tar.gz 3692996 SHA256:cdd7c8627e9bbfe5e39232886d08db2c87b4cc2ea7e9f8d3034577324809f2c0
'http://deb.debian.org/debian/pool/main/k/kmod/kmod_18-3.debian.tar.xz' kmod_18-3.debian.tar.xz 10468 SHA256:7a55a9d2c97913cdfde6e29d2784b5b82c7fdad6581d466b4aa571eef3270ea2
```

Likely also available for browsing at:

- https://sources.debian.net/src/kmod/18-3/
- https://sources.debian.net/src/kmod/18-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `krb5=1.12.1+dfsg-19+deb8u2`

Binary Packages:

- `krb5-multidev=1.12.1+dfsg-19+deb8u2`
- `libgssapi-krb5-2:amd64=1.12.1+dfsg-19+deb8u2`
- `libgssrpc4:amd64=1.12.1+dfsg-19+deb8u2`
- `libk5crypto3:amd64=1.12.1+dfsg-19+deb8u2`
- `libkadm5clnt-mit9:amd64=1.12.1+dfsg-19+deb8u2`
- `libkadm5srv-mit9:amd64=1.12.1+dfsg-19+deb8u2`
- `libkdb5-7:amd64=1.12.1+dfsg-19+deb8u2`
- `libkrb5-3:amd64=1.12.1+dfsg-19+deb8u2`
- `libkrb5support0:amd64=1.12.1+dfsg-19+deb8u2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit9/copyright`, `/usr/share/doc/libkadm5srv-mit9/copyright`, `/usr/share/doc/libkdb5-7/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.12.1+dfsg-19+deb8u2
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.12.1+dfsg-19+deb8u2.dsc' krb5_1.12.1+dfsg-19+deb8u2.dsc 3368 SHA256:2b10ecb8b8c3015a12a764e4e6eb99fcca45cc1946d211a18db64b46dfa2cb81
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.12.1+dfsg.orig.tar.gz' krb5_1.12.1+dfsg.orig.tar.gz 11792370 SHA256:eb29959f1e9f8d71e7401f5809daefae067296eb5b0da1176366280a16bdd784
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.12.1+dfsg-19+deb8u2.debian.tar.xz' krb5_1.12.1+dfsg-19+deb8u2.debian.tar.xz 123456 SHA256:242155b4ac6add762c1bac60e6eaa73b25abd985fb41bcdd13d4eae022f592ec
```

Likely also available for browsing at:

- https://sources.debian.net/src/krb5/1.12.1+dfsg-19+deb8u2/
- https://sources.debian.net/src/krb5/1.12.1+dfsg-19+deb8u2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libbsd=0.7.0-2`

Binary Packages:

- `libbsd0:amd64=0.7.0-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libbsd=0.7.0-2
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.7.0-2.dsc' libbsd_0.7.0-2.dsc 2007 SHA256:6d5fce0095a6eda36d3c24a68769b70720eefb5b3704ae96419533e23748947a
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.7.0.orig.tar.xz' libbsd_0.7.0.orig.tar.xz 322908 SHA256:0f3b0e17e5c34c038126e0a04351b11e23c6101a7d0ce3beeab29bb6415c10bb
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.7.0-2.debian.tar.xz' libbsd_0.7.0-2.debian.tar.xz 16272 SHA256:b3ff7556ecde7d1c4100f90a1cbce102699d4d2fdb8e5a328bf7977e48d3b757
```

Likely also available for browsing at:

- https://sources.debian.net/src/libbsd/0.7.0-2/
- https://sources.debian.net/src/libbsd/0.7.0-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libcap2=1:2.24-8`

Binary Packages:

- `libcap2:amd64=1:2.24-8`
- `libcap2-bin=1:2.24-8`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.24-8
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.24-8.dsc' libcap2_2.24-8.dsc 2134 SHA256:b042a6c89079d02113bd15ec52948f265edb6c725830d1b79434af06c4e6006a
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.24.orig.tar.xz' libcap2_2.24.orig.tar.xz 63264 SHA256:51cd1c568a2baf1e687573bd6117a94b07f33b46a05acaa50ee208792a830b79
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.24-8.debian.tar.xz' libcap2_2.24-8.debian.tar.xz 17528 SHA256:d1dd71eb19ce4cb7ea37f827c155382773e7724d5356619539874dca647aa94e
```

Likely also available for browsing at:

- https://sources.debian.net/src/libcap2/1:2.24-8/
- https://sources.debian.net/src/libcap2/1:2.24-8/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libedit=3.1-20140620-2`

Binary Packages:

- `libedit2:amd64=3.1-20140620-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20140620-2
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20140620-2.dsc' libedit_3.1-20140620-2.dsc 2235 SHA256:ca5af1e511d53595d6f518c9f4805feba66af23d3c468a92d9e84c1987af7512
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20140620.orig.tar.gz' libedit_3.1-20140620.orig.tar.gz 483857 SHA256:a22b9b2a8cf4aec9ff51a57e8c848b69640d0195282159d245d8137a19bfcaf2
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20140620-2.debian.tar.bz2' libedit_3.1-20140620-2.debian.tar.bz2 17637 SHA256:610d08273c7f73a83dad62b322a520497c12b9714bb1d9b54918c7bc0b3bb6ff
```

Likely also available for browsing at:

- https://sources.debian.net/src/libedit/3.1-20140620-2/
- https://sources.debian.net/src/libedit/3.1-20140620-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libffi=3.1-2`

Binary Packages:

- `libffi6:amd64=3.1-2+b2`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.1-2
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.1-2.dsc' libffi_3.1-2.dsc 1358 SHA256:6249efd7d44527de06e9e1fba9c7695c069d93b0fa5149f604435792c5a30f6c
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.1.orig.tar.gz' libffi_3.1.orig.tar.gz 937214 SHA256:97feeeadca5e21870fa4433bc953d1b3af3f698d5df8a428f68b73cd60aef6eb
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.1-2.debian.tar.xz' libffi_3.1-2.debian.tar.xz 8408 SHA256:7e7826c1ee6152d31a3e341efc34df923ec903b6caecc2701694dc95f2efd3ab
```

Likely also available for browsing at:

- https://sources.debian.net/src/libffi/3.1-2/
- https://sources.debian.net/src/libffi/3.1-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libgcrypt20=1.6.3-2+deb8u2`

Binary Packages:

- `libgcrypt20:amd64=1.6.3-2+deb8u2`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.6.3-2+deb8u2
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.6.3-2+deb8u2.dsc' libgcrypt20_1.6.3-2+deb8u2.dsc 2583 SHA256:982179928629a477dad47b667ac64708eb791f77241807cafbee2b730c94654d
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.6.3.orig.tar.bz2' libgcrypt20_1.6.3.orig.tar.bz2 2494052 SHA256:41b4917b93ae34c6a0e2127378d7a4d66d805a2a86a09911d4f9bd871db7025f
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.6.3-2+deb8u2.debian.tar.xz' libgcrypt20_1.6.3-2+deb8u2.debian.tar.xz 30964 SHA256:49cea0b68a4eb67461909088ffa190bcb13296dfe2da4821f7968dd992ed97a6
```

Likely also available for browsing at:

- https://sources.debian.net/src/libgcrypt20/1.6.3-2+deb8u2/
- https://sources.debian.net/src/libgcrypt20/1.6.3-2+deb8u2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libgpg-error=1.17-3`

Binary Packages:

- `libgpg-error0:amd64=1.17-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `GPL-2.1+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.17-3
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.17-3.dsc' libgpg-error_1.17-3.dsc 2344 SHA256:42d9ff8517b1149b453d947b515cef088b83ac6a6b4fdcbd143570c42e2216c9
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.17.orig.tar.bz2' libgpg-error_1.17.orig.tar.bz2 669914 SHA256:3ff4e5a71116eb862cd14185fcd282850927b8608e3b4186834fd940fbef57b5
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.17-3.debian.tar.xz' libgpg-error_1.17-3.debian.tar.xz 38460 SHA256:3e0af89c65e61ed2b53555eaecd5dc7fa19519490ef447313f441728ae490f29
```

Likely also available for browsing at:

- https://sources.debian.net/src/libgpg-error/1.17-3/
- https://sources.debian.net/src/libgpg-error/1.17-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libidn=1.29-1+deb8u2`

Binary Packages:

- `libidn11:amd64=1.29-1+deb8u2`

Licenses: (parsed from: `/usr/share/doc/libidn11/copyright`)

- `GAP`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+ | GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libidn=1.29-1+deb8u2
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.29-1+deb8u2.dsc' libidn_1.29-1+deb8u2.dsc 2177 SHA256:8346d3ad4ea48159c1008a7482685c7abfb0e3bcdc4bbda937b6a1774df1798f
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.29.orig.tar.gz' libidn_1.29.orig.tar.gz 3474087 SHA256:fb82747dbbf9b36f703ed27293317d818d7e851d4f5773dedf3efa4db32a7c7c
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.29-1+deb8u2.debian.tar.xz' libidn_1.29-1+deb8u2.debian.tar.xz 70728 SHA256:5f3be629b7185609bb2aed149f568a014524f69dec1368a4455a4eb0972a61d9
```

Likely also available for browsing at:

- https://sources.debian.net/src/libidn/1.29-1+deb8u2/
- https://sources.debian.net/src/libidn/1.29-1+deb8u2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libjpeg-turbo=1:1.3.1-12`

Binary Packages:

- `libjpeg-dev=1:1.3.1-12`
- `libjpeg62-turbo:amd64=1:1.3.1-12`
- `libjpeg62-turbo-dev:amd64=1:1.3.1-12`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg62-turbo/copyright`, `/usr/share/doc/libjpeg62-turbo-dev/copyright`)

- `BSD-3`
- `BSD-BY-LC-NE`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:1.3.1-12
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.3.1-12.dsc' libjpeg-turbo_1.3.1-12.dsc 2650 SHA256:1606a068d653c40da819e0ac4f9c560cf891d665ad5299c0eb994168830ce95d
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.3.1.orig.tar.gz' libjpeg-turbo_1.3.1.orig.tar.gz 1390282 SHA256:c132907417ddc40ed552fe53d6b91d5fecbb14a356a60ddc7ea50d6be9666fb9
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.3.1-12.debian.tar.xz' libjpeg-turbo_1.3.1-12.debian.tar.xz 78596 SHA256:046f88108246665a433cc60b0e9cec6c243b0163899c039542dbfb183fef6e71
```

Likely also available for browsing at:

- https://sources.debian.net/src/libjpeg-turbo/1:1.3.1-12/
- https://sources.debian.net/src/libjpeg-turbo/1:1.3.1-12/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `liblocale-gettext-perl=1.05-8`

Binary Packages:

- `liblocale-gettext-perl=1.05-8+b1`

Licenses: (parsed from: `/usr/share/doc/liblocale-gettext-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris liblocale-gettext-perl=1.05-8
'http://deb.debian.org/debian/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05-8.dsc' liblocale-gettext-perl_1.05-8.dsc 2114 SHA256:0549ab2b517c1aed9fb12e2fee3ee2eded5efa80758491089f531b3ca10cc4ab
'http://deb.debian.org/debian/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05.orig.tar.gz' liblocale-gettext-perl_1.05.orig.tar.gz 7693 SHA256:27367f3dc1be79c9ed178732756e37e4cfce45f9e2a27ebf26e1f40d80124694
'http://deb.debian.org/debian/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05-8.debian.tar.xz' liblocale-gettext-perl_1.05-8.debian.tar.xz 5472 SHA256:2bd28828012a6289052e1905779f0505d2e09f279d77a79611990ad8d2f27ba1
```

Likely also available for browsing at:

- https://sources.debian.net/src/liblocale-gettext-perl/1.05-8/
- https://sources.debian.net/src/liblocale-gettext-perl/1.05-8/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libmcrypt=2.5.8-3.3`

Binary Packages:

- `libmcrypt-dev=2.5.8-3.3`
- `libmcrypt4=2.5.8-3.3`

Licenses: (parsed from: `/usr/share/doc/libmcrypt-dev/copyright`, `/usr/share/doc/libmcrypt4/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libmcrypt=2.5.8-3.3
'http://deb.debian.org/debian/pool/main/libm/libmcrypt/libmcrypt_2.5.8-3.3.dsc' libmcrypt_2.5.8-3.3.dsc 1926 SHA256:83ea31a37aa86161f980b68d392dc293ee2d65b0b61ddc38ea7a9969df39863a
'http://deb.debian.org/debian/pool/main/libm/libmcrypt/libmcrypt_2.5.8.orig.tar.gz' libmcrypt_2.5.8.orig.tar.gz 1335178 SHA256:e4eb6c074bbab168ac47b947c195ff8cef9d51a211cdd18ca9c9ef34d27a373e
'http://deb.debian.org/debian/pool/main/libm/libmcrypt/libmcrypt_2.5.8-3.3.diff.gz' libmcrypt_2.5.8-3.3.diff.gz 5469 SHA256:bb55c2d5c86ecd620be4cf2888b0b7a57217670d3e36738d491dc3d4a72fabc3
```

Likely also available for browsing at:

- https://sources.debian.net/src/libmcrypt/2.5.8-3.3/
- https://sources.debian.net/src/libmcrypt/2.5.8-3.3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libmemcached=1.0.18-4`

Binary Packages:

- `libhashkit-dev=1.0.18-4`
- `libhashkit2:amd64=1.0.18-4`
- `libmemcached-dev=1.0.18-4`
- `libmemcached11:amd64=1.0.18-4`
- `libmemcachedutil2:amd64=1.0.18-4`

Licenses: (parsed from: `/usr/share/doc/libhashkit-dev/copyright`, `/usr/share/doc/libhashkit2/copyright`, `/usr/share/doc/libmemcached-dev/copyright`, `/usr/share/doc/libmemcached11/copyright`, `/usr/share/doc/libmemcachedutil2/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-Sun`
- `BSD-3-clause-TangentOrg`
- `Bob-Jenkins`
- `Paul-Hsieh`
- `RSA-Data-Security`

Source:

```console
$ apt-get source -qq --print-uris libmemcached=1.0.18-4
'http://deb.debian.org/debian/pool/main/libm/libmemcached/libmemcached_1.0.18-4.dsc' libmemcached_1.0.18-4.dsc 2371 SHA256:75979e654b956f8f3ecb820cb626a3e3de432dc3ade588578904e8a73f44f70c
'http://deb.debian.org/debian/pool/main/libm/libmemcached/libmemcached_1.0.18.orig.tar.gz' libmemcached_1.0.18.orig.tar.gz 1039649 SHA256:e22c0bb032fde08f53de9ffbc5a128233041d9f33b5de022c0978a2149885f82
'http://deb.debian.org/debian/pool/main/libm/libmemcached/libmemcached_1.0.18-4.debian.tar.xz' libmemcached_1.0.18-4.debian.tar.xz 11964 SHA256:2d1dcf6fa4e93d64490783db352bc136483dfe4ccb365ce269e4d66a89bc0cd0
```

Likely also available for browsing at:

- https://sources.debian.net/src/libmemcached/1.0.18-4/
- https://sources.debian.net/src/libmemcached/1.0.18-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libpng=1.2.50-2+deb8u2`

Binary Packages:

- `libpng12-0:amd64=1.2.50-2+deb8u2`
- `libpng12-dev:amd64=1.2.50-2+deb8u2`

Licenses: (parsed from: `/usr/share/doc/libpng12-0/copyright`, `/usr/share/doc/libpng12-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpng=1.2.50-2+deb8u2
'http://deb.debian.org/debian/pool/main/libp/libpng/libpng_1.2.50-2+deb8u2.dsc' libpng_1.2.50-2+deb8u2.dsc 2036 SHA256:ba814b51b9faaac1c0d1c3637013dd37facf87ea9e47348be423747f20f1fb9d
'http://deb.debian.org/debian/pool/main/libp/libpng/libpng_1.2.50.orig.tar.xz' libpng_1.2.50.orig.tar.xz 539152 SHA256:4724f81f8c92ac7f360ad1fbf173396ea7c535923424db9fbaff07bfd9d8e8e7
'http://deb.debian.org/debian/pool/main/libp/libpng/libpng_1.2.50-2+deb8u2.debian.tar.xz' libpng_1.2.50-2+deb8u2.debian.tar.xz 21496 SHA256:04b9bda0c27bc2d5628f8419e4674500b74d5cfc75219c5952c5c5b2de2f8106
```

Likely also available for browsing at:

- https://sources.debian.net/src/libpng/1.2.50-2+deb8u2/
- https://sources.debian.net/src/libpng/1.2.50-2+deb8u2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libselinux=2.3-2`

Binary Packages:

- `libselinux1:amd64=2.3-2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.3-2
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.3-2.dsc' libselinux_2.3-2.dsc 2024 SHA256:aea0e0502dd1d4df17be644efb0bfe2d38e32ba2e0769eaaf8a2b64a0eb99786
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.3.orig.tar.gz' libselinux_2.3.orig.tar.gz 171254 SHA256:0b1e0b43ecd84a812713d09564019b08e7c205d89072b5cbcd07b052cd8e77b2
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.3-2.debian.tar.xz' libselinux_2.3-2.debian.tar.xz 24384 SHA256:8ec4bdb5acc066d1b369877e9a94ec1a723e4d31691753e0e1861d0884b3fd1a
```

Likely also available for browsing at:

- https://sources.debian.net/src/libselinux/2.3-2/
- https://sources.debian.net/src/libselinux/2.3-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libsemanage=2.3-1`

Binary Packages:

- `libsemanage-common=2.3-1`
- `libsemanage1:amd64=2.3-1+b1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.3-1
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.3-1.dsc' libsemanage_2.3-1.dsc 2131 SHA256:21b321c61399deeb3d1b04b76a0c9f43e968371f3afc8a8eb859e3cc79f295aa
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.3.orig.tar.gz' libsemanage_2.3.orig.tar.gz 138231 SHA256:03e09e35e611c286e446bef92b6023ef2623815996f5a53394bb02e49a312e4b
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.3-1.debian.tar.xz' libsemanage_2.3-1.debian.tar.xz 14848 SHA256:e6e8002ae5084daf6628ac836e4724005dd7591f9a015203bb55e445508e55e6
```

Likely also available for browsing at:

- https://sources.debian.net/src/libsemanage/2.3-1/
- https://sources.debian.net/src/libsemanage/2.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libsepol=2.3-2`

Binary Packages:

- `libsepol1:amd64=2.3-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.3-2
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.3-2.dsc' libsepol_2.3-2.dsc 1762 SHA256:115ab27d7662fc03e64d9e70ed20b5dcb2adb6206155ba2577072352a5b79b6a
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.3.orig.tar.gz' libsepol_2.3.orig.tar.gz 209570 SHA256:cc8d8642c3b7b95d6928d65dcbca2ab0627abc1c05166637851e63c1a6eae68f
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.3-2.debian.tar.xz' libsepol_2.3-2.debian.tar.xz 12904 SHA256:4fea6f6de03cf6a8ba80579988ad56202d3652fe3153b0d2f8c65c89bba097a5
```

Likely also available for browsing at:

- https://sources.debian.net/src/libsepol/2.3-2/
- https://sources.debian.net/src/libsepol/2.3-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libsigsegv=2.10-4`

Binary Packages:

- `libsigsegv2:amd64=2.10-4+b1`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.10-4
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.10-4.dsc' libsigsegv_2.10-4.dsc 2166 SHA256:54837482677ed4d42203c80bb10ba0308431a00cb8ccca3256cce8a3bdfa8d8e
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.10.orig.tar.gz' libsigsegv_2.10.orig.tar.gz 402279 SHA256:8460a4a3dd4954c3d96d7a4f5dd5bc4d9b76f5754196aa245287553b26d2199a
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.10-4.debian.tar.xz' libsigsegv_2.10-4.debian.tar.xz 9532 SHA256:abc74f39b89e7dc5ee46cf4e9cf9e6b9dcc00122ffe87e49036647c5e9a10d36
```

Likely also available for browsing at:

- https://sources.debian.net/src/libsigsegv/2.10-4/
- https://sources.debian.net/src/libsigsegv/2.10-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libssh2=1.4.3-4.1+deb8u1`

Binary Packages:

- `libssh2-1:amd64=1.4.3-4.1+deb8u1`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.4.3-4.1+deb8u1
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.4.3-4.1+deb8u1.dsc' libssh2_1.4.3-4.1+deb8u1.dsc 1882 SHA256:38e3ec8ae8014a721d2f08f83494c927fe42aae11f8cf1592104205da2857ca8
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.4.3.orig.tar.gz' libssh2_1.4.3.orig.tar.gz 685712 SHA256:eac6f85f9df9db2e6386906a6227eb2cd7b3245739561cad7d6dc1d5d021b96d
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.4.3-4.1+deb8u1.debian.tar.xz' libssh2_1.4.3-4.1+deb8u1.debian.tar.xz 8276 SHA256:5da712fcae528ca559be8865dc9521ef11f006bda68c39e0bde8c0495e5a2cb7
```

Likely also available for browsing at:

- https://sources.debian.net/src/libssh2/1.4.3-4.1+deb8u1/
- https://sources.debian.net/src/libssh2/1.4.3-4.1+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libtasn1-6=4.2-3+deb8u2`

Binary Packages:

- `libtasn1-6:amd64=4.2-3+deb8u2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.2-3+deb8u2
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.2-3+deb8u2.dsc' libtasn1-6_4.2-3+deb8u2.dsc 2434 SHA256:b22337782c8f2edf9adf6e42c37808f116ad4cfab2b81c1e30a6fddb8aa0acf2
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.2.orig.tar.gz' libtasn1-6_4.2.orig.tar.gz 1866192 SHA256:693b41cb36c2ac02d5990180b0712a79a591168e93d85f7fcbb75a0a0be4cdbb
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.2-3+deb8u2.debian.tar.xz' libtasn1-6_4.2-3+deb8u2.debian.tar.xz 58556 SHA256:0f7587e82f702eb757c2ad842f4511ff1619b286bd2ccc3d61fa8bb490b839d1
```

Likely also available for browsing at:

- https://sources.debian.net/src/libtasn1-6/4.2-3+deb8u2/
- https://sources.debian.net/src/libtasn1-6/4.2-3+deb8u2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libtext-charwidth-perl=0.04-7`

Binary Packages:

- `libtext-charwidth-perl=0.04-7+b3`

Licenses: (parsed from: `/usr/share/doc/libtext-charwidth-perl/copyright`)

- `Artistic`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libtext-charwidth-perl=0.04-7
'http://deb.debian.org/debian/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-7.dsc' libtext-charwidth-perl_0.04-7.dsc 1810 SHA256:482493991d54786bc12b38f26b90d2bbc9234ac87c3e54e0474ac00cd979dd68
'http://deb.debian.org/debian/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04.orig.tar.bz2' libtext-charwidth-perl_0.04.orig.tar.bz2 8327 SHA256:2990c13c3f4a5479d7dbc5a94b86c23798cf0dc7df54ffe54e065f072558b6ed
'http://deb.debian.org/debian/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-7.debian.tar.bz2' libtext-charwidth-perl_0.04-7.debian.tar.bz2 3220 SHA256:4aa60af66136cad15d3c9ed73696b822c9f944a3b8484b03c388393302fa6038
```

Likely also available for browsing at:

- https://sources.debian.net/src/libtext-charwidth-perl/0.04-7/
- https://sources.debian.net/src/libtext-charwidth-perl/0.04-7/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libtext-iconv-perl=1.7-5`

Binary Packages:

- `libtext-iconv-perl=1.7-5+b2`

Licenses: (parsed from: `/usr/share/doc/libtext-iconv-perl/copyright`)

- `Artistic`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libtext-iconv-perl=1.7-5
'http://deb.debian.org/debian/pool/main/libt/libtext-iconv-perl/libtext-iconv-perl_1.7-5.dsc' libtext-iconv-perl_1.7-5.dsc 1828 SHA256:6f049f3ed556a9c429f00c88a28ce595446f26996f2f5173e02f51f51277749d
'http://deb.debian.org/debian/pool/main/libt/libtext-iconv-perl/libtext-iconv-perl_1.7.orig.tar.bz2' libtext-iconv-perl_1.7.orig.tar.bz2 9977 SHA256:815c5169b7afc40bc6f681b4c615ff8fb0e073d87422280c8c759a4666567490
'http://deb.debian.org/debian/pool/main/libt/libtext-iconv-perl/libtext-iconv-perl_1.7-5.debian.tar.bz2' libtext-iconv-perl_1.7-5.debian.tar.bz2 3157 SHA256:e0ee2ae3908bbde6d43098a6491284fdc7a0a117229053d1e9c539eb66127092
```

Likely also available for browsing at:

- https://sources.debian.net/src/libtext-iconv-perl/1.7-5/
- https://sources.debian.net/src/libtext-iconv-perl/1.7-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libtext-wrapi18n-perl=0.06-7`

Binary Packages:

- `libtext-wrapi18n-perl=0.06-7`

Licenses: (parsed from: `/usr/share/doc/libtext-wrapi18n-perl/copyright`)

- `Artistic`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtext-wrapi18n-perl=0.06-7
'http://deb.debian.org/debian/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-7.dsc' libtext-wrapi18n-perl_0.06-7.dsc 1156 SHA256:777dd5309172c3fa6ccea73b3c821cf6533ddb72b4adbe4def9d45fd8902b544
'http://deb.debian.org/debian/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06.orig.tar.gz' libtext-wrapi18n-perl_0.06.orig.tar.gz 3797 SHA256:432c2a801efe9f12d631124c1163439eac4c99449ba13d80133c45ecacc627f5
'http://deb.debian.org/debian/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-7.diff.gz' libtext-wrapi18n-perl_0.06-7.diff.gz 3031 SHA256:fae1a435e8b2604bf78666e58e4603728990495db302a9799d63cb099e3b4001
```

Likely also available for browsing at:

- https://sources.debian.net/src/libtext-wrapi18n-perl/0.06-7/
- https://sources.debian.net/src/libtext-wrapi18n-perl/0.06-7/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libusb=2:0.1.12-25`

Binary Packages:

- `libusb-0.1-4:amd64=2:0.1.12-25`

Licenses: (parsed from: `/usr/share/doc/libusb-0.1-4/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libusb=2:0.1.12-25
'http://deb.debian.org/debian/pool/main/libu/libusb/libusb_0.1.12-25.dsc' libusb_0.1.12-25.dsc 1958 SHA256:905e7cc36c9ba24f6d58e416f8882bc2522673cfb9f63687b48c62c9e3b6c80c
'http://deb.debian.org/debian/pool/main/libu/libusb/libusb_0.1.12.orig.tar.gz' libusb_0.1.12.orig.tar.gz 389343 SHA256:37f6f7d9de74196eb5fc0bbe0aea9b5c939de7f500acba3af6fd643f3b538b44
'http://deb.debian.org/debian/pool/main/libu/libusb/libusb_0.1.12-25.debian.tar.xz' libusb_0.1.12-25.debian.tar.xz 22008 SHA256:9e42ea2a8e0ec85b13cb8c9df7dc3aff58ee82e3692a7656558ae91ceeabf7d1
```

Likely also available for browsing at:

- https://sources.debian.net/src/libusb/2:0.1.12-25/
- https://sources.debian.net/src/libusb/2:0.1.12-25/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxml2=2.9.1+dfsg1-5+deb8u3`

Binary Packages:

- `libxml2:amd64=2.9.1+dfsg1-5+deb8u3`
- `libxml2-dev:amd64=2.9.1+dfsg1-5+deb8u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.1+dfsg1-5+deb8u3
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.1+dfsg1-5+deb8u3.dsc' libxml2_2.9.1+dfsg1-5+deb8u3.dsc 2591 SHA256:57c260e91d7892f2b778b2f8b132b206dcc325a004d4c193ae6913c593a8bc2f
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.1+dfsg1.orig.tar.gz' libxml2_2.9.1+dfsg1.orig.tar.gz 3793894 SHA256:f3ec5256412192f74833286c4490672500b232ed1c9195214db2c641df064a28
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.1+dfsg1-5+deb8u3.debian.tar.xz' libxml2_2.9.1+dfsg1-5+deb8u3.debian.tar.xz 64108 SHA256:072644c58b39997efee6e25781900c5b53b07dc41ada219945285a876e3abc1e
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxml2/2.9.1+dfsg1-5+deb8u3/
- https://sources.debian.net/src/libxml2/2.9.1+dfsg1-5+deb8u3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `linux=3.16.36-1+deb8u2`

Binary Packages:

- `linux-libc-dev:amd64=3.16.36-1+deb8u2`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`
- `Unicode-data`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=3.16.36-1+deb8u2
'http://security.debian.org/pool/updates/main/l/linux/linux_3.16.36-1+deb8u2.dsc' linux_3.16.36-1+deb8u2.dsc 140735 SHA256:7377653ff5f7e75ef1d3f3f3c0168d00b92a0463f27b8e288fa907dc4158e3ac
'http://security.debian.org/pool/updates/main/l/linux/linux_3.16.36.orig.tar.xz' linux_3.16.36.orig.tar.xz 81786052 SHA256:5dd1766c3ab3dd2e90f6b3c67fa05b7dedcf844a9c0a71a0147a3d0e6694333a
'http://security.debian.org/pool/updates/main/l/linux/linux_3.16.36-1+deb8u2.debian.tar.xz' linux_3.16.36-1+deb8u2.debian.tar.xz 3229396 SHA256:5d3f70622408e74d60ea2514d76bb5c6ec1955120d732bcfddd3ef1bec106344
```

Likely also available for browsing at:

- https://sources.debian.net/src/linux/3.16.36-1+deb8u2/
- https://sources.debian.net/src/linux/3.16.36-1+deb8u2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `lsb=4.1+Debian13+nmu1`

Binary Packages:

- `lsb-base=4.1+Debian13+nmu1`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=4.1+Debian13+nmu1
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_4.1+Debian13+nmu1.dsc' lsb_4.1+Debian13+nmu1.dsc 2449 SHA256:ef70a3302cf4b50c02ad3cfb90d7997968dd509dc0dbb77562b76f23b617c254
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_4.1+Debian13+nmu1.tar.xz' lsb_4.1+Debian13+nmu1.tar.xz 59880 SHA256:7f5fbd13c04de166d0f658c0b71ed97c3fe07e01e165f5c0bd68ff5977bee72d
```

Likely also available for browsing at:

- https://sources.debian.net/src/lsb/4.1+Debian13+nmu1/
- https://sources.debian.net/src/lsb/4.1+Debian13+nmu1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `lvm2=2.02.111-2.2+deb8u1`

Binary Packages:

- `dmsetup=2:1.02.90-2.2+deb8u1`
- `libdevmapper1.02.1:amd64=2:1.02.90-2.2+deb8u1`

Licenses: (parsed from: `/usr/share/doc/dmsetup/copyright`, `/usr/share/doc/libdevmapper1.02.1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris lvm2=2.02.111-2.2+deb8u1
'http://deb.debian.org/debian/pool/main/l/lvm2/lvm2_2.02.111-2.2+deb8u1.dsc' lvm2_2.02.111-2.2+deb8u1.dsc 2474 SHA256:9e67627d50ef43b88f29a42b5ff4d48b0bfeeb35d98c09da33c6ce51e99c5d96
'http://deb.debian.org/debian/pool/main/l/lvm2/lvm2_2.02.111.orig.tar.gz' lvm2_2.02.111.orig.tar.gz 1497626 SHA256:ff358054ee821503ada8a33b327688cd4d64a2fc448c667a85c332c545aae4f6
'http://deb.debian.org/debian/pool/main/l/lvm2/lvm2_2.02.111-2.2+deb8u1.debian.tar.xz' lvm2_2.02.111-2.2+deb8u1.debian.tar.xz 29476 SHA256:df657682e06f9559d04719c1543285e8bcb51fb4647f673b787538fb34ebe26f
```

Likely also available for browsing at:

- https://sources.debian.net/src/lvm2/2.02.111-2.2+deb8u1/
- https://sources.debian.net/src/lvm2/2.02.111-2.2+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `m4=1.4.17-4`

Binary Packages:

- `m4=1.4.17-4`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.17-4
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.17-4.dsc' m4_1.4.17-4.dsc 1412 SHA256:5b668aa9c59b053a1ff7a7bccda986f2d4cf1702e42d80cace78eeced9518ef8
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.17.orig.tar.xz' m4_1.4.17.orig.tar.xz 1149088 SHA256:f0543c3beb51fa6b3337d8025331591e0e18d8ec2886ed391f1aade43477d508
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.17-4.debian.tar.xz' m4_1.4.17-4.debian.tar.xz 9572 SHA256:6ceab2d3c2d1d7a7ab083b134df1aaf083f93b0ac1346a4eeb5dafbdc9418a06
```

Likely also available for browsing at:

- https://sources.debian.net/src/m4/1.4.17-4/
- https://sources.debian.net/src/m4/1.4.17-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `make-dfsg=4.0-8.1`

Binary Packages:

- `make=4.0-8.1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.0-8.1
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.0-8.1.dsc' make-dfsg_4.0-8.1.dsc 2021 SHA256:ae258d9abb68e756d1ff5195dc3060748b3d4b019ccce19a249d4de23039a0ce
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.0.orig.tar.gz' make-dfsg_4.0.orig.tar.gz 1401242 SHA256:6916aa026d930cfc5a4f93aba24fc231d47a0486c3b8e5b69112dd1f7b81c4fe
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.0-8.1.debian.tar.xz' make-dfsg_4.0-8.1.debian.tar.xz 42200 SHA256:3cf5a779102c7acb3a00711a417aab85618c8da4d3f1d04bf85b2d95c4a98f09
```

Likely also available for browsing at:

- https://sources.debian.net/src/make-dfsg/4.0-8.1/
- https://sources.debian.net/src/make-dfsg/4.0-8.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `mawk=1.3.3-17`

Binary Packages:

- `mawk=1.3.3-17`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.3-17.dsc' mawk_1.3.3-17.dsc 1801 SHA256:f98ce6e153e8ac1faf8165bbf77447a4279313f1c18f6bfeec0c5ce35e4b9c03
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.3-17.diff.gz' mawk_1.3.3-17.diff.gz 63506 SHA256:13cb66b6eb5ee654d5626621d5ef476ede6b0bebac18ce765516de810e58490c
```

Likely also available for browsing at:

- https://sources.debian.net/src/mawk/1.3.3-17/
- https://sources.debian.net/src/mawk/1.3.3-17/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `mpclib3=1.0.2-1`

Binary Packages:

- `libmpc3:amd64=1.0.2-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.0.2-1
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.2-1.dsc' mpclib3_1.0.2-1.dsc 1239 SHA256:480e3b32fe3c67b503635d2a0aa0e87503475cf54ddf7943be0255e453c42fe5
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.2.orig.tar.gz' mpclib3_1.0.2.orig.tar.gz 633173 SHA256:b561f54d8a479cee3bc891ee52735f18ff86712ba30f036f8b8537bae380c488
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.2-1.diff.gz' mpclib3_1.0.2-1.diff.gz 3370 SHA256:22e1db34773adaf27cc16a2260ae4e8f22cc80476b861a0856f93aa08ec8cc91
```

Likely also available for browsing at:

- https://sources.debian.net/src/mpclib3/1.0.2-1/
- https://sources.debian.net/src/mpclib3/1.0.2-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `mpfr4=3.1.2-2`

Binary Packages:

- `libmpfr4:amd64=3.1.2-2`

Licenses: (parsed from: `/usr/share/doc/libmpfr4/copyright`)

- `GFDL`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=3.1.2-2
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.2-2.dsc' mpfr4_3.1.2-2.dsc 2116 SHA256:fcbf025b0daf6dc95715ac226d4e4a8f86cda4b796115ad5b9d8271da6de9c7b
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.2.orig.tar.xz' mpfr4_3.1.2.orig.tar.xz 1074388 SHA256:399d0f47ef6608cc01d29ed1b99c7faff36d9994c45f36f41ba250147100453b
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.2-2.debian.tar.xz' mpfr4_3.1.2-2.debian.tar.xz 12804 SHA256:49efd1d2032c8576868b64419e3403869dd5a62e1974b341f836852f7f2fd097
```

Likely also available for browsing at:

- https://sources.debian.net/src/mpfr4/3.1.2-2/
- https://sources.debian.net/src/mpfr4/3.1.2-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `ncurses=5.9+20140913-1`

Binary Packages:

- `libncurses5:amd64=5.9+20140913-1+b1`
- `libncursesw5:amd64=5.9+20140913-1+b1`
- `libtinfo5:amd64=5.9+20140913-1+b1`
- `ncurses-base=5.9+20140913-1`
- `ncurses-bin=5.9+20140913-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=5.9+20140913-1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_5.9+20140913-1.dsc' ncurses_5.9+20140913-1.dsc 3463 SHA256:c45d894baa8bd4814e41308edc573e2a5c0f14bdc849925a4a9281e0f3b3b640
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_5.9+20140913.orig.tar.gz' ncurses_5.9+20140913.orig.tar.gz 2987249 SHA256:c4247ad81ee9d743caba8a2db6dd96d36878530b2e76e376af1c00b067a2dec9
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_5.9+20140913-1.debian.tar.xz' ncurses_5.9+20140913-1.debian.tar.xz 51252 SHA256:ff102696241674e40cc0e525ae6cd4b10d249e29f2c77aa9c983af0bcebdd4ff
```

Likely also available for browsing at:

- https://sources.debian.net/src/ncurses/5.9+20140913-1/
- https://sources.debian.net/src/ncurses/5.9+20140913-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `netbase=5.3`

Binary Packages:

- `netbase=5.3`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=5.3
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.3.dsc' netbase_5.3.dsc 1308 SHA256:fcb9c97fe55277f775fd5a39933ca0189b9a983c6cf1abc8184fc29b8e1d77cb
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.3.tar.xz' netbase_5.3.tar.xz 31292 SHA256:81f6c69795044d62b8ad959cf9daf049d0545fd466c52860ad3f933b1e97b88b
```

Likely also available for browsing at:

- https://sources.debian.net/src/netbase/5.3/
- https://sources.debian.net/src/netbase/5.3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `nettle=2.7.1-5+deb8u1`

Binary Packages:

- `libhogweed2:amd64=2.7.1-5+deb8u1`
- `libnettle4:amd64=2.7.1-5+deb8u1`

Licenses: (parsed from: `/usr/share/doc/libhogweed2/copyright`, `/usr/share/doc/libnettle4/copyright`)

- `GAP`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1+`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nettle=2.7.1-5+deb8u1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_2.7.1-5+deb8u1.dsc' nettle_2.7.1-5+deb8u1.dsc 2096 SHA256:9be625f7f50ee4844c8c4f776fb8d040141707760b481acd2f739a9280fa6dc5
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_2.7.1.orig.tar.gz' nettle_2.7.1.orig.tar.gz 1558863 SHA256:bc71ebd43435537d767799e414fce88e521b7278d48c860651216e1fc6555b40
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_2.7.1-5+deb8u1.debian.tar.xz' nettle_2.7.1-5+deb8u1.debian.tar.xz 19472 SHA256:ef01d799c2bae969afe33cf433a0cd8a9d507fe8510a775b5ff8ddc73e86559c
```

Likely also available for browsing at:

- https://sources.debian.net/src/nettle/2.7.1-5+deb8u1/
- https://sources.debian.net/src/nettle/2.7.1-5+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openldap=2.4.40+dfsg-1+deb8u2`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.40+dfsg-1+deb8u2`
- `libldap2-dev:amd64=2.4.40+dfsg-1+deb8u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.40+dfsg-1+deb8u2
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.40+dfsg-1+deb8u2.dsc' openldap_2.4.40+dfsg-1+deb8u2.dsc 2819 SHA256:fa6859696d15e6e2a40a940cb4f4356d0c04b5994faf02717f64c1e51517e877
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.40+dfsg.orig.tar.gz' openldap_2.4.40+dfsg.orig.tar.gz 4797667 SHA256:86c0326dc3dc5f1a9b3c25f7106b96f3eafcdf5da090b1fc586dec57d56e0e7f
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.40+dfsg-1+deb8u2.diff.gz' openldap_2.4.40+dfsg-1+deb8u2.diff.gz 179809 SHA256:aa5cb8c89c602c3625e121555de6dea53df051c811da49dc0f4487f4b859061a
```

Likely also available for browsing at:

- https://sources.debian.net/src/openldap/2.4.40+dfsg-1+deb8u2/
- https://sources.debian.net/src/openldap/2.4.40+dfsg-1+deb8u2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openssl=1.0.1t-1+deb8u5`

Binary Packages:

- `libssl-dev:amd64=1.0.1t-1+deb8u5`
- `libssl-doc=1.0.1t-1+deb8u5`
- `libssl1.0.0:amd64=1.0.1t-1+deb8u5`
- `openssl=1.0.1t-1+deb8u5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.0.1t-1+deb8u5
'http://security.debian.org/pool/updates/main/o/openssl/openssl_1.0.1t-1+deb8u5.dsc' openssl_1.0.1t-1+deb8u5.dsc 2258 SHA256:165eb617542ab1e9bf810c215b586a57b926f3f6977c1a72af752754c7c90bea
'http://security.debian.org/pool/updates/main/o/openssl/openssl_1.0.1t.orig.tar.gz' openssl_1.0.1t.orig.tar.gz 4556447 SHA256:4a6ee491a2fdb22e519c76fdc2a628bb3cec12762cd456861d207996c8a07088
'http://security.debian.org/pool/updates/main/o/openssl/openssl_1.0.1t-1+deb8u5.debian.tar.xz' openssl_1.0.1t-1+deb8u5.debian.tar.xz 106720 SHA256:c6723fbf370ec5544c9b1753d5ad06d4b343a341560fb8650dda135506312cd9
```

Likely also available for browsing at:

- https://sources.debian.net/src/openssl/1.0.1t-1+deb8u5/
- https://sources.debian.net/src/openssl/1.0.1t-1+deb8u5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `p11-kit=0.20.7-1`

Binary Packages:

- `libp11-kit0:amd64=0.20.7-1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `This file is distributed under the same license as the debian`
- `This file is distributed under the same license as the p11-kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.20.7-1
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.20.7-1.dsc' p11-kit_0.20.7-1.dsc 2221 SHA256:459d56241f560163471eb5ec789eb5691ca97c5aa9a1bca98dabcf613a2d4bc3
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.20.7.orig.tar.gz' p11-kit_0.20.7.orig.tar.gz 986731 SHA256:68405492fe466b33927d461302aa98e703db3b8a596411585508bc33084484d2
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.20.7-1.debian.tar.xz' p11-kit_0.20.7-1.debian.tar.xz 14208 SHA256:515dfcc279d284bfbee4d172c9cf1db3befe52d55e6d3f50d024c8f72d56574d
```

Likely also available for browsing at:

- https://sources.debian.net/src/p11-kit/0.20.7-1/
- https://sources.debian.net/src/p11-kit/0.20.7-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pam=1.1.8-3.1+deb8u1`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.1+deb8u1+b1`
- `libpam-modules-bin=1.1.8-3.1+deb8u1+b1`
- `libpam-runtime=1.1.8-3.1+deb8u1`
- `libpam0g:amd64=1.1.8-3.1+deb8u1+b1`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.1+deb8u1
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.1+deb8u1.dsc' pam_1.1.8-3.1+deb8u1.dsc 2490 SHA256:4d13711e521437f821647bcccdcd464f7791dddd54c6eda86acecd03cc7817f2
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.1+deb8u1.diff.gz' pam_1.1.8-3.1+deb8u1.diff.gz 134556 SHA256:5b6b66c660eab29b12d298e30189d647a3fa02c9551c71fdfcb62ec2caf165d2
```

Likely also available for browsing at:

- https://sources.debian.net/src/pam/1.1.8-3.1+deb8u1/
- https://sources.debian.net/src/pam/1.1.8-3.1+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pcre3=2:8.35-3.3+deb8u4`

Binary Packages:

- `libpcre3:amd64=2:8.35-3.3+deb8u4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.35-3.3+deb8u4
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.35-3.3+deb8u4.dsc' pcre3_8.35-3.3+deb8u4.dsc 1985 SHA256:862ee7365c8cc9916f58856617701e2e2f3dcd384a34375379ddfa52b642c649
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.35.orig.tar.gz' pcre3_8.35.orig.tar.gz 1996552 SHA256:1c9ee292943ba2737f127b481a3f72f44c13fbd09a7b5b4eb8fa58650cfa56a0
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.35-3.3+deb8u4.debian.tar.gz' pcre3_8.35-3.3+deb8u4.debian.tar.gz 38081 SHA256:93e38ad38d4cdb21d346226eebc7e2ad419cbfe0261b27d2910e8e5c3a946fb9
```

Likely also available for browsing at:

- https://sources.debian.net/src/pcre3/2:8.35-3.3+deb8u4/
- https://sources.debian.net/src/pcre3/2:8.35-3.3+deb8u4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `perl=5.20.2-3+deb8u6`

Binary Packages:

- `perl=5.20.2-3+deb8u6`
- `perl-base=5.20.2-3+deb8u6`
- `perl-modules=5.20.2-3+deb8u6`

Licenses: (parsed from: `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules/copyright`)

- `Artistic`
- `Artistic,`
- `Artistic-2`
- `BSD-3-clause`
- `BSD-3-clause-GENERIC`
- `BSD-4-clause`
- `BSD-4-clause-POWERDOG`
- `BZIP`
- `DONT-CHANGE-THE-GPL`
- `Expat`
- `GPL-1`
- `GPL-1+`
- `GPL-2+`
- `GPL-3+-WITH-BISON-EXCEPTION`
- `HSIEH-BSD`
- `HSIEH-DERIVATIVE`
- `LGPL-2.1`
- `REGCOMP`
- `REGCOMP,`
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.20.2-3+deb8u6
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.20.2-3+deb8u6.dsc' perl_5.20.2-3+deb8u6.dsc 2322 SHA256:b7569ffa209fcd84bc4d487a9c242b21b0db591b3a9222ae0e1140bab67c6106
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.20.2.orig.tar.bz2' perl_5.20.2.orig.tar.bz2 13717128 SHA256:e5a4713bc65e1da98ebd833dce425c000768bfe84d17ec5183ec5ca249db71ab
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.20.2-3+deb8u6.debian.tar.xz' perl_5.20.2-3+deb8u6.debian.tar.xz 147848 SHA256:f6d31a96ea22b2f2626bb017c4960bcbdf1ac1e11e5639175cd9418fdccda812
```

Likely also available for browsing at:

- https://sources.debian.net/src/perl/5.20.2-3+deb8u6/
- https://sources.debian.net/src/perl/5.20.2-3+deb8u6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pkg-config=0.28-1`

Binary Packages:

- `pkg-config=0.28-1`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.28-1
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.28-1.dsc' pkg-config_0.28-1.dsc 1733 SHA256:d4a855310665e61dea83b858b70465cf7174797b322f75142863e9853ca35960
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.28.orig.tar.gz' pkg-config_0.28.orig.tar.gz 1931203 SHA256:6b6eb31c6ec4421174578652c7e141fdaae2dabad1021f420d8713206ac1f845
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.28-1.diff.gz' pkg-config_0.28-1.diff.gz 5942 SHA256:c5f6afcbadeded6a9cf192efc3bd882095e9ba73576de0544e393184e989992f
```

Likely also available for browsing at:

- https://sources.debian.net/src/pkg-config/0.28-1/
- https://sources.debian.net/src/pkg-config/0.28-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `postgresql-9.4=9.4.9-0+deb8u1`

Binary Packages:

- `libpq-dev=9.4.9-0+deb8u1`
- `libpq5:amd64=9.4.9-0+deb8u1`

Licenses: (parsed from: `/usr/share/doc/libpq-dev/copyright`, `/usr/share/doc/libpq5/copyright`)

- `Tcl`
- `almost exclusively BSD`

Source:

```console
$ apt-get source -qq --print-uris postgresql-9.4=9.4.9-0+deb8u1
'http://deb.debian.org/debian/pool/main/p/postgresql-9.4/postgresql-9.4_9.4.9-0+deb8u1.dsc' postgresql-9.4_9.4.9-0+deb8u1.dsc 3525 SHA256:6aca81ec5b66c4f868733ef841a4b78beaf0b581bc0b9ab48f83336cd7d65513
'http://deb.debian.org/debian/pool/main/p/postgresql-9.4/postgresql-9.4_9.4.9.orig.tar.bz2' postgresql-9.4_9.4.9.orig.tar.bz2 17763281 SHA256:c120a62e90214c20d9160da3ca3fbaec97d5f1656f1dd033f60e7297b7a1e1c9
'http://deb.debian.org/debian/pool/main/p/postgresql-9.4/postgresql-9.4_9.4.9-0+deb8u1.debian.tar.xz' postgresql-9.4_9.4.9-0+deb8u1.debian.tar.xz 22404 SHA256:1ae3b228dc8c392a276bcc78ac7e5ae1ecc8cc1bcb5f182478979babd0b20c21
```

Likely also available for browsing at:

- https://sources.debian.net/src/postgresql-9.4/9.4.9-0+deb8u1/
- https://sources.debian.net/src/postgresql-9.4/9.4.9-0+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `procps=2:3.3.9-9`

Binary Packages:

- `libprocps3:amd64=2:3.3.9-9`
- `procps=2:3.3.9-9`

Licenses: (parsed from: `/usr/share/doc/libprocps3/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.9-9
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.9-9.dsc' procps_3.3.9-9.dsc 2052 SHA256:b4ee0cb8b2cfb6362bf5a9b6ad2ac1a921098638c8c396fae5823080a159935d
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.9.orig.tar.xz' procps_3.3.9.orig.tar.xz 560812 SHA256:00f0cb0fadf968ddf605b0ef119846af07386629244d4f3da711a2cecf4e8663
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.9-9.debian.tar.xz' procps_3.3.9-9.debian.tar.xz 35096 SHA256:d66ade0f2d1b44ef55404cc612e25c0f031e7ed2f05e5ab628a0de8c27ed19bf
```

Likely also available for browsing at:

- https://sources.debian.net/src/procps/2:3.3.9-9/
- https://sources.debian.net/src/procps/2:3.3.9-9/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `re2c=0.13.5-1`

Binary Packages:

- `re2c=0.13.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris re2c=0.13.5-1
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_0.13.5-1.dsc' re2c_0.13.5-1.dsc 975 SHA256:738bfd97cfeb7ef734f41b905cba35c8b0e65d2217eaf12b90f1afcf024dbada
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_0.13.5.orig.tar.gz' re2c_0.13.5.orig.tar.gz 782725 SHA256:f3a995139af475e80a30207d02728b1e0065b0caade7375e974cb1b14861668c
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_0.13.5-1.diff.gz' re2c_0.13.5-1.diff.gz 3229 SHA256:a0dc52d14ec99964ae1f45520156ba3ddd071bf25923395daf05df1a1f0593dd
```

Likely also available for browsing at:

- https://sources.debian.net/src/re2c/0.13.5-1/
- https://sources.debian.net/src/re2c/0.13.5-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `readline6=6.3-8`

Binary Packages:

- `libreadline6:amd64=6.3-8+b3`
- `readline-common=6.3-8`

Licenses: (parsed from: `/usr/share/doc/libreadline6/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline6=6.3-8
'http://deb.debian.org/debian/pool/main/r/readline6/readline6_6.3-8.dsc' readline6_6.3-8.dsc 1941 SHA256:f7ab77b8580cbdb10b3906f40c3da12d0acc93bef786ff217c65aabc32973cec
'http://deb.debian.org/debian/pool/main/r/readline6/readline6_6.3.orig.tar.gz' readline6_6.3.orig.tar.gz 2468560 SHA256:56ba6071b9462f980c5a72ab0023893b65ba6debb4eeb475d7a563dc65cafd43
'http://deb.debian.org/debian/pool/main/r/readline6/readline6_6.3-8.debian.tar.xz' readline6_6.3-8.debian.tar.xz 30576 SHA256:c2b55fdd221136f46fa1e0cbf0bf2e37b70ddf97929312fbab6032e9129d58b5
```

Likely also available for browsing at:

- https://sources.debian.net/src/readline6/6.3-8/
- https://sources.debian.net/src/readline6/6.3-8/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `rtmpdump=2.4+20150115.gita107cef-1`

Binary Packages:

- `librtmp1:amd64=2.4+20150115.gita107cef-1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20150115.gita107cef-1
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20150115.gita107cef-1.dsc' rtmpdump_2.4+20150115.gita107cef-1.dsc 2257 SHA256:acfa72b9e6e0a96b4a514201b2e11e8ec9ae3173596f0467f6a5eb300d5fecdd
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20150115.gita107cef.orig.tar.gz' rtmpdump_2.4+20150115.gita107cef.orig.tar.gz 142030 SHA256:d47ef3a07815079bf73eb5d053001c4341407fcbebf39f34e6213c4b772cb29a
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20150115.gita107cef-1.debian.tar.xz' rtmpdump_2.4+20150115.gita107cef-1.debian.tar.xz 7004 SHA256:68d430d4f97be9767674920fb0a7821761ad1633578aa3cd6144b919ebbfcca4
```

Likely also available for browsing at:

- https://sources.debian.net/src/rtmpdump/2.4+20150115.gita107cef-1/
- https://sources.debian.net/src/rtmpdump/2.4+20150115.gita107cef-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sed=4.2.2-4`

Binary Packages:

- `sed=4.2.2-4+b1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris sed=4.2.2-4
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.2-4.dsc' sed_4.2.2-4.dsc 1825 SHA256:6da9792019d46b284ddeae274b86a9087f70a9628b5c1c5b5249fece473c7811
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.2.orig.tar.bz2' sed_4.2.2.orig.tar.bz2 1059414 SHA256:f048d1838da284c8bc9753e4506b85a1e0cc1ea8999d36f6995bcb9460cddbd7
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.2-4.debian.tar.xz' sed_4.2.2-4.debian.tar.xz 57644 SHA256:bcceb809e26ad0088b7a468c03d62ab3865809d0ea7b97dcad0188a69217438e
```

Likely also available for browsing at:

- https://sources.debian.net/src/sed/4.2.2-4/
- https://sources.debian.net/src/sed/4.2.2-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sensible-utils=0.0.9`

Binary Packages:

- `sensible-utils=0.0.9`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.9
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.9.dsc' sensible-utils_0.0.9.dsc 1405 SHA256:390c29b31a09ab7f31f8b5fc0fd82e47c25f15b22b17c614fb87f12d3b091070
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.9.tar.gz' sensible-utils_0.0.9.tar.gz 74331 SHA256:6fcb5cc0f7f1cf80421840cfa17b1b3fa5afaf3fe852dc984a789023af2f70c6
```

Likely also available for browsing at:

- https://sources.debian.net/src/sensible-utils/0.0.9/
- https://sources.debian.net/src/sensible-utils/0.0.9/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `shadow=1:4.2-3+deb8u1`

Binary Packages:

- `login=1:4.2-3+deb8u1`
- `passwd=1:4.2-3+deb8u1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.2-3+deb8u1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.2-3+deb8u1.dsc' shadow_4.2-3+deb8u1.dsc 1997 SHA256:70707cb99ecf37c23abf020506dfd4a76834dd334317e3d34addcdee1c8fe8e8
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.2.orig.tar.xz' shadow_4.2.orig.tar.xz 1088696 SHA256:c5bd72c4ecb438b99289e4630b22ea0626987a378d084910dbe59eceaa34be1d
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.2-3+deb8u1.debian.tar.xz' shadow_4.2-3+deb8u1.debian.tar.xz 496336 SHA256:f189d31410ef30fb53dac5373c3973109233a7afb345b237a879f0d32d2511ab
```

Likely also available for browsing at:

- https://sources.debian.net/src/shadow/1:4.2-3+deb8u1/
- https://sources.debian.net/src/shadow/1:4.2-3+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `slang2=2.3.0-2`

Binary Packages:

- `libslang2:amd64=2.3.0-2`

Licenses: (parsed from: `/usr/share/doc/libslang2/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris slang2=2.3.0-2
'http://deb.debian.org/debian/pool/main/s/slang2/slang2_2.3.0-2.dsc' slang2_2.3.0-2.dsc 2329 SHA256:2d6ede702782aec9758a3fb6001837ef6d2191d3989db63aa55333da74d5b05e
'http://deb.debian.org/debian/pool/main/s/slang2/slang2_2.3.0.orig.tar.xz' slang2_2.3.0.orig.tar.xz 1250392 SHA256:cdd5b9582959b3afdae403ee6f4be9de8efc7e205e4a7de18c1a847ea5ef0472
'http://deb.debian.org/debian/pool/main/s/slang2/slang2_2.3.0-2.debian.tar.xz' slang2_2.3.0-2.debian.tar.xz 21864 SHA256:8b088f54be2a284eedee56d74968feb4cc662410d352280a7e351cc02bef57b2
```

Likely also available for browsing at:

- https://sources.debian.net/src/slang2/2.3.0-2/
- https://sources.debian.net/src/slang2/2.3.0-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sqlite3=3.8.7.1-1+deb8u2`

Binary Packages:

- `libsqlite3-0:amd64=3.8.7.1-1+deb8u2`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.8.7.1-1+deb8u2
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.8.7.1-1+deb8u2.dsc' sqlite3_3.8.7.1-1+deb8u2.dsc 2540 SHA256:a99074d920a3b6c95bbc55402ff62ccddbfeed2f1a0ed63423bf79e7e4faeff9
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.8.7.1.orig-www.tar.bz2' sqlite3_3.8.7.1.orig-www.tar.bz2 3337784 SHA256:e642657752f20144f42d002895510ea635e0384b14f276f1a2f281b73252bc64
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.8.7.1.orig.tar.bz2' sqlite3_3.8.7.1.orig.tar.bz2 4082068 SHA256:2632a999feba925aa0f1828fa669a091b165a719676765fb542f538345bfa7b9
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.8.7.1-1+deb8u2.debian.tar.xz' sqlite3_3.8.7.1-1+deb8u2.debian.tar.xz 20428 SHA256:e3ef272994d4423c0dbed82c1171d774d7c0a459db44eb1750a4a61d719fbbd2
```

Likely also available for browsing at:

- https://sources.debian.net/src/sqlite3/3.8.7.1-1+deb8u2/
- https://sources.debian.net/src/sqlite3/3.8.7.1-1+deb8u2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `startpar=0.59-3`

Binary Packages:

- `startpar=0.59-3`

Licenses: (parsed from: `/usr/share/doc/startpar/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris startpar=0.59-3
'http://deb.debian.org/debian/pool/main/s/startpar/startpar_0.59-3.dsc' startpar_0.59-3.dsc 1496 SHA256:f8fdfac7902c1b0cf5d627421893deaa8e041e9e23096ae60a33fe84464526ff
'http://deb.debian.org/debian/pool/main/s/startpar/startpar_0.59.orig.tar.bz2' startpar_0.59.orig.tar.bz2 22747 SHA256:30a30c8d27a694e3743c1839fb6f60563b2882cddf0e61c698120c4cbde1d7b9
'http://deb.debian.org/debian/pool/main/s/startpar/startpar_0.59-3.debian.tar.xz' startpar_0.59-3.debian.tar.xz 38428 SHA256:abd4650e507cd4e63e7caf2199972b6ee5367aea34ae8f53a19caf126bd2248c
```

Likely also available for browsing at:

- https://sources.debian.net/src/startpar/0.59-3/
- https://sources.debian.net/src/startpar/0.59-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `systemd=215-17+deb8u5`

Binary Packages:

- `libsystemd0:amd64=215-17+deb8u5`
- `libudev1:amd64=215-17+deb8u5`
- `systemd=215-17+deb8u5`
- `systemd-sysv=215-17+deb8u5`
- `udev=215-17+deb8u5`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`, `/usr/share/doc/systemd/copyright`, `/usr/share/doc/systemd-sysv/copyright`, `/usr/share/doc/udev/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=215-17+deb8u5
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_215-17+deb8u5.dsc' systemd_215-17+deb8u5.dsc 4117 SHA256:d66e49ebfb1693e637a5568e8250303c696b7955e303a455036cbd7c0ec0d336
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_215.orig.tar.xz' systemd_215.orig.tar.xz 2888652 SHA256:ce76a3c05e7d4adc806a3446a5510c0c9b76a33f19adc32754b69a0945124505
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_215-17+deb8u5.debian.tar.xz' systemd_215-17+deb8u5.debian.tar.xz 218268 SHA256:797a9ea4554fd4d2e6f5a40d0a71d565e2cb11bb88eb042f0c454c964e83a97b
```

Likely also available for browsing at:

- https://sources.debian.net/src/systemd/215-17+deb8u5/
- https://sources.debian.net/src/systemd/215-17+deb8u5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sysvinit=2.88dsf-59`

Binary Packages:

- `initscripts=2.88dsf-59`
- `sysv-rc=2.88dsf-59`
- `sysvinit-utils=2.88dsf-59`

Licenses: (parsed from: `/usr/share/doc/initscripts/copyright`, `/usr/share/doc/sysv-rc/copyright`, `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.dsc' sysvinit_2.88dsf-59.dsc 2467 SHA256:0201f6d34c1be692ac0e594a4006e7e0b921eda7ffb37b4373abc949bf7181b2
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.debian.tar.xz' sysvinit_2.88dsf-59.debian.tar.xz 152316 SHA256:cfd1ff3423b7cfb2239f2311088eba8e5b8abde1835cb25806fb0983d159635f
```

Likely also available for browsing at:

- https://sources.debian.net/src/sysvinit/2.88dsf-59/
- https://sources.debian.net/src/sysvinit/2.88dsf-59/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `tar=1.27.1-2+deb8u1`

Binary Packages:

- `tar=1.27.1-2+deb8u1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.27.1-2+deb8u1
'http://security.debian.org/pool/updates/main/t/tar/tar_1.27.1-2+deb8u1.dsc' tar_1.27.1-2+deb8u1.dsc 2049 SHA256:e42e96a9cdf325d7f030306735a1380276670deb72541a7f97ffe59a1e32e67b
'http://security.debian.org/pool/updates/main/t/tar/tar_1.27.1.orig.tar.xz' tar_1.27.1.orig.tar.xz 1704252 SHA256:58169c5a03c04be20d3fb91010b01e822c6a58060a96e7cf2f9c1944de0151ab
'http://security.debian.org/pool/updates/main/t/tar/tar_1.27.1-2+deb8u1.debian.tar.xz' tar_1.27.1-2+deb8u1.debian.tar.xz 32632 SHA256:dc2e495770f6c1c79a4e299d4008c8cb1f91a48e823751bc95d7f26ae498f995
```

Likely also available for browsing at:

- https://sources.debian.net/src/tar/1.27.1-2+deb8u1/
- https://sources.debian.net/src/tar/1.27.1-2+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `tzdata=2016j-0+deb8u1`

Binary Packages:

- `tzdata=2016j-0+deb8u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2016j-0+deb8u1
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2016j-0+deb8u1.dsc' tzdata_2016j-0+deb8u1.dsc 1985 SHA256:4330b2616f1d1a79d753af2de9f96f83d782ffdf3b8203f5a1169ca5ad1d8a94
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2016j.orig.tar.gz' tzdata_2016j.orig.tar.gz 321185 SHA256:f5ee4e0f115f6c2faee1c4b16193a97338cbd1b503f2cea6c5a768c82ff39dc8
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2016j-0+deb8u1.debian.tar.xz' tzdata_2016j-0+deb8u1.debian.tar.xz 102304 SHA256:0089268bc9e247e3d48e046770b873c1c90f7a33259c5bda0f0bef51345f8067
```

Likely also available for browsing at:

- https://sources.debian.net/src/tzdata/2016j-0+deb8u1/
- https://sources.debian.net/src/tzdata/2016j-0+deb8u1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `ustr=1.0.4-3`

Binary Packages:

- `libustr-1.0-1:amd64=1.0.4-3+b2`

Licenses: (parsed from: `/usr/share/doc/libustr-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris ustr=1.0.4-3
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-3.dsc' ustr_1.0.4-3.dsc 1992 SHA256:ca6043d523fd9f677446b6cac95ce5263768f3ccc5ee38ef10e1551b2cf1c00a
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-3.diff.gz' ustr_1.0.4-3.diff.gz 11415 SHA256:8349cbdef416e9b919d434c6a88c7e29700a00df3e81f21b7d8127ffd7e4945a
```

Likely also available for browsing at:

- https://sources.debian.net/src/ustr/1.0.4-3/
- https://sources.debian.net/src/ustr/1.0.4-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `util-linux=2.25.2-6`

Binary Packages:

- `bsdutils=1:2.25.2-6`
- `libblkid1:amd64=2.25.2-6`
- `libmount1:amd64=2.25.2-6`
- `libsmartcols1:amd64=2.25.2-6`
- `libuuid1:amd64=2.25.2-6`
- `mount=2.25.2-6`
- `util-linux=2.25.2-6`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris util-linux=2.25.2-6
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.25.2-6.dsc' util-linux_2.25.2-6.dsc 3443 SHA256:742a9c6378132c30d4bfc31722904e73a608c2fee1eab89d1d832c5e5672a82f
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.25.2.orig.tar.xz' util-linux_2.25.2.orig.tar.xz 3703644 SHA256:e0457f715b73f4a349e1acb08cb410bf0edc9a74a3f75c357070f31f70e33cd6
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.25.2-6.debian.tar.xz' util-linux_2.25.2-6.debian.tar.xz 304292 SHA256:b500d70a60f2814d6552492cee5f40c27063029ef74ddea53bc713503680527b
```

Likely also available for browsing at:

- https://sources.debian.net/src/util-linux/2.25.2-6/
- https://sources.debian.net/src/util-linux/2.25.2-6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `xz-utils=5.1.1alpha+20120614-2`

Binary Packages:

- `liblzma5:amd64=5.1.1alpha+20120614-2+b3`
- `xz-utils=5.1.1alpha+20120614-2+b3`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

- `Autoconf`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `PD`
- `PD-debian`
- `config-h`
- `noderivs`
- `none`
- `permissive-fsf`
- `permissive-nowarranty`
- `probably-PD`

Source:

```console
$ apt-get source -qq --print-uris xz-utils=5.1.1alpha+20120614-2
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614-2.dsc' xz-utils_5.1.1alpha+20120614-2.dsc 2325 SHA256:d7d87c6c7aa6d2fe45d8d55a8929ab12f0688f7f17bcfc6233ecfa94f6f7a298
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614.orig.tar.gz' xz-utils_5.1.1alpha+20120614.orig.tar.gz 556454 SHA256:b168e63400db449a6e7b3a06e668f557ca27e3d70accbd29d2b5a98e15c00fee
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614-2.debian.tar.gz' xz-utils_5.1.1alpha+20120614-2.debian.tar.gz 154298 SHA256:4e2873ab7b1ee44b7d580caf2a5ca761b10cb2725691b2c2a9b21edb0d771f39
```

Likely also available for browsing at:

- https://sources.debian.net/src/xz-utils/5.1.1alpha+20120614-2/
- https://sources.debian.net/src/xz-utils/5.1.1alpha+20120614-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `zlib=1:1.2.8.dfsg-2`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-2+b1`
- `zlib1g-dev:amd64=1:1.2.8.dfsg-2+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.8.dfsg-2
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-2.dsc' zlib_1.2.8.dfsg-2.dsc 2458 SHA256:5dddd28d2b15fc0881177d720a3b5bf41a87eee7aaec296e4b20719a9fe18b7e
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz' zlib_1.2.8.dfsg.orig.tar.gz 361943 SHA256:2caecc2c3f1ef8b87b8f72b128a03e61c307e8c14f5ec9b422ef7914ba75cf9f
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-2.debian.tar.xz' zlib_1.2.8.dfsg-2.debian.tar.xz 14768 SHA256:39af7ea4b264c229f856ed342bb316a796cb2f1e1278a059f2dc5a4f3ffc9f31
```

Likely also available for browsing at:

- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-2/
- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-2/debian/copyright (for direct copyright/license information)
