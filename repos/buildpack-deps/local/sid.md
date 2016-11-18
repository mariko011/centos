# `buildpack-deps:sid`

## Docker Metadata

- Image ID: `sha256:a9362a3dd838da9d9f02bed4a9fdeb3e5b37fe8553d0b47055db4b30f672a61c`
- Created: `2016-11-07T22:30:30.175584346Z`
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3`

Binary Packages:

- `libacl1:amd64=2.2.52-3`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-3
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52-3.dsc' acl_2.2.52-3.dsc 2025 SHA256:82e344b9ab176559a85630b74ee5a68d678d7f24b6fe8139f2fd9fcf38a48095
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52-3.debian.tar.xz' acl_2.2.52-3.debian.tar.xz 8740 SHA256:fc3f1178d18288993fc4ce4853b7f9dcdf0bd1fd26e4f69349a4e4e5916d1fa8
```

Likely also available for browsing at:

- https://sources.debian.net/src/acl/2.2.52-3/
- https://sources.debian.net/src/acl/2.2.52-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `adduser=3.115`

Binary Packages:

- `adduser=3.115`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.115
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.115.dsc' adduser_3.115.dsc 1701 SHA256:754698aa19d7521080ecacc8033baa20cfa4a963021de6061c68ffa6ee15e9a1
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.115.tar.xz' adduser_3.115.tar.xz 213620 SHA256:e7288281d4d1eec2948ba3687452ca33a8224d40c98d321bc3fbaefcf6d4c0db
```

Likely also available for browsing at:

- https://sources.debian.net/src/adduser/3.115/
- https://sources.debian.net/src/adduser/3.115/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `apr-util=1.5.4-2`

Binary Packages:

- `libaprutil1:amd64=1.5.4-2`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.5.4-2
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.5.4-2.dsc' apr-util_1.5.4-2.dsc 2599 SHA256:f886be48dc9d66434011975d132ca5a8e14912143de212a6224dd5e57997842e
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.5.4.orig.tar.bz2' apr-util_1.5.4.orig.tar.bz2 694427 SHA256:a6cf327189ca0df2fb9d5633d7326c460fe2b61684745fd7963e79a6dd0dc82e
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.5.4-2.debian.tar.xz' apr-util_1.5.4-2.debian.tar.xz 212192 SHA256:e8f0fdf94482c43dff69a207ecbf98cec602ab45869561800ccf46a09988caff
```

Likely also available for browsing at:

- https://sources.debian.net/src/apr-util/1.5.4-2/
- https://sources.debian.net/src/apr-util/1.5.4-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `apr=1.5.2-4`

Binary Packages:

- `libapr1:amd64=1.5.2-4`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.5.2-4
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.5.2-4.dsc' apr_1.5.2-4.dsc 2079 SHA256:f739a3c8395e11f19e3344937106da3296bdf0b78dd4d45b595c7eafc2df748d
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.5.2.orig.tar.bz2' apr_1.5.2.orig.tar.bz2 826885 SHA256:7d03ed29c22a7152be45b8e50431063736df9e1daa1ddf93f6a547ba7a28f67a
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.5.2-4.debian.tar.xz' apr_1.5.2-4.debian.tar.xz 212724 SHA256:4bd7c3c41941d5b8006e16145c486f59179989035eb6f9efd9b333691e894948
```

Likely also available for browsing at:

- https://sources.debian.net/src/apr/1.5.2-4/
- https://sources.debian.net/src/apr/1.5.2-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `apt=1.3.1`

Binary Packages:

- `apt=1.3.1`
- `libapt-pkg5.0:amd64=1.3.1`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.3.1
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.3.1.dsc' apt_1.3.1.dsc 2496 SHA256:43fe1710f0d1a5e27233779187a25727165119837be9767f11e36e6445835e68
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.3.1.tar.xz' apt_1.3.1.tar.xz 2035460 SHA256:7ae8ebc1e371d10c4bfe1b0009cbdb6d22944963a616ae6407c74d122234fa58
```

Likely also available for browsing at:

- https://sources.debian.net/src/apt/1.3.1/
- https://sources.debian.net/src/apt/1.3.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `atk1.0=2.22.0-1`

Binary Packages:

- `libatk1.0-0:amd64=2.22.0-1`
- `libatk1.0-data=2.22.0-1`

Licenses: (parsed from: `/usr/share/doc/libatk1.0-0/copyright`, `/usr/share/doc/libatk1.0-data/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris atk1.0=2.22.0-1
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.22.0-1.dsc' atk1.0_2.22.0-1.dsc 2725 SHA256:4d316bd64cbe9775c515b56ef233d5d88d2c4aad4376703aba7d5b1cd261cd5f
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.22.0.orig.tar.xz' atk1.0_2.22.0.orig.tar.xz 745572 SHA256:d349f5ca4974c9c76a4963e5b254720523b0c78672cbc0e1a3475dbd9b3d44b6
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.22.0-1.debian.tar.xz' atk1.0_2.22.0-1.debian.tar.xz 10580 SHA256:b72e1dd99b186105ca9a7af36af53d5bf1d4c0e90cd7176a79b8f81a21f73818
```

Likely also available for browsing at:

- https://sources.debian.net/src/atk1.0/2.22.0-1/
- https://sources.debian.net/src/atk1.0/2.22.0-1/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `audit=1:2.6.7-1`

Binary Packages:

- `libaudit-common=1:2.6.7-1`
- `libaudit1:amd64=1:2.6.7-1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.6.7-1
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.6.7-1.dsc' audit_2.6.7-1.dsc 2296 SHA256:1a7aa3f84928888f90132250e729c49079a0218870fadfb4c8227db81074ee5f
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.6.7.orig.tar.gz' audit_2.6.7.orig.tar.gz 1080848 SHA256:8923917332daa7833bbc0c1d9eb012167093fbad000da4a9630fb3356aff8cdc
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.6.7-1.debian.tar.xz' audit_2.6.7-1.debian.tar.xz 18208 SHA256:1a10461619f8c94113618e2f0a9287688f1d6ee46c847be89f572bc2d047982f
```

Likely also available for browsing at:

- https://sources.debian.net/src/audit/1:2.6.7-1/
- https://sources.debian.net/src/audit/1:2.6.7-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `autoconf=2.69-10`

Binary Packages:

- `autoconf=2.69-10`

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
$ apt-get source -qq --print-uris autoconf=2.69-10
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-10.dsc' autoconf_2.69-10.dsc 1948 SHA256:0e8c77d8a268f0a797ea53c7396620fac549272259a50a6fe0c5b5941f1ac95f
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-10.debian.tar.xz' autoconf_2.69-10.debian.tar.xz 23048 SHA256:f294c3ba40fd942b4119175401bf57191f08429916a8b9bf3d04f53567c96d35
```

Likely also available for browsing at:

- https://sources.debian.net/src/autoconf/2.69-10/
- https://sources.debian.net/src/autoconf/2.69-10/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `automake-1.15=1:1.15-5`

Binary Packages:

- `automake=1:1.15-5`

Licenses: (parsed from: `/usr/share/doc/automake/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris automake-1.15=1:1.15-5
'http://deb.debian.org/debian/pool/main/a/automake-1.15/automake-1.15_1.15-5.dsc' automake-1.15_1.15-5.dsc 2232 SHA256:82af7bc3721c6eddf38b9e822e0bc3a4e4484579004b4b35e67749fc021dcb63
'http://deb.debian.org/debian/pool/main/a/automake-1.15/automake-1.15_1.15.orig.tar.xz' automake-1.15_1.15.orig.tar.xz 1496708 SHA256:9908c75aabd49d13661d6dcb1bc382252d22cc77bf733a2d55e87f2aa2db8636
'http://deb.debian.org/debian/pool/main/a/automake-1.15/automake-1.15_1.15-5.debian.tar.xz' automake-1.15_1.15-5.debian.tar.xz 12924 SHA256:c9095f84e486aaf70ea19baddae58eaad39f54a52b9528d20cc4f35cb2de19c5
```

Likely also available for browsing at:

- https://sources.debian.net/src/automake-1.15/1:1.15-5/
- https://sources.debian.net/src/automake-1.15/1:1.15-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `autotools-dev=20160430.1`

Binary Packages:

- `autotools-dev=20160430.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `avahi=0.6.32-1`

Binary Packages:

- `libavahi-client3:amd64=0.6.32-1`
- `libavahi-common-data:amd64=0.6.32-1`
- `libavahi-common3:amd64=0.6.32-1`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.6.32-1
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.6.32-1.dsc' avahi_0.6.32-1.dsc 4249 SHA256:b949a97021c2df3285ec0bc596d091e9e2660d91cca7ea3c2d1addb35f8f3663
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.6.32.orig.tar.gz' avahi_0.6.32.orig.tar.gz 1297169 SHA256:d54991185d514a0aba54ebeb408d7575b60f5818a772e28fa0e18b98bc1db454
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.6.32-1.debian.tar.xz' avahi_0.6.32-1.debian.tar.xz 29604 SHA256:d21739d27bfe7a032572088cd5853b77270261c1cf604094fc381ffcb3601184
```

Likely also available for browsing at:

- https://sources.debian.net/src/avahi/0.6.32-1/
- https://sources.debian.net/src/avahi/0.6.32-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `base-files=9.6`

Binary Packages:

- `base-files=9.6`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=9.6
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_9.6.dsc' base-files_9.6.dsc 1052 SHA256:f402149afa784750c093d09bb10aa9a9a00d32aaee52eda62f056211a304ebed
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_9.6.tar.xz' base-files_9.6.tar.xz 53728 SHA256:5cb5339aa852af14653ac187f8baf55f5ad6fc8ee2d903e5a336f0ee556dcf44
```

Likely also available for browsing at:

- https://sources.debian.net/src/base-files/9.6/
- https://sources.debian.net/src/base-files/9.6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `base-passwd=3.5.40`

Binary Packages:

- `base-passwd=3.5.40`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `bash=4.4-1`

Binary Packages:

- `bash=4.4-1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `binutils=2.27.51.20161105-2`

Binary Packages:

- `binutils=2.27.51.20161105-2`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.27.51.20161105-2
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.27.51.20161105-2.dsc' binutils_2.27.51.20161105-2.dsc 5029 SHA256:395bb8461667ce96557ea9b653ab1a916399c41c3000a7d3152f84b72288a49d
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.27.51.20161105.orig.tar.gz' binutils_2.27.51.20161105.orig.tar.gz 32934961 SHA256:9d566597076f4629fde53f39c555a59809eafea2884ddfef49fc8144b1b062fd
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.27.51.20161105-2.diff.gz' binutils_2.27.51.20161105-2.diff.gz 89419 SHA256:6470cd09720f5bab224fce57a0f03ee221d2f1a91a54ad77ef463c196cc5f78a
```

Likely also available for browsing at:

- https://sources.debian.net/src/binutils/2.27.51.20161105-2/
- https://sources.debian.net/src/binutils/2.27.51.20161105-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `bzip2=1.0.6-8`

Binary Packages:

- `bzip2=1.0.6-8`
- `libbz2-1.0:amd64=1.0.6-8`
- `libbz2-dev:amd64=1.0.6-8`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-8.dsc' bzip2_1.0.6-8.dsc 2042 SHA256:46df0e8112487065532829f2340ffd6ca64d46b6ab01b0000694751d3e67fb11
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-8.debian.tar.bz2' bzip2_1.0.6-8.debian.tar.bz2 59494 SHA256:60fe87fd3942c385e5921786255a27daf9a962ebc7301a60dfd8d1e1a5c8ce78
```

Likely also available for browsing at:

- https://sources.debian.net/src/bzip2/1.0.6-8/
- https://sources.debian.net/src/bzip2/1.0.6-8/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `bzr=2.7.0+bzr6619-2`

Binary Packages:

- `bzr=2.7.0+bzr6619-2`
- `python-bzrlib=2.7.0+bzr6619-2`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0+bzr6619-2
'http://deb.debian.org/debian/pool/main/b/bzr/bzr_2.7.0+bzr6619-2.dsc' bzr_2.7.0+bzr6619-2.dsc 2811 SHA256:ae5603f5568ce8c67c75ae65042fcdd2eb132d31f2baef6fad258ad05e6e57f0
'http://deb.debian.org/debian/pool/main/b/bzr/bzr_2.7.0+bzr6619.orig.tar.gz' bzr_2.7.0+bzr6619.orig.tar.gz 10945598 SHA256:a0192999245457fbd564702518bc96453ac0f9b38ea031a466679839b346fa14
'http://deb.debian.org/debian/pool/main/b/bzr/bzr_2.7.0+bzr6619-2.debian.tar.xz' bzr_2.7.0+bzr6619-2.debian.tar.xz 66348 SHA256:919aad3d0f040bcfc0c36d635a811510514df193f46ed26c920900aceee80ccb
```

Likely also available for browsing at:

- https://sources.debian.net/src/bzr/2.7.0+bzr6619-2/
- https://sources.debian.net/src/bzr/2.7.0+bzr6619-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `ca-certificates=20161102`

Binary Packages:

- `ca-certificates=20161102`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20161102
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20161102.dsc' ca-certificates_20161102.dsc 1412 SHA256:b50d77748b48207876d7dff9ebd6dddeaa334318a8a6e53ce90cc963fa95c457
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20161102.tar.xz' ca-certificates_20161102.tar.xz 298544 SHA256:25384a67e2f1e76495ceeb00abfdbe831033780324128cb1587d09132dd173a5
```

Likely also available for browsing at:

- https://sources.debian.net/src/ca-certificates/20161102/
- https://sources.debian.net/src/ca-certificates/20161102/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cairo=1.14.6-1.1`

Binary Packages:

- `libcairo-gobject2:amd64=1.14.6-1.1`
- `libcairo-script-interpreter2:amd64=1.14.6-1.1`
- `libcairo2:amd64=1.14.6-1.1`
- `libcairo2-dev=1.14.6-1.1`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.14.6-1.1
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.14.6-1.1.dsc' cairo_1.14.6-1.1.dsc 3061 SHA256:644bf639e93ad4a4c3586149565c70f840767aa16e51be8ba8722f85e157a16a
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.14.6.orig.tar.xz' cairo_1.14.6.orig.tar.xz 36040596 SHA256:613cb38447b76a93ff7235e17acd55a78b52ea84a9df128c3f2257f8eaa7b252
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.14.6-1.1.debian.tar.xz' cairo_1.14.6-1.1.debian.tar.xz 28860 SHA256:ed4a884c2a0929dd57aa19a3961463c217221cc0370bc6b5a36a4fc9d7b81731
```

Likely also available for browsing at:

- https://sources.debian.net/src/cairo/1.14.6-1.1/
- https://sources.debian.net/src/cairo/1.14.6-1.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cdebconf=0.218`

Binary Packages:

- `libdebconfclient0:amd64=0.218`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.218
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.218.dsc' cdebconf_0.218.dsc 2662 SHA256:1c456a2cd020e9959f847ce3ed068aa7e690edf810c9457471b635623aa3fca5
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.218.tar.xz' cdebconf_0.218.tar.xz 272528 SHA256:ac6e88e1dd0715705890393f376ce6fceecf67734f28fb818b3f423d6be27285
```

Likely also available for browsing at:

- https://sources.debian.net/src/cdebconf/0.218/
- https://sources.debian.net/src/cdebconf/0.218/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `configobj=5.0.6-2`

Binary Packages:

- `python-configobj=5.0.6-2`

Licenses: (parsed from: `/usr/share/doc/python-configobj/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris configobj=5.0.6-2
'http://deb.debian.org/debian/pool/main/c/configobj/configobj_5.0.6-2.dsc' configobj_5.0.6-2.dsc 2381 SHA256:9bb8577128460ff33326d3d90b8454376c83f4d41b1da61aeabdbfcbfb5e0087
'http://deb.debian.org/debian/pool/main/c/configobj/configobj_5.0.6.orig.tar.gz' configobj_5.0.6.orig.tar.gz 143664 SHA256:2e140354efcca6f558ff9ee941b435ae09a617bc071797bef62c8d6ed2033d5e
'http://deb.debian.org/debian/pool/main/c/configobj/configobj_5.0.6-2.debian.tar.xz' configobj_5.0.6-2.debian.tar.xz 7436 SHA256:dc677cd329b4a3aacebe10c5a169d9d092cc27888c3f3f9203930cacd6a0eab8
```

Likely also available for browsing at:

- https://sources.debian.net/src/configobj/5.0.6-2/
- https://sources.debian.net/src/configobj/5.0.6-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `coreutils=8.25-2`

Binary Packages:

- `coreutils=8.25-2`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.25-2
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.25-2.dsc' coreutils_8.25-2.dsc 1925 SHA256:9909b8ad5d532cb3875d811711feaca819308fbbe5f1dc0542c64f6db6793c2d
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.25.orig.tar.xz' coreutils_8.25.orig.tar.xz 5725008 SHA256:31e67c057a5b32a582f26408c789e11c2e8d676593324849dcf5779296cdce87
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.25-2.debian.tar.xz' coreutils_8.25-2.debian.tar.xz 21776 SHA256:68aca1234eb219bf23099065cb0b1e2566b3ad7e80fdd977fe8bfe03b8fb0629
```

Likely also available for browsing at:

- https://sources.debian.net/src/coreutils/8.25-2/
- https://sources.debian.net/src/coreutils/8.25-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cups=2.2.1-2`

Binary Packages:

- `libcups2:amd64=2.2.1-2`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2.0 with AOSDL exception`
- `LGPL-2`
- `LGPL-2.0 with AOSDL exception`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.2.1-2
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.1-2.dsc' cups_2.2.1-2.dsc 3367 SHA256:f291c2860688abfd3febcdb810d0aa46a049a416177a2f51dde6cddf8ba15af3
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.1.orig.tar.gz' cups_2.2.1.orig.tar.gz 9486635 SHA256:83b8730aa977cc055e7410df6a3a682548994c113994ca630a16513017e419d5
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.1.orig.tar.gz.asc' cups_2.2.1.orig.tar.gz.asc 797 SHA256:37c2e6215b2794c33864e543bc0caf6aefa724844e41b4c9659c87f28d125c2a
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.1-2.debian.tar.xz' cups_2.2.1-2.debian.tar.xz 361124 SHA256:74cc461c9cbc1232ce6c615b1bd14addf42ea93491caca4a2f1d490ed72b42b2
```

Likely also available for browsing at:

- https://sources.debian.net/src/cups/2.2.1-2/
- https://sources.debian.net/src/cups/2.2.1-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `curl=7.51.0-1`

Binary Packages:

- `curl=7.51.0-1`
- `libcurl3:amd64=7.51.0-1`
- `libcurl3-gnutls:amd64=7.51.0-1`
- `libcurl4-openssl-dev:amd64=7.51.0-1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.51.0-1
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.51.0-1.dsc' curl_7.51.0-1.dsc 2681 SHA256:e139d0221798b98174533e4219c7841bd1880a85ce776fb44d9d67d3e9c77808
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.51.0.orig.tar.gz' curl_7.51.0.orig.tar.gz 3441753 SHA256:65b5216a6fbfa72f547eb7706ca5902d7400db9868269017a8888aa91d87977c
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.51.0-1.debian.tar.xz' curl_7.51.0-1.debian.tar.xz 27016 SHA256:be7ec42a13fc8167a5dd8bd092324594f05632b8eb7faef94128281310cc7e6f
```

Likely also available for browsing at:

- https://sources.debian.net/src/curl/7.51.0-1/
- https://sources.debian.net/src/curl/7.51.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cyrus-sasl2=2.1.27~72-g88d82a3+dfsg-1`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~72-g88d82a3+dfsg-1`
- `libsasl2-modules-db:amd64=2.1.27~72-g88d82a3+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27~72-g88d82a3+dfsg-1
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~72-g88d82a3+dfsg-1.dsc' cyrus-sasl2_2.1.27~72-g88d82a3+dfsg-1.dsc 3264 SHA256:9294e641367563534348e136100305a3eeefe74f597bd27cb5252c62059a81bf
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~72-g88d82a3+dfsg.orig.tar.xz' cyrus-sasl2_2.1.27~72-g88d82a3+dfsg.orig.tar.xz 687336 SHA256:ca36be5b3d4540ba902ee75f46c6a796fa4fc10590c75a4abaf65593a09e7bf0
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~72-g88d82a3+dfsg-1.debian.tar.xz' cyrus-sasl2_2.1.27~72-g88d82a3+dfsg-1.debian.tar.xz 94076 SHA256:a17ba54371a0838ca38e38afa367ed077024b9191471fdb6841d9f1d14f82086
```

Likely also available for browsing at:

- https://sources.debian.net/src/cyrus-sasl2/2.1.27~72-g88d82a3+dfsg-1/
- https://sources.debian.net/src/cyrus-sasl2/2.1.27~72-g88d82a3+dfsg-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `dash=0.5.8-2.3`

Binary Packages:

- `dash=0.5.8-2.3`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.3
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8-2.3.dsc' dash_0.5.8-2.3.dsc 1764 SHA256:cd1fdf9e0b5d05f152ff12400ab191b0d3662cbb0a70a759b28e20a317af1ab2
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8-2.3.diff.gz' dash_0.5.8-2.3.diff.gz 42170 SHA256:fc7e390aec750c270ffc15a77ba861da3c931f323b2463130e1114ff47c6732b
```

Likely also available for browsing at:

- https://sources.debian.net/src/dash/0.5.8-2.3/
- https://sources.debian.net/src/dash/0.5.8-2.3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `db-defaults=5.3.1`

Binary Packages:

- `libdb-dev:amd64=5.3.1`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=5.3.1
'http://deb.debian.org/debian/pool/main/d/db-defaults/db-defaults_5.3.1.dsc' db-defaults_5.3.1.dsc 2049 SHA256:4097a2745b51c6a380b917dfa5f10f468dc2ed76c9d93ce4b5bf1bf081e42d33
'http://deb.debian.org/debian/pool/main/d/db-defaults/db-defaults_5.3.1.tar.xz' db-defaults_5.3.1.tar.xz 2788 SHA256:c35e2a597b3539b3b8e12f0dd5ee72af18a88b680a5bfb29871813ce4b793d30
```

Likely also available for browsing at:

- https://sources.debian.net/src/db-defaults/5.3.1/
- https://sources.debian.net/src/db-defaults/5.3.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `db5.3=5.3.28-12`

Binary Packages:

- `libdb5.3:amd64=5.3.28-12`
- `libdb5.3-dev=5.3.28-12`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-12
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-12.dsc' db5.3_5.3.28-12.dsc 3199 SHA256:1c4d6149f83a798e69f6d8e7444711d963c31d649284357135ea33b319c71bba
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-12.debian.tar.xz' db5.3_5.3.28-12.debian.tar.xz 27812 SHA256:7907d8ad4c408857a71782436283a7ab67d7fe0f38ae15782f08077bdfd55c03
```

Likely also available for browsing at:

- https://sources.debian.net/src/db5.3/5.3.28-12/
- https://sources.debian.net/src/db5.3/5.3.28-12/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `dbus=1.10.12-1`

Binary Packages:

- `libdbus-1-3:amd64=1.10.12-1`

Licenses: (parsed from: `/usr/share/doc/libdbus-1-3/copyright`)

- `AFL-2.1`
- `AFL-2.1,`
- `BSD-3-clause`
- `BSD-3-clause-generic`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `Tcl-BSDish`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris dbus=1.10.12-1
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.10.12-1.dsc' dbus_1.10.12-1.dsc 3041 SHA256:e3e37c98373372ac5a07d7fad66a42c61d35a4cb35fc8efb165d1d7eafa361fd
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.10.12.orig.tar.gz' dbus_1.10.12.orig.tar.gz 1984805 SHA256:210a79430b276eafc6406c71705e9140d25b9956d18068df98a70156dc0e475d
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.10.12-1.debian.tar.xz' dbus_1.10.12-1.debian.tar.xz 56428 SHA256:c8973f95fb6a4c6449a3751473ac4f30abe6d18f067f15d82488bd46a8a8c23a
```

Likely also available for browsing at:

- https://sources.debian.net/src/dbus/1.10.12-1/
- https://sources.debian.net/src/dbus/1.10.12-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `debconf=1.5.59`

Binary Packages:

- `debconf=1.5.59`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.59
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.59.dsc' debconf_1.5.59.dsc 1974 SHA256:a9422ca70d13db361a4ed07af217f4e88461dcec9cf56429271f9af34d3238e0
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.59.tar.xz' debconf_1.5.59.tar.xz 571724 SHA256:2cc9fe6de93bc609164befe454fcc50f82430e01a6182541b39bf05c1be2f196
```

Likely also available for browsing at:

- https://sources.debian.net/src/debconf/1.5.59/
- https://sources.debian.net/src/debconf/1.5.59/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `debianutils=4.8`

Binary Packages:

- `debianutils=4.8`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `dh-python=2.20160818`

Binary Packages:

- `dh-python=2.20160818`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=2.20160818
'http://deb.debian.org/debian/pool/main/d/dh-python/dh-python_2.20160818.dsc' dh-python_2.20160818.dsc 1876 SHA256:6871cd06bd30a3be4e64b01c74a77dfee870dcbf0aa314a1fad85125ff37ed3d
'http://deb.debian.org/debian/pool/main/d/dh-python/dh-python_2.20160818.tar.xz' dh-python_2.20160818.tar.xz 84928 SHA256:9491b21ee97f1b57bcd84ee40c557ab38f3fed50641cb7d25545632cad5b09c7
```

Likely also available for browsing at:

- https://sources.debian.net/src/dh-python/2.20160818/
- https://sources.debian.net/src/dh-python/2.20160818/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `diffutils=1:3.5-1`

Binary Packages:

- `diffutils=1:3.5-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.5-1
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.5-1.dsc' diffutils_3.5-1.dsc 1438 SHA256:a7ae6d0ac3bd114211e0526784e99866072a08ee89b3984786d22b0f03cf83c4
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.5.orig.tar.xz' diffutils_3.5.orig.tar.xz 1360996 SHA256:dad398ccd5b9faca6b0ab219a036453f62a602a56203ac659b43e889bec35533
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.5-1.debian.tar.xz' diffutils_3.5-1.debian.tar.xz 10436 SHA256:fd5115182ba8880ed8dcb5c62af9ef5f8b5410c2f35b026298cc405bac5b73e0
```

Likely also available for browsing at:

- https://sources.debian.net/src/diffutils/1:3.5-1/
- https://sources.debian.net/src/diffutils/1:3.5-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `djvulibre=3.5.27.1-7`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.27.1-7`
- `libdjvulibre-text=3.5.27.1-7`
- `libdjvulibre21:amd64=3.5.27.1-7`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.27.1-7
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.27.1-7.dsc' djvulibre_3.5.27.1-7.dsc 2457 SHA256:986b49acc545cb0ed23d28131fc3b500c7e20b59c7b5f1e72b6829162426743f
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.27.1.orig.tar.gz' djvulibre_3.5.27.1.orig.tar.gz 3231662 SHA256:77f07de3f1039aa19eba2eb3170d9ce9a0918ba7b704a59cfaf08f42fcc52144
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.27.1-7.debian.tar.xz' djvulibre_3.5.27.1-7.debian.tar.xz 54688 SHA256:a62829e71b4c8a4d2902c9cf9ca12816ad7d9541596b6042940791c42b551b9c
```

Likely also available for browsing at:

- https://sources.debian.net/src/djvulibre/3.5.27.1-7/
- https://sources.debian.net/src/djvulibre/3.5.27.1-7/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `dpkg=1.18.13`

Binary Packages:

- `dpkg=1.18.13`
- `libdpkg-perl=1.18.13`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `e2fsprogs=1.43.3-1`

Binary Packages:

- `comerr-dev=2.1-1.43.3-1`
- `e2fslibs:amd64=1.43.3-1`
- `e2fsprogs=1.43.3-1`
- `libcomerr2:amd64=1.43.3-1`
- `libss2:amd64=1.43.3-1`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.43.3-1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.3-1.dsc' e2fsprogs_1.43.3-1.dsc 2028 SHA256:d15bc76f9790bad181770238e71242c1987e779941acccedf4beaefa22adb84b
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.3.orig.tar.gz' e2fsprogs_1.43.3.orig.tar.gz 7405892 SHA256:ce8ef1bbb0d4730f170167284fda156ac9d6bf18db2750eb94af619a81b19927
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.3-1.debian.tar.xz' e2fsprogs_1.43.3-1.debian.tar.xz 75724 SHA256:4b8d31ae65c7fa29d9b9a2cec022d272cec1d00e3c789849094467b6c408dbb5
```

Likely also available for browsing at:

- https://sources.debian.net/src/e2fsprogs/1.43.3-1/
- https://sources.debian.net/src/e2fsprogs/1.43.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `elfutils=0.166-2.2`

Binary Packages:

- `libelf1:amd64=0.166-2.2`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.166-2.2
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.166-2.2.dsc' elfutils_0.166-2.2.dsc 2516 SHA256:27c83c2cad0f4fc130195add32a26ef4f2162e133ae797e0017d5a0d1598582a
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.166.orig.tar.bz2' elfutils_0.166.orig.tar.bz2 6496225 SHA256:3c056914c8a438b210be0d790463b960fc79d234c3f05ce707cbff80e94cba30
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.166.orig.tar.bz2.asc' elfutils_0.166.orig.tar.bz2.asc 479 SHA256:81a30e6ed226960d76d7bdbf5b1a65751ce48cf39a209fa5b820932b64e9d18b
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.166-2.2.debian.tar.xz' elfutils_0.166-2.2.debian.tar.xz 40804 SHA256:46898297b94ef02dad180938bc8bca1070a0f0ba1529d92f03bbd0bab55a9286
```

Likely also available for browsing at:

- https://sources.debian.net/src/elfutils/0.166-2.2/
- https://sources.debian.net/src/elfutils/0.166-2.2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `expat=2.2.0-1`

Binary Packages:

- `libexpat1:amd64=2.2.0-1`
- `libexpat1-dev:amd64=2.2.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.2.0-1
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.0-1.dsc' expat_2.2.0-1.dsc 2253 SHA256:33c14d4daa7cda71d74a2d3deb277aa2b59db54d837625e903d713a4c4be22ac
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.0.orig.tar.bz2' expat_2.2.0.orig.tar.bz2 414352 SHA256:d9e50ff2d19b3538bd2127902a89987474e1a4db8e43a66a4d1a712ab9a504ff
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.0-1.debian.tar.xz' expat_2.2.0-1.debian.tar.xz 10112 SHA256:731b50295657b2e10a80a6bda71d10b0e7c15baa23e3adf3f21c978507730848
```

Likely also available for browsing at:

- https://sources.debian.net/src/expat/2.2.0-1/
- https://sources.debian.net/src/expat/2.2.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `explorercanvas=0.r3-4`

Binary Packages:

- `libjs-excanvas=0.r3-4`

Licenses: (parsed from: `/usr/share/doc/libjs-excanvas/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris explorercanvas=0.r3-4
'http://deb.debian.org/debian/pool/main/e/explorercanvas/explorercanvas_0.r3-4.dsc' explorercanvas_0.r3-4.dsc 2000 SHA256:d168011ed1f110f82b5039a6b070167f1f262d2a35d7fa25a6b5462f73761637
'http://deb.debian.org/debian/pool/main/e/explorercanvas/explorercanvas_0.r3.orig.tar.gz' explorercanvas_0.r3.orig.tar.gz 50748 SHA256:687af8084781b8eb3451fc55c88f6dfddc2b84428d197daf2c4c33fd5c55fed8
'http://deb.debian.org/debian/pool/main/e/explorercanvas/explorercanvas_0.r3-4.debian.tar.xz' explorercanvas_0.r3-4.debian.tar.xz 2040 SHA256:afcaa3e229d9b423988fc30439aeee1599c9dac8ad94430309404f9cf9f0c11f
```

Likely also available for browsing at:

- https://sources.debian.net/src/explorercanvas/0.r3-4/
- https://sources.debian.net/src/explorercanvas/0.r3-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `fftw3=3.3.5-1`

Binary Packages:

- `libfftw3-double3:amd64=3.3.5-1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.5-1
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.5-1.dsc' fftw3_3.3.5-1.dsc 2898 SHA256:c4fa07f5c4b630046ef41292d4a9fc84f022a0066a684a69f73e4b3e03e35c03
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.5.orig.tar.gz' fftw3_3.3.5.orig.tar.gz 4148447 SHA256:8ecfe1b04732ec3f5b7d279fdb8efcad536d555f9d1e8fabd027037d45ea8bcf
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.5-1.debian.tar.xz' fftw3_3.3.5-1.debian.tar.xz 12648 SHA256:ba294ccdc29241a54e2237932f07754bd12be43cfb74379b2679cd87d26275fa
```

Likely also available for browsing at:

- https://sources.debian.net/src/fftw3/3.3.5-1/
- https://sources.debian.net/src/fftw3/3.3.5-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `file=1:5.29-1`

Binary Packages:

- `file=1:5.29-1`
- `libmagic-mgc=1:5.29-1`
- `libmagic1:amd64=1:5.29-1`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.29-1
'http://deb.debian.org/debian/pool/main/f/file/file_5.29-1.dsc' file_5.29-1.dsc 2124 SHA256:a55d239a57c34b9504825f646210429db992868af2ecefe2b6869a258848ac89
'http://deb.debian.org/debian/pool/main/f/file/file_5.29.orig.tar.xz' file_5.29.orig.tar.xz 574196 SHA256:4ab1cd8d4fe9017f8dfcfd6ba81f495a722b75e22bd1a59e6bfd15ac211a2820
'http://deb.debian.org/debian/pool/main/f/file/file_5.29-1.debian.tar.xz' file_5.29-1.debian.tar.xz 29272 SHA256:1e8c40ff5ec139e58cffbfaac0c4a9dd70b45909b364ecd03cc5e58ba4fac3f4
```

Likely also available for browsing at:

- https://sources.debian.net/src/file/1:5.29-1/
- https://sources.debian.net/src/file/1:5.29-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `findutils=4.6.0+git+20160703-2`

Binary Packages:

- `findutils=4.6.0+git+20160703-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `fontconfig=2.11.0-6.7`

Binary Packages:

- `fontconfig=2.11.0-6.7`
- `fontconfig-config=2.11.0-6.7`
- `libfontconfig1:amd64=2.11.0-6.7`
- `libfontconfig1-dev:amd64=2.11.0-6.7`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.11.0-6.7
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.11.0-6.7.dsc' fontconfig_2.11.0-6.7.dsc 1851 SHA256:3e60036d03fb610d5ed398b7be0cfe0f9dea0ce9b25cb612acec6df11963a101
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.11.0.orig.tar.xz' fontconfig_2.11.0.orig.tar.xz 319652 SHA256:f19c7366d59dc4e79eaf3eedabd44b6375b238f29316db5020a183c7d9a78db9
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.11.0-6.7.debian.tar.xz' fontconfig_2.11.0-6.7.debian.tar.xz 1074508 SHA256:170c1e1a6221e0d3209b2a36507128aa3454135ca3dcd1eb2b06556e46c0c30e
```

Likely also available for browsing at:

- https://sources.debian.net/src/fontconfig/2.11.0-6.7/
- https://sources.debian.net/src/fontconfig/2.11.0-6.7/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `fonts-dejavu=2.37-1`

Binary Packages:

- `fonts-dejavu-core=2.37-1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.37-1
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.dsc' fonts-dejavu_2.37-1.dsc 2575 SHA256:f35ff7b2c8dbfda6564c9dedf088ba06cc6d279fdd8e7cccbd1ae08ded1bb71c
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA256:4b21c5203f792343d5e90ab1cb0cf07e99887218abe3d83cd9a98cea9085e799
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.debian.tar.xz' fonts-dejavu_2.37-1.debian.tar.xz 10424 SHA256:5105cdbfc086f4a83ab6871eb39cc904bf02aa52762402b7cacf33d0938122f7
```

Likely also available for browsing at:

- https://sources.debian.net/src/fonts-dejavu/2.37-1/
- https://sources.debian.net/src/fonts-dejavu/2.37-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `freetype=2.6.3-3`

Binary Packages:

- `libfreetype6:amd64=2.6.3-3+b1`
- `libfreetype6-dev=2.6.3-3+b1`

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
$ apt-get source -qq --print-uris freetype=2.6.3-3
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.6.3-3.dsc' freetype_2.6.3-3.dsc 2115 SHA256:c457c3356c3fe7ee5d4d8cc686adc14eaf5fb3a7dc24af6eb25714cb08289d2b
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.6.3.orig.tar.gz' freetype_2.6.3.orig.tar.gz 7313547 SHA256:814a22aad85e8ca2cb4acfc2e9dc59caa6eded4f6619590f7bd0a721e4b076a3
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.6.3-3.diff.gz' freetype_2.6.3-3.diff.gz 38346 SHA256:305bd497040f9ed5253ff862d73ba8a3b17e3b89ce26c3c11a3ac79b810f83f6
```

Likely also available for browsing at:

- https://sources.debian.net/src/freetype/2.6.3-3/
- https://sources.debian.net/src/freetype/2.6.3-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gcc-5=5.4.1-3`

Binary Packages:

- `gcc-5-base:amd64=5.4.1-3`

Licenses: (parsed from: `/usr/share/doc/gcc-5-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-5=5.4.1-3
'http://deb.debian.org/debian/pool/main/g/gcc-5/gcc-5_5.4.1-3.dsc' gcc-5_5.4.1-3.dsc 17536 SHA256:5ec2ef33e7ad61bf080fe9734a90705129a3fdb88bed02e1e140db2b5e57f4e3
'http://deb.debian.org/debian/pool/main/g/gcc-5/gcc-5_5.4.1.orig.tar.gz' gcc-5_5.4.1.orig.tar.gz 76812822 SHA256:2a84447f34cd062066d38300ac8a1fb528eb301a504b48e1d017e547e5abfcdb
'http://deb.debian.org/debian/pool/main/g/gcc-5/gcc-5_5.4.1-3.diff.gz' gcc-5_5.4.1-3.diff.gz 3247939 SHA256:5990b47027ac059e1dd840a5b2c5071c844eb55e2a1e7fde4c8fcef5cbc294b6
```

Likely also available for browsing at:

- https://sources.debian.net/src/gcc-5/5.4.1-3/
- https://sources.debian.net/src/gcc-5/5.4.1-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gcc-6=6.2.0-11`

Binary Packages:

- `cpp-6=6.2.0-11`
- `g++-6=6.2.0-11`
- `gcc-6=6.2.0-11`
- `gcc-6-base:amd64=6.2.0-11`
- `libasan3:amd64=6.2.0-11`
- `libatomic1:amd64=6.2.0-11`
- `libcc1-0:amd64=6.2.0-11`
- `libcilkrts5:amd64=6.2.0-11`
- `libgcc-6-dev:amd64=6.2.0-11`
- `libgcc1:amd64=1:6.2.0-11`
- `libgomp1:amd64=6.2.0-11`
- `libitm1:amd64=6.2.0-11`
- `liblsan0:amd64=6.2.0-11`
- `libmpx2:amd64=6.2.0-11`
- `libquadmath0:amd64=6.2.0-11`
- `libstdc++-6-dev:amd64=6.2.0-11`
- `libstdc++6:amd64=6.2.0-11`
- `libtsan0:amd64=6.2.0-11`
- `libubsan0:amd64=6.2.0-11`

Licenses: (parsed from: `/usr/share/doc/cpp-6/copyright`, `/usr/share/doc/g++-6/copyright`, `/usr/share/doc/gcc-6/copyright`, `/usr/share/doc/gcc-6-base/copyright`, `/usr/share/doc/libasan3/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-6-dev/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-6-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-6=6.2.0-11
'http://deb.debian.org/debian/pool/main/g/gcc-6/gcc-6_6.2.0-11.dsc' gcc-6_6.2.0-11.dsc 26160 SHA256:74f7e9cbda3e9d4015a03d836f23eb766d46a70a9c7d246a0bb7ec35a7cb2112
'http://deb.debian.org/debian/pool/main/g/gcc-6/gcc-6_6.2.0.orig.tar.gz' gcc-6_6.2.0.orig.tar.gz 82473068 SHA256:5c92f14fd520a90dceec8c76bbe400ab572bfb4095e332b73013d3cc59d0fda1
'http://deb.debian.org/debian/pool/main/g/gcc-6/gcc-6_6.2.0-11.diff.gz' gcc-6_6.2.0-11.diff.gz 4638039 SHA256:a08295b4e3d188253f00af5bf159ee2b69aa0cf7f26030c01e6e1bb2ae737c8c
```

Likely also available for browsing at:

- https://sources.debian.net/src/gcc-6/6.2.0-11/
- https://sources.debian.net/src/gcc-6/6.2.0-11/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gcc-defaults=1.163`

Binary Packages:

- `cpp=4:6.1.1-1`
- `g++=4:6.1.1-1`
- `gcc=4:6.1.1-1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.163
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.163.dsc' gcc-defaults_1.163.dsc 13067 SHA256:5d07cb8d59e7c34cd65436aa40723442c32973d7a046a0f69b14f446c90ee23f
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.163.tar.gz' gcc-defaults_1.163.tar.gz 74211 SHA256:31edfad1963e97da22362f505c474185bb1601a6bad7e71674e0714b4ab99341
```

Likely also available for browsing at:

- https://sources.debian.net/src/gcc-defaults/1.163/
- https://sources.debian.net/src/gcc-defaults/1.163/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gdbm=1.8.3-14`

Binary Packages:

- `libgdbm-dev:amd64=1.8.3-14`
- `libgdbm3:amd64=1.8.3-14`

Licenses: (parsed from: `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-14
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-14.dsc' gdbm_1.8.3-14.dsc 1841 SHA256:312d3d28e287d287ee66e8ae3f25769676b1680ec1adc8c0815b5e9808405b13
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-14.debian.tar.xz' gdbm_1.8.3-14.debian.tar.xz 15308 SHA256:1c0570dd53947ea5980111f51b67356d647c4f21c502443b02397041dde0bf31
```

Likely also available for browsing at:

- https://sources.debian.net/src/gdbm/1.8.3-14/
- https://sources.debian.net/src/gdbm/1.8.3-14/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gdk-pixbuf=2.36.0-1`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.36.0-1`
- `libgdk-pixbuf2.0-0:amd64=2.36.0-1`
- `libgdk-pixbuf2.0-common=2.36.0-1`
- `libgdk-pixbuf2.0-dev=2.36.0-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-dev/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.36.0-1
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.0-1.dsc' gdk-pixbuf_2.36.0-1.dsc 2771 SHA256:97bb20dc167f3b1d87e686c074a5600c3022863c935857ef47dd7ac235a4b964
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.0.orig.tar.xz' gdk-pixbuf_2.36.0.orig.tar.xz 2718648 SHA256:85ab52ce9f2c26327141b3dcf21cca3da6a3f8de84b95fa1e727d8871a23245c
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.0-1.debian.tar.xz' gdk-pixbuf_2.36.0-1.debian.tar.xz 13268 SHA256:b369dc9e687fa0ef0fdd2f70eae97965c0b1a1d79cd3e42d13d6e2cd637c6512
```

Likely also available for browsing at:

- https://sources.debian.net/src/gdk-pixbuf/2.36.0-1/
- https://sources.debian.net/src/gdk-pixbuf/2.36.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `geoip=1.6.9-4`

Binary Packages:

- `geoip-bin=1.6.9-4`
- `libgeoip-dev=1.6.9-4`
- `libgeoip1:amd64=1.6.9-4`

Licenses: (parsed from: `/usr/share/doc/geoip-bin/copyright`, `/usr/share/doc/libgeoip-dev/copyright`, `/usr/share/doc/libgeoip1/copyright`)

- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris geoip=1.6.9-4
'http://deb.debian.org/debian/pool/main/g/geoip/geoip_1.6.9-4.dsc' geoip_1.6.9-4.dsc 1885 SHA256:79893cc7759efe042ab20af420d784422cea6f38d1123d8cff69b2a6d0192a02
'http://deb.debian.org/debian/pool/main/g/geoip/geoip_1.6.9.orig.tar.gz' geoip_1.6.9.orig.tar.gz 158576 SHA256:05468adbb6bdbddc588ee6f0df990f47b1b24d278519c35d59f7a8058a2a9825
'http://deb.debian.org/debian/pool/main/g/geoip/geoip_1.6.9-4.debian.tar.xz' geoip_1.6.9-4.debian.tar.xz 22256 SHA256:6bd311181cd7ad44ea78c9bce4d93e67f6f6aca07de93c1aeefcf44ed928d015
```

Likely also available for browsing at:

- https://sources.debian.net/src/geoip/1.6.9-4/
- https://sources.debian.net/src/geoip/1.6.9-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `git=1:2.10.2-2`

Binary Packages:

- `git=1:2.10.2-2`
- `git-man=1:2.10.2-2`

Licenses: (parsed from: `/usr/share/doc/git/copyright`, `/usr/share/doc/git-man/copyright`)

- `Apache-2.0`
- `Artistic`
- `Artistic-1`
- `BSD-2-clause`
- `Boost`
- `EDL-1.0`
- `Expat`
- `GPL`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `dlmalloc`
- `mingw-runtime`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `glib2.0=2.50.1-1`

Binary Packages:

- `libglib2.0-0:amd64=2.50.1-1`
- `libglib2.0-bin=2.50.1-1`
- `libglib2.0-data=2.50.1-1`
- `libglib2.0-dev=2.50.1-1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.50.1-1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.50.1-1.dsc' glib2.0_2.50.1-1.dsc 3288 SHA256:e53e3b56fc3b38ed7a7a03004add176aa3db4783af3d0f9edf40c73f35d837d3
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.50.1.orig.tar.xz' glib2.0_2.50.1.orig.tar.xz 7521832 SHA256:2ef87a78f37c1eb5b95f4cc95efd5b66f69afad9c9c0899918d04659cf6df7dd
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.50.1-1.debian.tar.xz' glib2.0_2.50.1-1.debian.tar.xz 69984 SHA256:c7589dfeef1a036ff9a7768ddea1e189da1172caf3c083410ed15069c78a28e1
```

Likely also available for browsing at:

- https://sources.debian.net/src/glib2.0/2.50.1-1/
- https://sources.debian.net/src/glib2.0/2.50.1-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `glibc=2.24-5`

Binary Packages:

- `libc-bin=2.24-5`
- `libc-dev-bin=2.24-5`
- `libc6:amd64=2.24-5`
- `libc6-dev:amd64=2.24-5`
- `multiarch-support=2.24-5`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.24-5
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-5.dsc' glibc_2.24-5.dsc 8297 SHA256:70d73cd4dd9a73e11d7048d1f3b41557fef20805c641789d7135e01956ea61b7
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24.orig.tar.xz' glibc_2.24.orig.tar.xz 13921912 SHA256:ed71e8afd2b270f7947a2cea2457a31e1ca4fac08e2731d80edd7ec1730ec84f
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-5.debian.tar.xz' glibc_2.24-5.debian.tar.xz 916828 SHA256:731f995050ea975f2ffef525dfb722334e9613a49f5e6dc4fc2b3a0de75745cd
```

Likely also available for browsing at:

- https://sources.debian.net/src/glibc/2.24-5/
- https://sources.debian.net/src/glibc/2.24-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gmp=2:6.1.1+dfsg-1`

Binary Packages:

- `libgmp10:amd64=2:6.1.1+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.1+dfsg-1
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.1+dfsg-1.dsc' gmp_6.1.1+dfsg-1.dsc 2161 SHA256:3f501a907c0357de8e9dd5325471c409ec493ab2007cfe4e761e52fd3646fec9
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.1+dfsg.orig.tar.xz' gmp_6.1.1+dfsg.orig.tar.xz 1802176 SHA256:1c34c3c0c89c4f1270f6e3e579e7b7f9190eca6713311f0167bb9fee5b3750ee
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.1+dfsg-1.debian.tar.xz' gmp_6.1.1+dfsg-1.debian.tar.xz 20600 SHA256:270a0ee22dc3da83356bf32c22d5657580c26daf931d82fa3b06ea2abdffd4ed
```

Likely also available for browsing at:

- https://sources.debian.net/src/gmp/2:6.1.1+dfsg-1/
- https://sources.debian.net/src/gmp/2:6.1.1+dfsg-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gnome-icon-theme=3.12.0-2`

Binary Packages:

- `gnome-icon-theme=3.12.0-2`

Licenses: (parsed from: `/usr/share/doc/gnome-icon-theme/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gnome-icon-theme=3.12.0-2
'http://deb.debian.org/debian/pool/main/g/gnome-icon-theme/gnome-icon-theme_3.12.0-2.dsc' gnome-icon-theme_3.12.0-2.dsc 1954 SHA256:2f86d5d7724a7728c482920fa5406c23f644b1d7b5769282989f0ce926dfc42a
'http://deb.debian.org/debian/pool/main/g/gnome-icon-theme/gnome-icon-theme_3.12.0.orig.tar.xz' gnome-icon-theme_3.12.0.orig.tar.xz 17742624 SHA256:359e720b9202d3aba8d477752c4cd11eced368182281d51ffd64c8572b4e503a
'http://deb.debian.org/debian/pool/main/g/gnome-icon-theme/gnome-icon-theme_3.12.0-2.debian.tar.xz' gnome-icon-theme_3.12.0-2.debian.tar.xz 17824 SHA256:a9e2504cb933329efe2604e46aa81f16099e9774fc37e56c34f854442bc44627
```

Likely also available for browsing at:

- https://sources.debian.net/src/gnome-icon-theme/3.12.0-2/
- https://sources.debian.net/src/gnome-icon-theme/3.12.0-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gnupg2=2.1.15-8`

Binary Packages:

- `gpgv=2.1.15-8`

Licenses: (parsed from: `/usr/share/doc/gpgv/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `RFC-Reference`
- `TinySCHEME`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris gnupg2=2.1.15-8
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.1.15-8.dsc' gnupg2_2.1.15-8.dsc 3194 SHA256:947031c044af5a6473141ceb571fb9d3a277f7b22cec0a2c345807f9528cdf86
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.1.15.orig.tar.bz2' gnupg2_2.1.15.orig.tar.bz2 5723689 SHA256:c28c1a208f1b8ad63bdb6b88d252f6734ff4d33de6b54e38494b11d49e00ffdd
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.1.15-8.debian.tar.bz2' gnupg2_2.1.15-8.debian.tar.bz2 116675 SHA256:aa6b60f6bcb52c87863ea59d2b27eb5ba704814d99d220d1caa2e365fc15e6ba
```

Likely also available for browsing at:

- https://sources.debian.net/src/gnupg2/2.1.15-8/
- https://sources.debian.net/src/gnupg2/2.1.15-8/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gnutls28=3.5.5-6`

Binary Packages:

- `libgnutls30:amd64=3.5.5-6`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `CC0 license`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `LGPL`
- `LGPL-3`
- `LGPL2.1`
- `The MIT License (MIT)`
- `The main library is licensed under GNU Lesser`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `gobject-introspection=1.50.0-1`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.50.0-1`
- `gir1.2-glib-2.0:amd64=1.50.0-1`
- `libgirepository-1.0-1:amd64=1.50.0-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.50.0-1
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.50.0-1.dsc' gobject-introspection_1.50.0-1.dsc 2905 SHA256:fb6941ce4151bb9d6ca053ad6d2955caf22058f0374fc225246af31dde1a93e9
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.50.0.orig.tar.xz' gobject-introspection_1.50.0.orig.tar.xz 1415700 SHA256:1c6597c666f543c70ef3d7c893ab052968afae620efdc080c36657f4226337c5
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.50.0-1.debian.tar.xz' gobject-introspection_1.50.0-1.debian.tar.xz 19116 SHA256:94c0a9a7be53d1a8d35c449193faf50c9f9796319d40dc42f9d65f3b677a6999
```

Likely also available for browsing at:

- https://sources.debian.net/src/gobject-introspection/1.50.0-1/
- https://sources.debian.net/src/gobject-introspection/1.50.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `graphite2=1.3.8-1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.8-1`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`)

- `Artistic`
- `GPL`
- `GPL-1+`
- `GPL1+ | Artistic`
- `LGPL | other`
- `LGPL-2`
- `LGPL-2+`
- `MPL-1.1 | GPL-2 | LGPL-2.1`
- `other`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `graphviz=2.38.0-16`

Binary Packages:

- `libcdt5=2.38.0-16`
- `libcgraph6=2.38.0-16`
- `libgraphviz-dev=2.38.0-16`
- `libgvc6=2.38.0-16`
- `libgvc6-plugins-gtk=2.38.0-16`
- `libgvpr2=2.38.0-16`
- `libpathplan4=2.38.0-16`
- `libxdot4=2.38.0-16`

Licenses: (parsed from: `/usr/share/doc/libcdt5/copyright`, `/usr/share/doc/libcgraph6/copyright`, `/usr/share/doc/libgraphviz-dev/copyright`, `/usr/share/doc/libgvc6/copyright`, `/usr/share/doc/libgvc6-plugins-gtk/copyright`, `/usr/share/doc/libgvpr2/copyright`, `/usr/share/doc/libpathplan4/copyright`, `/usr/share/doc/libxdot4/copyright`)

- `EPL-1.0`
- `MIT`
- `X/MIT`
- `zlib-style`

Source:

```console
$ apt-get source -qq --print-uris graphviz=2.38.0-16
'http://deb.debian.org/debian/pool/main/g/graphviz/graphviz_2.38.0-16.dsc' graphviz_2.38.0-16.dsc 3222 SHA256:bf53adc3e23bef5e7c890e3cf6ac523ed2a40520a446862f6eb0e7dbb7b808da
'http://deb.debian.org/debian/pool/main/g/graphviz/graphviz_2.38.0.orig.tar.gz' graphviz_2.38.0.orig.tar.gz 25848858 SHA256:81aa238d9d4a010afa73a9d2a704fc3221c731e1e06577c2ab3496bdef67859e
'http://deb.debian.org/debian/pool/main/g/graphviz/graphviz_2.38.0-16.debian.tar.xz' graphviz_2.38.0-16.debian.tar.xz 43204 SHA256:e7801cf41571fd25271c824fcc4f501764f728b8bb25f963ee13f0dfcd78ef14
```

Likely also available for browsing at:

- https://sources.debian.net/src/graphviz/2.38.0-16/
- https://sources.debian.net/src/graphviz/2.38.0-16/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `grep=2.26-1`

Binary Packages:

- `grep=2.26-1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.26-1
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.26-1.dsc' grep_2.26-1.dsc 2021 SHA256:04b276cd38ea72b368291c2b22782bdc199da5e5ed6cf51e335c22d60faad85a
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.26.orig.tar.gz' grep_2.26.orig.tar.gz 2167549 SHA256:802c8f12cb2e317356489fa0f53575d058f733f7d8a88227a2e2e874c0c9181b
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.26-1.debian.tar.bz2' grep_2.26-1.debian.tar.bz2 108885 SHA256:93680d62895a7abb0331a5753c7baf578aeb01d5633ebac2f0f4c8481138a527
```

Likely also available for browsing at:

- https://sources.debian.net/src/grep/2.26-1/
- https://sources.debian.net/src/grep/2.26-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gtk+2.0=2.24.31-1`

Binary Packages:

- `libgtk2.0-0:amd64=2.24.31-1`
- `libgtk2.0-common=2.24.31-1`

Licenses: (parsed from: `/usr/share/doc/libgtk2.0-0/copyright`, `/usr/share/doc/libgtk2.0-common/copyright`)

- `LGPL-2`
- `other`

Source:

```console
$ apt-get source -qq --print-uris gtk+2.0=2.24.31-1
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.31-1.dsc' gtk+2.0_2.24.31-1.dsc 3831 SHA256:70e39b997ff14dd9714f45b48b90eabd8e5d817f2a21701593dcff208cccdfd6
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.31.orig.tar.xz' gtk+2.0_2.24.31.orig.tar.xz 12805344 SHA256:68c1922732c7efc08df4656a5366dcc3afdc8791513400dac276009b40954658
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.31-1.debian.tar.xz' gtk+2.0_2.24.31-1.debian.tar.xz 85944 SHA256:1fd326c43be47608e436ec0cec10671c2d559ec7bd7eeef4962023fd7a8a38ca
```

Likely also available for browsing at:

- https://sources.debian.net/src/gtk+2.0/2.24.31-1/
- https://sources.debian.net/src/gtk+2.0/2.24.31-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gtk+3.0=3.22.2-1`

Binary Packages:

- `gtk-update-icon-cache=3.22.2-1`

Licenses: (parsed from: `/usr/share/doc/gtk-update-icon-cache/copyright`)

- `Apache-2.0`
- `Expat`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `other`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `gts=0.7.6+darcs121130-1.2`

Binary Packages:

- `libgts-0.7-5:amd64=0.7.6+darcs121130-1.2`

Licenses: (parsed from: `/usr/share/doc/libgts-0.7-5/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gts=0.7.6+darcs121130-1.2
'http://deb.debian.org/debian/pool/main/g/gts/gts_0.7.6+darcs121130-1.2.dsc' gts_0.7.6+darcs121130-1.2.dsc 1910 SHA256:b3211d73719b0fd3a7584b35eeb0473da818aadac024c397931ff26e8119bd7e
'http://deb.debian.org/debian/pool/main/g/gts/gts_0.7.6+darcs121130.orig.tar.gz' gts_0.7.6+darcs121130.orig.tar.gz 880569 SHA256:c23f72ab74bbf65599f8c0b599d6336fabe1ec2a09c19b70544eeefdc069b73b
'http://deb.debian.org/debian/pool/main/g/gts/gts_0.7.6+darcs121130-1.2.debian.tar.bz2' gts_0.7.6+darcs121130-1.2.debian.tar.bz2 13349 SHA256:96a4b26b65072146ecb54a03b9c4bc85cae91e56bddb2c65ca7b29a9952b2c59
```

Likely also available for browsing at:

- https://sources.debian.net/src/gts/0.7.6+darcs121130-1.2/
- https://sources.debian.net/src/gts/0.7.6+darcs121130-1.2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gzip=1.6-5`

Binary Packages:

- `gzip=1.6-5`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-5
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6-5.dsc' gzip_1.6-5.dsc 1867 SHA256:922751ee5fc426d623e824c55f7822fa60f26f35b5389b37c8b15feff639608c
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6-5.debian.tar.xz' gzip_1.6-5.debian.tar.xz 14684 SHA256:ac5282c32083ff58fc01317ee402b687b3806555aa1d4e80a62bb0f2ad93167e
```

Likely also available for browsing at:

- https://sources.debian.net/src/gzip/1.6-5/
- https://sources.debian.net/src/gzip/1.6-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `harfbuzz=1.2.7-1`

Binary Packages:

- `libharfbuzz0b:amd64=1.2.7-1+b1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.2.7-1
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.2.7-1.dsc' harfbuzz_1.2.7-1.dsc 2642 SHA256:b7208e3e06002fa8642edb22ce4d094ac0d15d8f73bf108bafd58081eff72b2f
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.2.7.orig.tar.bz2' harfbuzz_1.2.7.orig.tar.bz2 1345389 SHA256:bba0600ae08b84384e6d2d7175bea10b5fc246c4583dc841498d01894d479026
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.2.7-1.debian.tar.xz' harfbuzz_1.2.7-1.debian.tar.xz 8068 SHA256:40d0d589f190120d1dbb6817d568917004ba1e65cb06bb2d94b699c147f303a9
```

Likely also available for browsing at:

- https://sources.debian.net/src/harfbuzz/1.2.7-1/
- https://sources.debian.net/src/harfbuzz/1.2.7-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `hicolor-icon-theme=0.15-1`

Binary Packages:

- `hicolor-icon-theme=0.15-1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.15-1
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.15-1.dsc' hicolor-icon-theme_0.15-1.dsc 1588 SHA256:14450b4a0230793c4ba07d8aa87c657bdae60ae440f211fc693fdeb9fc3420d0
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.15.orig.tar.xz' hicolor-icon-theme_0.15.orig.tar.xz 51056 SHA256:9cc45ac3318c31212ea2d8cb99e64020732393ee7630fa6c1810af5f987033cc
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.15-1.debian.tar.xz' hicolor-icon-theme_0.15-1.debian.tar.xz 3524 SHA256:e11a79b49ba145e0c6985288abdf99447e4ff98bbb105eff82b402b55b99e0e2
```

Likely also available for browsing at:

- https://sources.debian.net/src/hicolor-icon-theme/0.15-1/
- https://sources.debian.net/src/hicolor-icon-theme/0.15-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `hostname=3.18`

Binary Packages:

- `hostname=3.18`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.18
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.18.dsc' hostname_3.18.dsc 1446 SHA256:4d3d5c8ded08ffc2ebfb39817ba1994b5fc1966652b132ff3e16389b70af28d7
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.18.tar.gz' hostname_3.18.tar.gz 13732 SHA256:5cc3ec120967b8f911e86b9561b53977bcc77191c84fe9c607177ccd09f8d207
```

Likely also available for browsing at:

- https://sources.debian.net/src/hostname/3.18/
- https://sources.debian.net/src/hostname/3.18/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `icu=57.1-4`

Binary Packages:

- `icu-devtools=57.1-4`
- `libicu-dev=57.1-4`
- `libicu57:amd64=57.1-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=57.1-4
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1-4.dsc' icu_57.1-4.dsc 2091 SHA256:d3f3f599d2762b7606a7e3d63bbe27fe94442e28014994226d3c8f3f261c69f6
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1.orig.tar.gz' icu_57.1.orig.tar.gz 22360664 SHA256:ff8c67cb65949b1e7808f2359f2b80f722697048e90e7cfc382ec1fe229e9581
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1-4.debian.tar.xz' icu_57.1-4.debian.tar.xz 29364 SHA256:1681e8cade102c58a0555c324fbcad4950d0c32bb10aea9ec55e7a7dbade8b3d
```

Likely also available for browsing at:

- https://sources.debian.net/src/icu/57.1-4/
- https://sources.debian.net/src/icu/57.1-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `ilmbase=2.2.0-11`

Binary Packages:

- `libilmbase-dev=2.2.0-11`
- `libilmbase12:amd64=2.2.0-11`

Licenses: (parsed from: `/usr/share/doc/libilmbase-dev/copyright`, `/usr/share/doc/libilmbase12/copyright`)

- `boost`
- `ilmbase`

Source:

```console
$ apt-get source -qq --print-uris ilmbase=2.2.0-11
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.0-11.dsc' ilmbase_2.2.0-11.dsc 2205 SHA256:c68eadeea18a20ea0277e41aa5df7364b1970523ce0a3f765f53f063719666ca
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.0.orig.tar.gz' ilmbase_2.2.0.orig.tar.gz 525289 SHA256:ecf815b60695555c1fbc73679e84c7c9902f4e8faa6e8000d2f905b8b86cedc7
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.0-11.debian.tar.xz' ilmbase_2.2.0-11.debian.tar.xz 9784 SHA256:3124c09d60bac7d9ed6023832ed8ffffb6f45f312bbe076bf3fac912cf41ee63
```

Likely also available for browsing at:

- https://sources.debian.net/src/ilmbase/2.2.0-11/
- https://sources.debian.net/src/ilmbase/2.2.0-11/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `imagemagick=8:6.9.6.2+dfsg-2`

Binary Packages:

- `imagemagick=8:6.9.6.2+dfsg-2`
- `imagemagick-6-common=8:6.9.6.2+dfsg-2`
- `imagemagick-6.q16=8:6.9.6.2+dfsg-2`
- `libmagickcore-6-arch-config:amd64=8:6.9.6.2+dfsg-2`
- `libmagickcore-6-headers=8:6.9.6.2+dfsg-2`
- `libmagickcore-6.q16-2:amd64=8:6.9.6.2+dfsg-2`
- `libmagickcore-6.q16-2-extra:amd64=8:6.9.6.2+dfsg-2`
- `libmagickcore-6.q16-dev:amd64=8:6.9.6.2+dfsg-2`
- `libmagickcore-dev=8:6.9.6.2+dfsg-2`
- `libmagickwand-6-headers=8:6.9.6.2+dfsg-2`
- `libmagickwand-6.q16-2:amd64=8:6.9.6.2+dfsg-2`
- `libmagickwand-6.q16-dev:amd64=8:6.9.6.2+dfsg-2`
- `libmagickwand-dev=8:6.9.6.2+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-6-common/copyright`, `/usr/share/doc/imagemagick-6.q16/copyright`, `/usr/share/doc/libmagickcore-6-arch-config/copyright`, `/usr/share/doc/libmagickcore-6-headers/copyright`, `/usr/share/doc/libmagickcore-6.q16-2/copyright`, `/usr/share/doc/libmagickcore-6.q16-2-extra/copyright`, `/usr/share/doc/libmagickcore-6.q16-dev/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickwand-6-headers/copyright`, `/usr/share/doc/libmagickwand-6.q16-2/copyright`, `/usr/share/doc/libmagickwand-6.q16-dev/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`)

- `Artistic`
- `BSD-with-FSF-change-public-domain`
- `GNU-All-Permissive-License`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL2+-with-Autoconf-Macros-exception`
- `GPL3+-with-Autoconf-Macros-exception`
- `GPL3+-with-Autoconf-Macros-exception-GNU`
- `ImageMagick`
- `ImageMagickLicensePartEZXML`
- `ImageMagickLicensePartFIG`
- `ImageMagickLicensePartGsview`
- `ImageMagickLicensePartOpenSSH`
- `ImageMagickPartGraphicsMagick`
- `ImageMagickPartlibjpeg`
- `ImageMagickPartlibsquish`
- `LGPL-3`
- `LGPL-3+`
- `Magick++`
- `Perllikelicence`
- `TatcherUlrichPublicDomain`

Source:

```console
$ apt-get source -qq --print-uris imagemagick=8:6.9.6.2+dfsg-2
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.6.2+dfsg-2.dsc' imagemagick_6.9.6.2+dfsg-2.dsc 4337 SHA256:39d08c14521057502a3c41bba55bd196ebc0d8ccd03ce9da4a7d0af90a286f53
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.6.2+dfsg.orig.tar.xz' imagemagick_6.9.6.2+dfsg.orig.tar.xz 8996652 SHA256:2b82e076ad077385e147856111704f59661eda7b60a5227222a8375158335ec9
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.6.2+dfsg-2.debian.tar.xz' imagemagick_6.9.6.2+dfsg-2.debian.tar.xz 206544 SHA256:ac88bd42e46d07d5fe86abe998636992e8b4eafdfff5e05536fddbe5cb7c00da
```

Likely also available for browsing at:

- https://sources.debian.net/src/imagemagick/8:6.9.6.2+dfsg-2/
- https://sources.debian.net/src/imagemagick/8:6.9.6.2+dfsg-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `inetutils=2:1.9.4-2`

Binary Packages:

- `inetutils-ping=2:1.9.4-2+b1`

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
$ apt-get source -qq --print-uris inetutils=2:1.9.4-2
'http://deb.debian.org/debian/pool/main/i/inetutils/inetutils_1.9.4-2.dsc' inetutils_1.9.4-2.dsc 2662 SHA256:bd38f1018bbb697b6e27235a804f742a7bcd5fffb736479e8084f5214ed45669
'http://deb.debian.org/debian/pool/main/i/inetutils/inetutils_1.9.4.orig.tar.xz' inetutils_1.9.4.orig.tar.xz 1364408 SHA256:849d96f136effdef69548a940e3e0ec0624fc0c81265296987986a0dd36ded37
'http://deb.debian.org/debian/pool/main/i/inetutils/inetutils_1.9.4-2.debian.tar.xz' inetutils_1.9.4-2.debian.tar.xz 77188 SHA256:1b67e9197c4205b36e7b05e07eedaf44f9b3971f03ab83b7fed279a692d93a98
```

Likely also available for browsing at:

- https://sources.debian.net/src/inetutils/2:1.9.4-2/
- https://sources.debian.net/src/inetutils/2:1.9.4-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `init-system-helpers=1.45`

Binary Packages:

- `init-system-helpers=1.45`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL`
- `GPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `iproute2=4.8.0-1`

Binary Packages:

- `iproute2=4.8.0-1`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=4.8.0-1
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.8.0-1.dsc' iproute2_4.8.0-1.dsc 2365 SHA256:dace7fdffee71c18842a1d4d3ffe281675f770767c5186a557e7e94ed1930126
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.8.0.orig.tar.xz' iproute2_4.8.0.orig.tar.xz 594636 SHA256:a30959c8421bc8ef42719bed41d14e1d7cfdbad80d7d70c5c42ad31f2c2cb389
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.8.0-1.debian.tar.xz' iproute2_4.8.0-1.debian.tar.xz 26680 SHA256:c63b890daeab42e1a91fcf863ee353b738c26c3ce659a11e09fa9c1b96cee66e
```

Likely also available for browsing at:

- https://sources.debian.net/src/iproute2/4.8.0-1/
- https://sources.debian.net/src/iproute2/4.8.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `isl=0.17.1-1`

Binary Packages:

- `libisl15:amd64=0.17.1-1`

Licenses: (parsed from: `/usr/share/doc/libisl15/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.17.1-1
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.17.1-1.dsc' isl_0.17.1-1.dsc 1857 SHA256:771ec7a63dd99952bd2bf952aeb48ed08c5c24b6a4d7ced9b0210df5bb71df46
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.17.1.orig.tar.xz' isl_0.17.1.orig.tar.xz 1440564 SHA256:be152e5c816b477594f4c6194b5666d8129f3a27702756ae9ff60346a8731647
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.17.1-1.debian.tar.xz' isl_0.17.1-1.debian.tar.xz 21556 SHA256:f63c2e46a065855561ba3ae72fe073c334231911866af34f3ec7db539bee6200
```

Likely also available for browsing at:

- https://sources.debian.net/src/isl/0.17.1-1/
- https://sources.debian.net/src/isl/0.17.1-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `jbigkit=2.1-3.1`

Binary Packages:

- `libjbig-dev:amd64=2.1-3.1`
- `libjbig0:amd64=2.1-3.1`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1-3.1.dsc' jbigkit_2.1-3.1.dsc 1299 SHA256:62c8812d508958c5d35f2b1579dc3052fb5bd8d2e77d023fad064c4b48c8c3f8
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1-3.1.debian.tar.xz' jbigkit_2.1-3.1.debian.tar.xz 7600 SHA256:ebc3c52deaf37d52baea54d648a713640dc262926abda7bf05cd08e7db5dd1ee
```

Likely also available for browsing at:

- https://sources.debian.net/src/jbigkit/2.1-3.1/
- https://sources.debian.net/src/jbigkit/2.1-3.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `jquery=3.1.1-1`

Binary Packages:

- `libjs-jquery=3.1.1-1`

Licenses: (parsed from: `/usr/share/doc/libjs-jquery/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris jquery=3.1.1-1
'http://deb.debian.org/debian/pool/main/j/jquery/jquery_3.1.1-1.dsc' jquery_3.1.1-1.dsc 2079 SHA256:92edb4c2a7be9d8703bfc030380f80e640700a04b004ab182a1df8a4627895a2
'http://deb.debian.org/debian/pool/main/j/jquery/jquery_3.1.1.orig.tar.gz' jquery_3.1.1.orig.tar.gz 410492 SHA256:9fa7fe0ff812732dbef26e53431091e260f457fb56abf3964b92e521343268f3
'http://deb.debian.org/debian/pool/main/j/jquery/jquery_3.1.1-1.debian.tar.xz' jquery_3.1.1-1.debian.tar.xz 8620 SHA256:5b195e1f12fba3febc66018ae1525bd1a9206cead4ef474befd7ce8e006a6fec
```

Likely also available for browsing at:

- https://sources.debian.net/src/jquery/3.1.1-1/
- https://sources.debian.net/src/jquery/3.1.1-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `keyutils=1.5.9-9`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-9`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-9
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-9.dsc' keyutils_1.5.9-9.dsc 2033 SHA256:5fe3b2578a7ec662b7f495b11b7d861c3ee68c9550d4dec20c10ff4f3b3ca3dd
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-9.debian.tar.xz' keyutils_1.5.9-9.debian.tar.xz 17588 SHA256:2e9db3f51d902a4d8fa4bef3b914353f9f83ed53b9003f24b5fc44748f4d6d80
```

Likely also available for browsing at:

- https://sources.debian.net/src/keyutils/1.5.9-9/
- https://sources.debian.net/src/keyutils/1.5.9-9/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `krb5=1.15~beta1-1`

Binary Packages:

- `krb5-multidev=1.15~beta1-1`
- `libgssapi-krb5-2:amd64=1.15~beta1-1`
- `libgssrpc4:amd64=1.15~beta1-1`
- `libk5crypto3:amd64=1.15~beta1-1`
- `libkadm5clnt-mit11:amd64=1.15~beta1-1`
- `libkadm5srv-mit11:amd64=1.15~beta1-1`
- `libkdb5-8:amd64=1.15~beta1-1`
- `libkrb5-3:amd64=1.15~beta1-1`
- `libkrb5-dev=1.15~beta1-1`
- `libkrb5support0:amd64=1.15~beta1-1`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit11/copyright`, `/usr/share/doc/libkadm5srv-mit11/copyright`, `/usr/share/doc/libkdb5-8/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.15~beta1-1
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.15~beta1-1.dsc' krb5_1.15~beta1-1.dsc 3261 SHA256:fbded00e724725b7266a484629343d5a5b8aebc6178737ba461f2b9af2d298d2
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.15~beta1.orig.tar.gz' krb5_1.15~beta1.orig.tar.gz 9328801 SHA256:957ff239dc1d327cb4a0e8ec53ff619fef7dd1ecd5cec99004ca440f617974c2
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.15~beta1-1.debian.tar.xz' krb5_1.15~beta1-1.debian.tar.xz 141900 SHA256:2f506202acf5a09a38b3ddd8ebda5628517e13e27b7b9af3ad5ef62f5acb1370
```

Likely also available for browsing at:

- https://sources.debian.net/src/krb5/1.15~beta1-1/
- https://sources.debian.net/src/krb5/1.15~beta1-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `lcms2=2.7-1`

Binary Packages:

- `liblcms2-2:amd64=2.7-1`
- `liblcms2-dev:amd64=2.7-1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.7-1
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.7-1.dsc' lcms2_2.7-1.dsc 1982 SHA256:44123045d3bfcdd8d15878e46473730dce0bac478b8717d95617dbc1f6e59bf0
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.7.orig.tar.gz' lcms2_2.7.orig.tar.gz 6497867 SHA256:4524234ae7de185e6b6da5d31d6875085b2198bc63b1211f7dde6e2d197d6a53
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.7-1.debian.tar.xz' lcms2_2.7-1.debian.tar.xz 11072 SHA256:3225093f0f55621d0944bf166d3800ebdb6ebdca840705e2c2e32b51d5c52c70
```

Likely also available for browsing at:

- https://sources.debian.net/src/lcms2/2.7-1/
- https://sources.debian.net/src/lcms2/2.7-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libbsd=0.8.3-1`

Binary Packages:

- `libbsd0:amd64=0.8.3-1`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-Peter-Wemm`
- `BSD-3-clause-Regents`
- `BSD-4-clause-Christopher-G-Demetriou`
- `BSD-4-clause-Niels-Provos`
- `BSD-5-clause-Peter-Wemm`
- `Beerware`
- `Expat`
- `ISC`
- `ISC-Original`
- `public-domain`
- `public-domain-Colin-Plumb`

Source:

```console
$ apt-get source -qq --print-uris libbsd=0.8.3-1
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.3-1.dsc' libbsd_0.8.3-1.dsc 2212 SHA256:8b53b3731a95f00a0f47195e6afdf8dc4bcb3ed3b9b0d3e7046d8c9c98e5c8f2
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.3.orig.tar.xz' libbsd_0.8.3.orig.tar.xz 356772 SHA256:934b634f4dfd865b6482650b8f522c70ae65c463529de8be907b53c89c3a34a8
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.3.orig.tar.xz.asc' libbsd_0.8.3.orig.tar.xz.asc 819 SHA256:c0e26a577d19404d05515e0559b9224106a59ecd30910d6896694c4a5a4b021d
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.3-1.debian.tar.xz' libbsd_0.8.3-1.debian.tar.xz 14924 SHA256:c2beb8b2c4678c9f700b09834d1083fb6b1f883b112e493bd1ed1177355114fc
```

Likely also available for browsing at:

- https://sources.debian.net/src/libbsd/0.8.3-1/
- https://sources.debian.net/src/libbsd/0.8.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libcap-ng=0.7.7-3`

Binary Packages:

- `libcap-ng0:amd64=0.7.7-3`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.7-3
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.dsc' libcap-ng_0.7.7-3.dsc 1722 SHA256:6f5262f0ed2792c135e9b6bf7d30461cc3015249832f381505d21b9217a67685
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.7.orig.tar.gz' libcap-ng_0.7.7.orig.tar.gz 420178 SHA256:615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.debian.tar.xz' libcap-ng_0.7.7-3.debian.tar.xz 5248 SHA256:b7a0846dbd0451903bcbbe3a2696341f4e6000ebd64bed259c7fbf9dfc818363
```

Likely also available for browsing at:

- https://sources.debian.net/src/libcap-ng/0.7.7-3/
- https://sources.debian.net/src/libcap-ng/0.7.7-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libcroco=0.6.11-2`

Binary Packages:

- `libcroco3:amd64=0.6.11-2`

Licenses: (parsed from: `/usr/share/doc/libcroco3/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcroco=0.6.11-2
'http://deb.debian.org/debian/pool/main/libc/libcroco/libcroco_0.6.11-2.dsc' libcroco_0.6.11-2.dsc 2245 SHA256:b119addfca651943022a53caf54dba2f809a23ae4b90fd7ba494a1aacea2c919
'http://deb.debian.org/debian/pool/main/libc/libcroco/libcroco_0.6.11.orig.tar.xz' libcroco_0.6.11.orig.tar.xz 477312 SHA256:132b528a948586b0dfa05d7e9e059901bca5a3be675b6071a90a90b81ae5a056
'http://deb.debian.org/debian/pool/main/libc/libcroco/libcroco_0.6.11-2.debian.tar.xz' libcroco_0.6.11-2.debian.tar.xz 6728 SHA256:06cc5e027ea2433f69b23215972d63d0c78e5e7ecf4c81375e0d655d8280e29e
```

Likely also available for browsing at:

- https://sources.debian.net/src/libcroco/0.6.11-2/
- https://sources.debian.net/src/libcroco/0.6.11-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libdatrie=0.2.10-4`

Binary Packages:

- `libdatrie1:amd64=0.2.10-4`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.10-4
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.10-4.dsc' libdatrie_0.2.10-4.dsc 2195 SHA256:2d80d21cfb574258e2602239c11e3df638b79334c5495430d2490763dff6b1a4
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.10.orig.tar.xz' libdatrie_0.2.10.orig.tar.xz 294380 SHA256:180eff7b0309ca19a02d5864e744185d715f021398a096fec6cf960f8ebfaa2b
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.10-4.debian.tar.xz' libdatrie_0.2.10-4.debian.tar.xz 7364 SHA256:52da724dc19ec0a27860b29b1192f2f529eeeaf27a848b75253711e9195578be
```

Likely also available for browsing at:

- https://sources.debian.net/src/libdatrie/0.2.10-4/
- https://sources.debian.net/src/libdatrie/0.2.10-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libedit=3.1-20150325-1`

Binary Packages:

- `libedit2:amd64=3.1-20150325-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `liberror-perl=0.17024-1`

Binary Packages:

- `liberror-perl=0.17024-1`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17024-1
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17024-1.dsc' liberror-perl_0.17024-1.dsc 2193 SHA256:3d269abc34facfde4e4caf5d2eac38dbce07739d3fe2167ff982140af513d17e
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17024.orig.tar.gz' liberror-perl_0.17024.orig.tar.gz 31269 SHA256:074db7c783a67b0667eca64a4f6a0c3de94998afc92c01d6453163eb04b9150d
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17024-1.debian.tar.xz' liberror-perl_0.17024-1.debian.tar.xz 4028 SHA256:7b490f3655df007a1153883608161822036837eaf49f7d6014d3a096be4a65cb
```

Likely also available for browsing at:

- https://sources.debian.net/src/liberror-perl/0.17024-1/
- https://sources.debian.net/src/liberror-perl/0.17024-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libevent=2.0.21-stable-2.1`

Binary Packages:

- `libevent-2.0-5:amd64=2.0.21-stable-2.1`
- `libevent-core-2.0-5:amd64=2.0.21-stable-2.1`
- `libevent-dev=2.0.21-stable-2.1`
- `libevent-extra-2.0-5:amd64=2.0.21-stable-2.1`
- `libevent-openssl-2.0-5:amd64=2.0.21-stable-2.1`
- `libevent-pthreads-2.0-5:amd64=2.0.21-stable-2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libevent=2.0.21-stable-2.1
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.0.21-stable-2.1.dsc' libevent_2.0.21-stable-2.1.dsc 2400 SHA256:01f74091b5d2fdf96ca24716f3a77496222fa8532f9e6c01779def03fc1f0823
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.0.21-stable.orig.tar.gz' libevent_2.0.21-stable.orig.tar.gz 850772 SHA256:22a530a8a5ba1cb9c080cba033206b17dacd21437762155c6d30ee6469f574f5
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.0.21-stable-2.1.debian.tar.xz' libevent_2.0.21-stable-2.1.debian.tar.xz 12352 SHA256:aba684c33027324f0e45c87af018573fd29e5806063cb5f8bdd63dbaaf0567e8
```

Likely also available for browsing at:

- https://sources.debian.net/src/libevent/2.0.21-stable-2.1/
- https://sources.debian.net/src/libevent/2.0.21-stable-2.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libexif=0.6.21-2`

Binary Packages:

- `libexif-dev=0.6.21-2`
- `libexif12:amd64=0.6.21-2`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.21-2
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.21-2.dsc' libexif_0.6.21-2.dsc 2053 SHA256:284942bcd7656949a383f2ee775babb20b50781c30d915b34fe272220f997ea6
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.21.orig.tar.gz' libexif_0.6.21.orig.tar.gz 2081615 SHA256:edb7eb13664cf950a6edd132b75e99afe61c5effe2f16494e6d27bc404b287bf
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.21-2.debian.tar.xz' libexif_0.6.21-2.debian.tar.xz 8628 SHA256:648796d86b17567fb13dd356fc18c4b164b5a598853964d15beb9a32ec1253d8
```

Likely also available for browsing at:

- https://sources.debian.net/src/libexif/0.6.21-2/
- https://sources.debian.net/src/libexif/0.6.21-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libffi=3.2.1-6`

Binary Packages:

- `libffi-dev:amd64=3.2.1-6`
- `libffi6:amd64=3.2.1-6`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-6
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-6.dsc' libffi_3.2.1-6.dsc 1923 SHA256:f901298b078c7d7f3f75459b5ff74cc804f6f2cfd65ed619d2082d5f77089954
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-6.debian.tar.xz' libffi_3.2.1-6.debian.tar.xz 11252 SHA256:477709fa90f8c7631fa226a48cdf38737c9f195f3686f62aa76714bcffaee512
```

Likely also available for browsing at:

- https://sources.debian.net/src/libffi/3.2.1-6/
- https://sources.debian.net/src/libffi/3.2.1-6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libgcrypt20=1.7.3-2`

Binary Packages:

- `libgcrypt20:amd64=1.7.3-2`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.7.3-2
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.3-2.dsc' libgcrypt20_1.7.3-2.dsc 2882 SHA256:ec16c79a5a5fd318459abf46fb1db420b02e6ecb6143a82bee5d02cf6c379256
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.3.orig.tar.bz2' libgcrypt20_1.7.3.orig.tar.bz2 2861294 SHA256:ddac6111077d0a1612247587be238c5294dd0ee4d76dc7ba783cc55fb0337071
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.3.orig.tar.bz2.asc' libgcrypt20_1.7.3.orig.tar.bz2.asc 287 SHA256:9ff9779dea2bc7e23cb241c136abc4eec720ef6630826d45abdf60313cbb73ea
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.3-2.debian.tar.xz' libgcrypt20_1.7.3-2.debian.tar.xz 30456 SHA256:7bad055088fe03ea98ebd65a9e4449f9c4af301a2541540a4052707bc71a8575
```

Likely also available for browsing at:

- https://sources.debian.net/src/libgcrypt20/1.7.3-2/
- https://sources.debian.net/src/libgcrypt20/1.7.3-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libgd2=2.2.3-87-gd0fec80-3`

Binary Packages:

- `libgd3:amd64=2.2.3-87-gd0fec80-3`

Licenses: (parsed from: `/usr/share/doc/libgd3/copyright`)

- `BSD-3-clause`
- `GAP~Makefile.in`
- `GAP~configure`
- `GD`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `HPND`
- `MIT`
- `WEBP`
- `XFIG`

Source:

```console
$ apt-get source -qq --print-uris libgd2=2.2.3-87-gd0fec80-3
'http://deb.debian.org/debian/pool/main/libg/libgd2/libgd2_2.2.3-87-gd0fec80-3.dsc' libgd2_2.2.3-87-gd0fec80-3.dsc 2363 SHA256:232c820f3c2db7c724febe9655f70c5cc16238116332bf762c6e1086805d904a
'http://deb.debian.org/debian/pool/main/libg/libgd2/libgd2_2.2.3-87-gd0fec80.orig.tar.xz' libgd2_2.2.3-87-gd0fec80.orig.tar.xz 2239856 SHA256:c4fbf0b4017aff89dc53ab08600baea78b2a9dab59af77da424a6979e5907d7e
'http://deb.debian.org/debian/pool/main/libg/libgd2/libgd2_2.2.3-87-gd0fec80-3.debian.tar.xz' libgd2_2.2.3-87-gd0fec80-3.debian.tar.xz 27144 SHA256:618571d0d0d0ff7ab3318526df901de5f7b85a5daaf22cf783ea0474108d9dc1
```

Likely also available for browsing at:

- https://sources.debian.net/src/libgd2/2.2.3-87-gd0fec80-3/
- https://sources.debian.net/src/libgd2/2.2.3-87-gd0fec80-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libgpg-error=1.24-1`

Binary Packages:

- `libgpg-error0:amd64=1.24-1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `GPL-2.1+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.24-1
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.24-1.dsc' libgpg-error_1.24-1.dsc 2561 SHA256:cb450cb9dd04dc4fa8b084ccc8129e4aa754f3853fe15210d7cd182139516f80
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.24.orig.tar.bz2' libgpg-error_1.24.orig.tar.bz2 783628 SHA256:9268e1cc487de5e6e4460fca612a06e4f383072ac43ae90603e5e46783d3e540
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.24-1.debian.tar.xz' libgpg-error_1.24-1.debian.tar.xz 12636 SHA256:43e8e19b54a2a7bbe7a0dcb291f38dedef1292aa449a97716b957d0cae694f49
```

Likely also available for browsing at:

- https://sources.debian.net/src/libgpg-error/1.24-1/
- https://sources.debian.net/src/libgpg-error/1.24-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libice=2:1.0.9-1`

Binary Packages:

- `libice-dev:amd64=2:1.0.9-1+b1`
- `libice6:amd64=2:1.0.9-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.9-1
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.9-1.dsc' libice_1.0.9-1.dsc 2140 SHA256:f90a79944f147b5db208677d92381fd0886c201616172bac0b28ef0e85912ebd
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.9.orig.tar.gz' libice_1.0.9.orig.tar.gz 455871 SHA256:7812a824a66dd654c830d21982749b3b563d9c2dfe0b88b203cefc14a891edc0
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.9-1.diff.gz' libice_1.0.9-1.diff.gz 6260 SHA256:85d68a69d5e6b25b352eb98c6c33fa7a324da8dd913d7e84a049852fb87287e7
```

Likely also available for browsing at:

- https://sources.debian.net/src/libice/2:1.0.9-1/
- https://sources.debian.net/src/libice/2:1.0.9-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libidn=1.33-1`

Binary Packages:

- `libidn11:amd64=1.33-1`

Licenses: (parsed from: `/usr/share/doc/libidn11/copyright`)

- `GAP`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libidn=1.33-1
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.33-1.dsc' libidn_1.33-1.dsc 1848 SHA256:f076f7dddc45717542a48123d7dddb638beebe8521f5fba29f2d148fdcf12bf0
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.33.orig.tar.gz' libidn_1.33.orig.tar.gz 3501056 SHA256:44a7aab635bb721ceef6beecc4d49dfd19478325e1b47f3196f7d2acc4930e19
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.33-1.debian.tar.xz' libidn_1.33-1.debian.tar.xz 60264 SHA256:a50ee1e2598670ca1166d218e546c4cc031c658188b1193b73d98175d4405ef0
```

Likely also available for browsing at:

- https://sources.debian.net/src/libidn/1.33-1/
- https://sources.debian.net/src/libidn/1.33-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libjpeg-turbo=1:1.5.1-2`

Binary Packages:

- `libjpeg-dev=1:1.5.1-2`
- `libjpeg62-turbo:amd64=1:1.5.1-2`
- `libjpeg62-turbo-dev:amd64=1:1.5.1-2`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg62-turbo/copyright`, `/usr/share/doc/libjpeg62-turbo-dev/copyright`)

- `BSD-3`
- `BSD-BY-LC-NE`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:1.5.1-2
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.1-2.dsc' libjpeg-turbo_1.5.1-2.dsc 2420 SHA256:9f755bfafa4795f91c689cb742194559f6e543e35ba135e0d30f6b51eed1eba2
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.1.orig.tar.gz' libjpeg-turbo_1.5.1.orig.tar.gz 1650647 SHA256:41429d3d253017433f66e3d472b8c7d998491d2f41caa7306b8d9a6f2a2c666c
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.1-2.debian.tar.xz' libjpeg-turbo_1.5.1-2.debian.tar.xz 78576 SHA256:0077c9e2b7ec2abe25c7a591e65a08750045a28dcd00207a928079a3d31b3cc4
```

Likely also available for browsing at:

- https://sources.debian.net/src/libjpeg-turbo/1:1.5.1-2/
- https://sources.debian.net/src/libjpeg-turbo/1:1.5.1-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `liblqr=0.4.2-2`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2`
- `liblqr-1-0-dev=0.4.2-2`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`, `/usr/share/doc/liblqr-1-0-dev/copyright`)

- `GPL-3`
- `GPLv3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris liblqr=0.4.2-2
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.dsc' liblqr_0.4.2-2.dsc 2024 SHA256:7e203605ebe40cde3e467db4298d7ee3f83f3d3082b05f8984868cdef1606245
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.debian.tar.xz' liblqr_0.4.2-2.debian.tar.xz 5860 SHA256:2c886ee88f65eade9e1cd10965bf572a3cc178d6119b9342c8469b6b41d2bb62
```

Likely also available for browsing at:

- https://sources.debian.net/src/liblqr/0.4.2-2/
- https://sources.debian.net/src/liblqr/0.4.2-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libmnl=1.0.4-2`

Binary Packages:

- `libmnl0:amd64=1.0.4-2`

Licenses: (parsed from: `/usr/share/doc/libmnl0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libmnl=1.0.4-2
'http://deb.debian.org/debian/pool/main/libm/libmnl/libmnl_1.0.4-2.dsc' libmnl_1.0.4-2.dsc 1994 SHA256:131106bb7eb4a94fa8e8c135f92c38068d0b42681f166eb159137f171c568630
'http://deb.debian.org/debian/pool/main/libm/libmnl/libmnl_1.0.4.orig.tar.bz2' libmnl_1.0.4.orig.tar.bz2 301270 SHA256:171f89699f286a5854b72b91d06e8f8e3683064c5901fb09d954a9ab6f551f81
'http://deb.debian.org/debian/pool/main/libm/libmnl/libmnl_1.0.4-2.debian.tar.xz' libmnl_1.0.4-2.debian.tar.xz 7512 SHA256:208d62777081ffe6d7dffde0d7370cefb03fe0a6a0486a1b50f6b7b8e9a5b068
```

Likely also available for browsing at:

- https://sources.debian.net/src/libmnl/1.0.4-2/
- https://sources.debian.net/src/libmnl/1.0.4-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libpng1.6=1.6.26-1`

Binary Packages:

- `libpng-dev:amd64=1.6.26-1`
- `libpng16-16:amd64=1.6.26-1`

Licenses: (parsed from: `/usr/share/doc/libpng-dev/copyright`, `/usr/share/doc/libpng16-16/copyright`)

- `BSD-like-with-advertising-clause`
- `GPL-2`
- `GPL-2+`
- `expat`
- `libpng`

Source:

```console
$ apt-get source -qq --print-uris libpng1.6=1.6.26-1
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.26-1.dsc' libpng1.6_1.6.26-1.dsc 2206 SHA256:74e796a08fa0f7daa20d416f52ea44527188f3d4cfa14523f1797be6731112f7
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.26.orig.tar.xz' libpng1.6_1.6.26.orig.tar.xz 983576 SHA256:266743a326986c3dbcee9d89b640595f6b16a293fd02b37d8c91348d317b73f9
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.26-1.debian.tar.xz' libpng1.6_1.6.26-1.debian.tar.xz 22072 SHA256:42edccfd98db984566529eaec59fa5d192f9d218ffad94d758eea54c48053765
```

Likely also available for browsing at:

- https://sources.debian.net/src/libpng1.6/1.6.26-1/
- https://sources.debian.net/src/libpng1.6/1.6.26-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libpsl=0.14.0-1`

Binary Packages:

- `libpsl5:amd64=0.14.0-1+b1`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libpthread-stubs=0.3-4`

Binary Packages:

- `libpthread-stubs0-dev:amd64=0.3-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libpthread-stubs=0.3-4
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.dsc' libpthread-stubs_0.3-4.dsc 1925 SHA256:e72310a5492e641076c199561977703947174c6acc3633073d909f6f5ab3c676
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3.orig.tar.gz' libpthread-stubs_0.3.orig.tar.gz 272939 SHA256:3031f466cf0b06de6b3ccbf2019d15c4fcf75229b7d226a711bc1885b3a82cde
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.diff.gz' libpthread-stubs_0.3-4.diff.gz 2413 SHA256:ce3eb8bdc0f1a4347d42c5736d056973fae46908b764a9f2be83e1bd210f2024
```

Likely also available for browsing at:

- https://sources.debian.net/src/libpthread-stubs/0.3-4/
- https://sources.debian.net/src/libpthread-stubs/0.3-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `librsvg=2.40.16-1`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.40.16-1`
- `librsvg2-2:amd64=2.40.16-1`
- `librsvg2-common:amd64=2.40.16-1`
- `librsvg2-dev:amd64=2.40.16-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.40.16-1
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.16-1.dsc' librsvg_2.40.16-1.dsc 2738 SHA256:d5447c5867087a53dad2ec237d21f581c22a689d8fa1e2509903c0eef9e2b398
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.16.orig.tar.xz' librsvg_2.40.16.orig.tar.xz 560800 SHA256:d48bcf6b03fa98f07df10332fb49d8c010786ddca6ab34cbba217684f533ff2e
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.16-1.debian.tar.xz' librsvg_2.40.16-1.debian.tar.xz 14296 SHA256:4618fae8afecef179c5cf5cfb7d1ca9719a7c8821457cf706656a864fcaae079
```

Likely also available for browsing at:

- https://sources.debian.net/src/librsvg/2.40.16-1/
- https://sources.debian.net/src/librsvg/2.40.16-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libselinux=2.6-1`

Binary Packages:

- `libselinux1:amd64=2.6-1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libsemanage=2.6-1`

Binary Packages:

- `libsemanage-common=2.6-1`
- `libsemanage1:amd64=2.6-1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.6-1
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.6-1.dsc' libsemanage_2.6-1.dsc 2306 SHA256:3dce2a75cbb8be47f6a6d328edcb740eb49a799caa295f440339acfb591bb826
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.6.orig.tar.gz' libsemanage_2.6.orig.tar.gz 155897 SHA256:4f81541047290b751f2ffb926fcd381c186f22db18d9fe671b0b4a6a54e8cfce
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.6-1.debian.tar.xz' libsemanage_2.6-1.debian.tar.xz 16412 SHA256:916c3d75a3a1b0db2988b0756e2241bdfcc57b63229841052493074b2e5d34c1
```

Likely also available for browsing at:

- https://sources.debian.net/src/libsemanage/2.6-1/
- https://sources.debian.net/src/libsemanage/2.6-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libsepol=2.6-1`

Binary Packages:

- `libsepol1:amd64=2.6-1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.6-1
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.6-1.dsc' libsepol_2.6-1.dsc 1782 SHA256:02afc748156b95cf986b604b585130c7781fd7737d1355ff8677b1f8bc9262cd
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.6.orig.tar.gz' libsepol_2.6.orig.tar.gz 442549 SHA256:d856d6506054f52abeaa3543ea2f2344595a3dc05d0d873ed7f724f7a16b1874
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.6-1.debian.tar.xz' libsepol_2.6-1.debian.tar.xz 13472 SHA256:55f0e85da07bb672c1255c0b17fed90cf1a2fb10bafb2471bff80190fab93a68
```

Likely also available for browsing at:

- https://sources.debian.net/src/libsepol/2.6-1/
- https://sources.debian.net/src/libsepol/2.6-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libsigsegv=2.10-5`

Binary Packages:

- `libsigsegv2:amd64=2.10-5`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.10-5
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.10-5.dsc' libsigsegv_2.10-5.dsc 2176 SHA256:92d54f05c061e7a3fb58e6a697b249014c6bf3e9d9364fce8d31e39c9e978d94
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.10.orig.tar.gz' libsigsegv_2.10.orig.tar.gz 402279 SHA256:8460a4a3dd4954c3d96d7a4f5dd5bc4d9b76f5754196aa245287553b26d2199a
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.10-5.debian.tar.xz' libsigsegv_2.10-5.debian.tar.xz 10196 SHA256:91c32dce30bee0e8a27f6a546338253662551b29ec4b15583217b9408e057ece
```

Likely also available for browsing at:

- https://sources.debian.net/src/libsigsegv/2.10-5/
- https://sources.debian.net/src/libsigsegv/2.10-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libsm=2:1.2.2-1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.2-1+b1`
- `libsm6:amd64=2:1.2.2-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.2-1
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.2-1.dsc' libsm_1.2.2-1.dsc 2107 SHA256:1347efa550751179c0a3f1042a9f8ae43ee0c22cf0c2283921fa83e52a68433f
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.2.orig.tar.gz' libsm_1.2.2.orig.tar.gz 415990 SHA256:14bb7c669ce2b8ff712fbdbf48120e3742a77edcd5e025d6b3325ed30cf120f4
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.2-1.diff.gz' libsm_1.2.2-1.diff.gz 6183 SHA256:9848714292ead15fcc48ab2d337f2cc5fc08910abbdfaf69d3ef1b89d3fdb2d5
```

Likely also available for browsing at:

- https://sources.debian.net/src/libsm/2:1.2.2-1/
- https://sources.debian.net/src/libsm/2:1.2.2-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libssh2=1.7.0-1`

Binary Packages:

- `libssh2-1:amd64=1.7.0-1`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD3`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.7.0-1
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.7.0-1.dsc' libssh2_1.7.0-1.dsc 1828 SHA256:4f2880ce02d40c4904f750687424e9f2c1aa68a4632da9866e08c809a69f7425
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.7.0.orig.tar.gz' libssh2_1.7.0.orig.tar.gz 811714 SHA256:e4561fd43a50539a8c2ceb37841691baf03ecb7daf043766da1b112e4280d584
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.7.0-1.debian.tar.xz' libssh2_1.7.0-1.debian.tar.xz 6396 SHA256:2f4fb78f0d6d33492ef63e04a0d007f03e56466542c0b8271bbcdcb530f31f8e
```

Likely also available for browsing at:

- https://sources.debian.net/src/libssh2/1.7.0-1/
- https://sources.debian.net/src/libssh2/1.7.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libtasn1-6=4.9-4`

Binary Packages:

- `libtasn1-6:amd64=4.9-4`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.9-4
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.9-4.dsc' libtasn1-6_4.9-4.dsc 2402 SHA256:ff99387e92055697da6192cbab3ea493b542c0838f049646117d23f31ea5c08e
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.9.orig.tar.gz' libtasn1-6_4.9.orig.tar.gz 1864709 SHA256:4f6f7a8fd691ac2b8307c8ca365bad711db607d4ad5966f6938a9d2ecd65c920
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.9-4.debian.tar.xz' libtasn1-6_4.9-4.debian.tar.xz 58180 SHA256:c9ba4c28e12bc32b77f044ecb1091ef22525ac5e8bc4fd75aaffc3923c82f19d
```

Likely also available for browsing at:

- https://sources.debian.net/src/libtasn1-6/4.9-4/
- https://sources.debian.net/src/libtasn1-6/4.9-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libthai=0.1.25-2`

Binary Packages:

- `libthai-data=0.1.25-2`
- `libthai0:amd64=0.1.25-2`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.25-2
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.25-2.dsc' libthai_0.1.25-2.dsc 2320 SHA256:c3765ed67e3313c6839a91af0e6ad4912460218c5fa1e2d577540cf0536077d3
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.25.orig.tar.xz' libthai_0.1.25.orig.tar.xz 408740 SHA256:0e22462a526e486d1e3e536c1ad7b45fae52f03bdfebfa969bec829ff9965a8b
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.25-2.debian.tar.xz' libthai_0.1.25-2.debian.tar.xz 10704 SHA256:904b84ce4e6a6a3fca81e0b5a4295b32af335592236d0b08a167be3795024d08
```

Likely also available for browsing at:

- https://sources.debian.net/src/libthai/0.1.25-2/
- https://sources.debian.net/src/libthai/0.1.25-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libtool=2.4.6-2`

Binary Packages:

- `libltdl-dev:amd64=2.4.6-2`
- `libltdl7:amd64=2.4.6-2`
- `libtool=2.4.6-2`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-2
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-2.dsc' libtool_2.4.6-2.dsc 2324 SHA256:caa2b9d5c32e491388d0627e2f808b6cb2f260dd1b0b9fdafc9bff957f05bb29
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-2.debian.tar.xz' libtool_2.4.6-2.debian.tar.xz 36024 SHA256:6227fb1240a90ef06855567e71ee96e4950dd53c4399348f36c1ec39367cd8ea
```

Likely also available for browsing at:

- https://sources.debian.net/src/libtool/2.4.6-2/
- https://sources.debian.net/src/libtool/2.4.6-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libwebp=0.5.1-2`

Binary Packages:

- `libwebp-dev:amd64=0.5.1-2`
- `libwebp6:amd64=0.5.1-2`
- `libwebpdemux2:amd64=0.5.1-2`
- `libwebpmux2:amd64=0.5.1-2`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp6/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux2/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.5.1-2
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.5.1-2.dsc' libwebp_0.5.1-2.dsc 2065 SHA256:c469acfcbbf6f5c5b6652fc7b645cd0f7fd78e48bac41d80bda03e3b522d2f0d
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.5.1.orig.tar.gz' libwebp_0.5.1.orig.tar.gz 1212254 SHA256:6ad66c6fcd60a023de20b6856b03da8c7d347269d76b1fd9c3287e8b5e8813df
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.5.1-2.debian.tar.xz' libwebp_0.5.1-2.debian.tar.xz 5300 SHA256:6d7ce394f3e2401600b082c74dd2d5d8e0ad4240ffa4ae19ce15eb8cbe62fbb6
```

Likely also available for browsing at:

- https://sources.debian.net/src/libwebp/0.5.1-2/
- https://sources.debian.net/src/libwebp/0.5.1-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libwmf=0.2.8.4-10.5`

Binary Packages:

- `libwmf-dev=0.2.8.4-10.5+b1`
- `libwmf0.2-7:amd64=0.2.8.4-10.5+b1`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libx11=2:1.6.3-1`

Binary Packages:

- `libx11-6:amd64=2:1.6.3-1`
- `libx11-data=2:1.6.3-1`
- `libx11-dev:amd64=2:1.6.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.3-1
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.3-1.dsc' libx11_1.6.3-1.dsc 2495 SHA256:eaa47a5ef64c95e4ba37b1517cb61cd0d013d7b40abed29d4ced9067a0c478e4
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.3.orig.tar.gz' libx11_1.6.3.orig.tar.gz 3105928 SHA256:0b03b9d22f4c9e59b4ba498f294e297f013cae27050dfa0f3496640200db5376
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.3-1.diff.gz' libx11_1.6.3-1.diff.gz 38903 SHA256:cfc371c878b90e66a902b2561e5affa2e5592e5c3a73025fca0c4a76216d69d9
```

Likely also available for browsing at:

- https://sources.debian.net/src/libx11/2:1.6.3-1/
- https://sources.debian.net/src/libx11/2:1.6.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.8-1`
- `libxau6:amd64=1:1.0.8-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.8-1
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.8-1.dsc' libxau_1.0.8-1.dsc 2040 SHA256:3ddb5f2c7a49ef7507b8d1e63e891238db877b4d1bb1c5486a3e3242c8523602
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.8.orig.tar.gz' libxau_1.0.8.orig.tar.gz 362044 SHA256:c343b4ef66d66a6b3e0e27aa46b37ad5cab0f11a5c565eafb4a1c7590bc71d7b
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.8-1.diff.gz' libxau_1.0.8-1.diff.gz 15287 SHA256:b493479d6a52a0e753dd357ad8a4bc5c4296015f3f7b96cf546f7c5c5843cbb0
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxau/1:1.0.8-1/
- https://sources.debian.net/src/libxau/1:1.0.8-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxcb=1.12-1`

Binary Packages:

- `libxcb-render0:amd64=1.12-1`
- `libxcb-render0-dev:amd64=1.12-1`
- `libxcb-shm0:amd64=1.12-1`
- `libxcb-shm0-dev:amd64=1.12-1`
- `libxcb1:amd64=1.12-1`
- `libxcb1-dev:amd64=1.12-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.12-1
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.12-1.dsc' libxcb_1.12-1.dsc 6558 SHA256:d6ed3f5ef255a692c9654d954da4421c535e02f21e56a657383ea9d52389080d
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.12.orig.tar.gz' libxcb_1.12.orig.tar.gz 745984 SHA256:092f147149d8a6410647a848378aaae749304d5b73e028ccb8306aa8a9e26f06
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.12-1.diff.gz' libxcb_1.12-1.diff.gz 25044 SHA256:e2af982573638874bca1f4159139e2bffa0ee51148544b4c3b09bad84622648c
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxcb/1.12-1/
- https://sources.debian.net/src/libxcb/1.12-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxcomposite=1:0.4.4-1`

Binary Packages:

- `libxcomposite1:amd64=1:0.4.4-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcomposite=1:0.4.4-1
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.4-1.dsc' libxcomposite_0.4.4-1.dsc 2170 SHA256:b304040285ca2d6e2667bfec45097814bdd017380c629a5972993407c656469a
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.4.orig.tar.gz' libxcomposite_0.4.4.orig.tar.gz 354584 SHA256:83c04649819c6f52cda1b0ce8bcdcc48ad8618428ad803fb07f20b802f1bdad1
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.4-1.diff.gz' libxcomposite_0.4.4-1.diff.gz 15633 SHA256:09fe6dd7d98d935e7307d57f926912d477b929f06c159962840d3a398f376988
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxcomposite/1:0.4.4-1/
- https://sources.debian.net/src/libxcomposite/1:0.4.4-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxcursor=1:1.1.14-1`

Binary Packages:

- `libxcursor1:amd64=1:1.1.14-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcursor=1:1.1.14-1
'http://deb.debian.org/debian/pool/main/libx/libxcursor/libxcursor_1.1.14-1.dsc' libxcursor_1.1.14-1.dsc 2275 SHA256:cef5e720065219d46f150dde03d7fdffe113a961036d8fd3e836ff3f0c53686a
'http://deb.debian.org/debian/pool/main/libx/libxcursor/libxcursor_1.1.14.orig.tar.gz' libxcursor_1.1.14.orig.tar.gz 374910 SHA256:be0954faf274969ffa6d95b9606b9c0cfee28c13b6fc014f15606a0c8b05c17b
'http://deb.debian.org/debian/pool/main/libx/libxcursor/libxcursor_1.1.14-1.diff.gz' libxcursor_1.1.14-1.diff.gz 18173 SHA256:45fec45ab41dd3e5ca2147c3c7751063a732699ab1c93524d8af24ef19b3d776
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxcursor/1:1.1.14-1/
- https://sources.debian.net/src/libxcursor/1:1.1.14-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxdamage=1:1.1.4-2`

Binary Packages:

- `libxdamage1:amd64=1:1.1.4-2+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdamage=1:1.1.4-2
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.4-2.dsc' libxdamage_1.1.4-2.dsc 2127 SHA256:43cbefb5c69f51d89a11cf84718fe0c42058fc9b6ec7c0076e7c37b9e829feb5
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.4.orig.tar.gz' libxdamage_1.1.4.orig.tar.gz 339060 SHA256:4bb3e9d917f5f593df2277d452926ee6ad96de7b7cd1017cbcf4579fe5d3442b
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.4-2.diff.gz' libxdamage_1.1.4-2.diff.gz 14930 SHA256:d238c1a266c30cd124ede7e6c86635bfaa108fa552c4a82919101cebf22670e9
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxdamage/1:1.1.4-2/
- https://sources.debian.net/src/libxdamage/1:1.1.4-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxdmcp=1:1.1.2-1.1`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.2-1.1`
- `libxdmcp6:amd64=1:1.1.2-1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-1.1
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-1.1.dsc' libxdmcp_1.1.2-1.1.dsc 2098 SHA256:605175ee859f00ace43a4c35dc2d7c60971c0e1f21769b508b5bce2303979436
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-1.1.diff.gz' libxdmcp_1.1.2-1.1.diff.gz 17944 SHA256:d764e8d251d06c9e5a50783cee393c621b7288bc3369d158b6a1d2e4372f3c9e
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxdmcp/1:1.1.2-1.1/
- https://sources.debian.net/src/libxdmcp/1:1.1.2-1.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxext=2:1.3.3-1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.3-1`
- `libxext6:amd64=2:1.3.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.3-1
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.3-1.dsc' libxext_1.3.3-1.dsc 2221 SHA256:47106df75b8f3db1e43803e8e94a2e966cd23f7daa8cfc393af739a9e33ef955
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.3.orig.tar.gz' libxext_1.3.3.orig.tar.gz 468441 SHA256:eb0b88050491fef4716da4b06a4d92b4fc9e76f880d6310b2157df604342cfe5
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.3-1.diff.gz' libxext_1.3.3-1.diff.gz 20763 SHA256:e294a4884eb68acbd151312cb0c973aad63268b637b15ccf1911864b7197557e
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxext/2:1.3.3-1/
- https://sources.debian.net/src/libxext/2:1.3.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxfixes=1:5.0.2-1`

Binary Packages:

- `libxfixes3:amd64=1:5.0.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxfixes=1:5.0.2-1
'http://deb.debian.org/debian/pool/main/libx/libxfixes/libxfixes_5.0.2-1.dsc' libxfixes_5.0.2-1.dsc 2029 SHA256:e7cdd485af9f9c9282a47513e5f89918cda82e3a5f3be1a7c3ff62e787aaa2a9
'http://deb.debian.org/debian/pool/main/libx/libxfixes/libxfixes_5.0.2.orig.tar.gz' libxfixes_5.0.2.orig.tar.gz 381826 SHA256:ad8df1ecf3324512b80ed12a9ca07556e561b14256d94216e67a68345b23c981
'http://deb.debian.org/debian/pool/main/libx/libxfixes/libxfixes_5.0.2-1.diff.gz' libxfixes_5.0.2-1.diff.gz 11514 SHA256:b2c149a58fd18408e06c120ce14a8d478554aacf846a1e529e0b373501da163d
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxfixes/1:5.0.2-1/
- https://sources.debian.net/src/libxfixes/1:5.0.2-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxi=2:1.7.6-1`

Binary Packages:

- `libxi6:amd64=2:1.7.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.7.6-1
'http://deb.debian.org/debian/pool/main/libx/libxi/libxi_1.7.6-1.dsc' libxi_1.7.6-1.dsc 2269 SHA256:b0d205346b418dbfbdd36dadc164e6050bcfa5cd691f190c9aa0ac91d2a0e5e8
'http://deb.debian.org/debian/pool/main/libx/libxi/libxi_1.7.6.orig.tar.gz' libxi_1.7.6.orig.tar.gz 601628 SHA256:4e88fa7decd287e58140ea72238f8d54e4791de302938c83695fc0c9ac102b7e
'http://deb.debian.org/debian/pool/main/libx/libxi/libxi_1.7.6-1.diff.gz' libxi_1.7.6-1.diff.gz 10149 SHA256:ae61f11cd06263d7a4caf25835fdd8ba4e8ad319781acb1e0cd177eab82ce8a7
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxi/2:1.7.6-1/
- https://sources.debian.net/src/libxi/2:1.7.6-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxinerama=2:1.1.3-1`

Binary Packages:

- `libxinerama1:amd64=2:1.1.3-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxinerama=2:1.1.3-1
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.3-1.dsc' libxinerama_1.1.3-1.dsc 2198 SHA256:4cf9a3558bd7ce1b4f55a581175c05e4b4a172364458a21ff4b657b714688fbb
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.3.orig.tar.gz' libxinerama_1.1.3.orig.tar.gz 350141 SHA256:0ba243222ae5aba4c6a3d7a394c32c8b69220a6872dbb00b7abae8753aca9a44
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.3-1.diff.gz' libxinerama_1.1.3-1.diff.gz 15738 SHA256:2b1487e3511ddabfec666a62f6e5e8ac4f97536b0d53c51f7bf4cbe07508a130
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxinerama/2:1.1.3-1/
- https://sources.debian.net/src/libxinerama/2:1.1.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxml2=2.9.4+dfsg1-2.1`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-2.1`
- `libxml2-dev:amd64=2.9.4+dfsg1-2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-2.1
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-2.1.dsc' libxml2_2.9.4+dfsg1-2.1.dsc 2992 SHA256:be01780a7b7bf2531e065c8b783ab425d4fb03ab4d1b61386be7be636be913b3
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA256:a74ad55e346aa0b2b41903e66d21f8f3d2a736b3f41e32496376861ab484184e
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-2.1.debian.tar.xz' libxml2_2.9.4+dfsg1-2.1.debian.tar.xz 28036 SHA256:e71790a415e5d6b4a6490040d946d584fa79465571da3b186cc67b8f064cd104
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-2.1/
- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-2.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxpm=1:3.5.11-1`

Binary Packages:

- `libxpm4:amd64=1:3.5.11-1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.11-1
'http://deb.debian.org/debian/pool/main/libx/libxpm/libxpm_3.5.11-1.dsc' libxpm_3.5.11-1.dsc 2110 SHA256:0a11be8c795d991b916bfcbc7b187d1e345048130392946a6995dfc1fd258dea
'http://deb.debian.org/debian/pool/main/libx/libxpm/libxpm_3.5.11.orig.tar.gz' libxpm_3.5.11.orig.tar.gz 527020 SHA256:53ddf924441b7ed2de994d4934358c13d9abf4828b1b16e1255ade5032b31df7
'http://deb.debian.org/debian/pool/main/libx/libxpm/libxpm_3.5.11-1.diff.gz' libxpm_3.5.11-1.diff.gz 15272 SHA256:651f287bb39fde1192aec1ecdfc8963119cd8ee6a2b6c4f044a4ffe59df5d371
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxpm/1:3.5.11-1/
- https://sources.debian.net/src/libxpm/1:3.5.11-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxrandr=2:1.5.0-1`

Binary Packages:

- `libxrandr2:amd64=2:1.5.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.5.0-1
'http://deb.debian.org/debian/pool/main/libx/libxrandr/libxrandr_1.5.0-1.dsc' libxrandr_1.5.0-1.dsc 2125 SHA256:e1fe17d69676e15108ff6c6c3eedc2c3c72fef8a9dd9bde1ac9f4f4467efdfd1
'http://deb.debian.org/debian/pool/main/libx/libxrandr/libxrandr_1.5.0.orig.tar.gz' libxrandr_1.5.0.orig.tar.gz 382147 SHA256:1b594a149e6b124aab7149446f2fd886461e2935eca8dca43fe83a70cf8ec451
'http://deb.debian.org/debian/pool/main/libx/libxrandr/libxrandr_1.5.0-1.diff.gz' libxrandr_1.5.0-1.diff.gz 13507 SHA256:f04e5dccdee7db84d534aa4423b927710fbffe513c0ec632f92129a70323334e
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxrandr/2:1.5.0-1/
- https://sources.debian.net/src/libxrandr/2:1.5.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxrender=1:0.9.9-2`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.9-2`
- `libxrender1:amd64=1:0.9.9-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.9-2
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.9-2.dsc' libxrender_0.9.9-2.dsc 2129 SHA256:c4765450605e14f7dc38a9432dd3583824e84afaf8feebbf666e23583a39fc84
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.9.orig.tar.gz' libxrender_0.9.9.orig.tar.gz 371568 SHA256:beeac64ff8d225f775019eb7c688782dee9f4cc7b412a65538f8dde7be4e90fe
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.9-2.diff.gz' libxrender_0.9.9-2.diff.gz 21315 SHA256:8d331e1d0ab191e82df8bdd5a3404ebbab86062408d2cfcb0d46bc49691f454b
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxrender/1:0.9.9-2/
- https://sources.debian.net/src/libxrender/1:0.9.9-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxslt=1.1.29-2`

Binary Packages:

- `libxslt1-dev:amd64=1.1.29-2`
- `libxslt1.1:amd64=1.1.29-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.29-2
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.29-2.dsc' libxslt_1.1.29-2.dsc 2368 SHA256:dcedd2cbe791c0053253181fc71cfae5a7e9babe081c80eb65e05b64efe5287e
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.29.orig.tar.gz' libxslt_1.1.29.orig.tar.gz 3428524 SHA256:b5976e3857837e7617b29f2249ebb5eeac34e249208d31f1fbf7a6ba7a4090ce
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.29-2.debian.tar.xz' libxslt_1.1.29-2.debian.tar.xz 27884 SHA256:c206efbcc3bd857316e9f01059b1095e42552b3321b398168ff4bfcc0b01910c
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxslt/1.1.29-2/
- https://sources.debian.net/src/libxslt/1.1.29-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxt=1:1.1.5-1`

Binary Packages:

- `libxt-dev:amd64=1:1.1.5-1`
- `libxt6:amd64=1:1.1.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.1.5-1
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.1.5-1.dsc' libxt_1.1.5-1.dsc 2109 SHA256:f44ae1393c9fd02c0b3dd03576c7b26e6c7b09de3271a87e018efadeed311639
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.1.5.orig.tar.gz' libxt_1.1.5.orig.tar.gz 962169 SHA256:b59bee38a9935565fa49dc1bfe84cb30173e2e07e1dcdf801430d4b54eb0caa3
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.1.5-1.diff.gz' libxt_1.1.5-1.diff.gz 14462 SHA256:822fe813d1ea9213e6fde91cbb607c0b6874341dc19b77b0f6649b8be8472d82
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxt/1:1.1.5-1/
- https://sources.debian.net/src/libxt/1:1.1.5-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libyaml=0.1.7-2`

Binary Packages:

- `libyaml-0-2:amd64=0.1.7-2`
- `libyaml-dev:amd64=0.1.7-2`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.7-2
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.1.7-2.dsc' libyaml_0.1.7-2.dsc 1820 SHA256:f2e599adcf8336c4be374987112a0c823b4609dc0f5a944e5827651241d91645
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.1.7.orig.tar.gz' libyaml_0.1.7.orig.tar.gz 527518 SHA256:8088e457264a98ba451a90b8661fcb4f9d6f478f7265d48322a196cec2480729
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.1.7-2.debian.tar.xz' libyaml_0.1.7-2.debian.tar.xz 4016 SHA256:6fc7065491dd6f86b46e6f231ae8ab60f8aafbef2dcf4721598644024485b801
```

Likely also available for browsing at:

- https://sources.debian.net/src/libyaml/0.1.7-2/
- https://sources.debian.net/src/libyaml/0.1.7-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `linux=4.8.5-1`

Binary Packages:

- `linux-libc-dev:amd64=4.8.5-1`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `CRYPTOGAMS`
- `GPL-2`
- `LGPL-2.1`
- `Unicode-data`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=4.8.5-1
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.8.5-1.dsc' linux_4.8.5-1.dsc 86068 SHA256:011852bf433334def009b74157bee4acb4bc326119849883e3650c16c1c0427c
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.8.5.orig.tar.xz' linux_4.8.5.orig.tar.xz 93277876 SHA256:1749055e92cca7c66a2d7533cf5a833ea950adc8c0bb892c56ecb70ce03468a2
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.8.5-1.debian.tar.xz' linux_4.8.5-1.debian.tar.xz 791504 SHA256:887362f5f31b18b170e20dd2df40d9a1f1fa12aa5102e325f23c3e7b3e892ed4
```

Likely also available for browsing at:

- https://sources.debian.net/src/linux/4.8.5-1/
- https://sources.debian.net/src/linux/4.8.5-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `lsb=9.20161101`

Binary Packages:

- `lsb-base=9.20161101`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20161101
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_9.20161101.dsc' lsb_9.20161101.dsc 1668 SHA256:85175a5ee13c1892709cf8ac9673ec3047940528f48c2580b56cc0a5578d7bfe
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_9.20161101.tar.xz' lsb_9.20161101.tar.xz 43000 SHA256:52521cfeb985f7e00bc00abec2f1e55798373e3ad828b7794829548ec7505cf5
```

Likely also available for browsing at:

- https://sources.debian.net/src/lsb/9.20161101/
- https://sources.debian.net/src/lsb/9.20161101/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `lz4=0.0~r131-2`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=0.0~r131-2
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_0.0~r131-2.dsc' lz4_0.0~r131-2.dsc 1973 SHA256:304cf9dddee387377929adf3f2cef0ae19fb2e56b6cc9eab05798845b58bd9b6
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_0.0~r131.orig.tar.gz' lz4_0.0~r131.orig.tar.gz 133784 SHA256:9d4d00614d6b9dec3114b33d1224b6262b99ace24434c53487a0c8fd0b18cfed
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_0.0~r131-2.debian.tar.xz' lz4_0.0~r131-2.debian.tar.xz 4936 SHA256:966df055dd8fa7f292c283452b43a5d2d2047d542fe49e97025006e69525e224
```

Likely also available for browsing at:

- https://sources.debian.net/src/lz4/0.0~r131-2/
- https://sources.debian.net/src/lz4/0.0~r131-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `lzo2=2.08-1.2`

Binary Packages:

- `liblzo2-2:amd64=2.08-1.2`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.08-1.2
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.08-1.2.dsc' lzo2_2.08-1.2.dsc 1804 SHA256:09eabe81d6f631a29cc603843b27ab914704726a1400a2219cf83b1da4e72892
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.08.orig.tar.gz' lzo2_2.08.orig.tar.gz 589045 SHA256:ac1b3e4dee46febe9fd28737eb7f5692d3232ef1a01da10444394c3d47536614
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.08-1.2.debian.tar.xz' lzo2_2.08-1.2.debian.tar.xz 5996 SHA256:5a9aa3a2432f5d4f689b24c64ea3daec7646e736da37721388ae88b670dd99bc
```

Likely also available for browsing at:

- https://sources.debian.net/src/lzo2/2.08-1.2/
- https://sources.debian.net/src/lzo2/2.08-1.2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `m4=1.4.17-5`

Binary Packages:

- `m4=1.4.17-5`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.17-5
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.17-5.dsc' m4_1.4.17-5.dsc 1411 SHA256:4fb85651ee1e951f17304042e83253d7ca75a2f962be9796b10aad5ac96f5524
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.17.orig.tar.xz' m4_1.4.17.orig.tar.xz 1149088 SHA256:f0543c3beb51fa6b3337d8025331591e0e18d8ec2886ed391f1aade43477d508
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.17-5.debian.tar.xz' m4_1.4.17-5.debian.tar.xz 12544 SHA256:74045004fae4025bc850c2d53e4d95ed7374b9c22c846c3d3596e39986697049
```

Likely also available for browsing at:

- https://sources.debian.net/src/m4/1.4.17-5/
- https://sources.debian.net/src/m4/1.4.17-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `make-dfsg=4.1-9`

Binary Packages:

- `make=4.1-9`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-9
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.1-9.dsc' make-dfsg_4.1-9.dsc 1840 SHA256:9fb34257ae4511f1dc7ece5bfe6b95cac8bdc81f407f2651cb0236be280baa6d
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.1-9.diff.gz' make-dfsg_4.1-9.diff.gz 45279 SHA256:7dc8fab9a4573abfe17e7bc611a70eb3ebb24786dbd9ce008329cf12e05c9c15
```

Likely also available for browsing at:

- https://sources.debian.net/src/make-dfsg/4.1-9/
- https://sources.debian.net/src/make-dfsg/4.1-9/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `mercurial=4.0-1`

Binary Packages:

- `mercurial=4.0-1`
- `mercurial-common=4.0-1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=4.0-1
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.0-1.dsc' mercurial_4.0-1.dsc 2364 SHA256:ff0e5c095bc7968180186caae755a7db258d474fc3cec759c2043ca53770db0f
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.0.orig.tar.gz' mercurial_4.0.orig.tar.gz 4850316 SHA256:24be080745230840f214d93e9f9fb4e25510f9abbbec2e56fab18543fedc43a7
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.0-1.debian.tar.xz' mercurial_4.0-1.debian.tar.xz 95148 SHA256:2ebf7404aec85e37a751950678b12df1a6fd7c3b7fa405e87673cb4eaabdf2b8
```

Likely also available for browsing at:

- https://sources.debian.net/src/mercurial/4.0-1/
- https://sources.debian.net/src/mercurial/4.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `mime-support=3.60`

Binary Packages:

- `mime-support=3.60`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.60
'http://deb.debian.org/debian/pool/main/m/mime-support/mime-support_3.60.dsc' mime-support_3.60.dsc 1605 SHA256:1c3c61f6943b130ee6518facac394b733661975955b84af640b78fa354d7595d
'http://deb.debian.org/debian/pool/main/m/mime-support/mime-support_3.60.tar.gz' mime-support_3.60.tar.gz 36840 SHA256:f31d81f68dc007f56567cc14fb3b2effbd42d1dd087e414508e14e33d1a6a3a4
```

Likely also available for browsing at:

- https://sources.debian.net/src/mime-support/3.60/
- https://sources.debian.net/src/mime-support/3.60/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `mpclib3=1.0.3-1`

Binary Packages:

- `libmpc3:amd64=1.0.3-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.0.3-1
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.3-1.dsc' mpclib3_1.0.3-1.dsc 1940 SHA256:4b424e1c6063d48fd0d045b5afe37004346dae267ced0994fa8e11ff41cada45
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.3.orig.tar.gz' mpclib3_1.0.3.orig.tar.gz 669925 SHA256:617decc6ea09889fb08ede330917a00b16809b8db88c29c31bfbb49cbf88ecc3
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.3-1.diff.gz' mpclib3_1.0.3-1.diff.gz 3684 SHA256:5a3fe9a7eddb4428d42e95f5919cce517f17411acdb2a73013a8f1a2bb246565
```

Likely also available for browsing at:

- https://sources.debian.net/src/mpclib3/1.0.3-1/
- https://sources.debian.net/src/mpclib3/1.0.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `mpdecimal=2.4.2-1`

Binary Packages:

- `libmpdec2:amd64=2.4.2-1`

Licenses: (parsed from: `/usr/share/doc/libmpdec2/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.4.2-1
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.dsc' mpdecimal_2.4.2-1.dsc 1893 SHA256:5bc782829357ebc9f0c12084642319e5ac89784a119433f8bfba7a11008d7c13
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.debian.tar.xz' mpdecimal_2.4.2-1.debian.tar.xz 5172 SHA256:b95fb775fd04a7ad34fa5bd2c222b49ee2dfd7f0e15295dbd3f7fb86a9b0194b
```

Likely also available for browsing at:

- https://sources.debian.net/src/mpdecimal/2.4.2-1/
- https://sources.debian.net/src/mpdecimal/2.4.2-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `mpfr4=3.1.5-1`

Binary Packages:

- `libmpfr4:amd64=3.1.5-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr4/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=3.1.5-1
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.5-1.dsc' mpfr4_3.1.5-1.dsc 1971 SHA256:40c1a87b1fc06ca9447f7fb1827fc13a0c557af8541f0bccbb3022b029b73582
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.5.orig.tar.xz' mpfr4_3.1.5.orig.tar.xz 1126668 SHA256:015fde82b3979fbe5f83501986d328331ba8ddf008c1ff3da3c238f49ca062bc
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.5-1.debian.tar.xz' mpfr4_3.1.5-1.debian.tar.xz 9672 SHA256:e5b0d755ec3b3aea15aab137328f7fe65c6b800a1b897bbf50fa4fd478589bd4
```

Likely also available for browsing at:

- https://sources.debian.net/src/mpfr4/3.1.5-1/
- https://sources.debian.net/src/mpfr4/3.1.5-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `mysql-5.7=5.7.15-1`

Binary Packages:

- `libmysqlclient-dev=5.7.15-1`
- `libmysqlclient20:amd64=5.7.15-1`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient-dev/copyright`, `/usr/share/doc/libmysqlclient20/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-like`
- `Boost`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL`
- `LGPL-2`
- `SWsoft`
- `public-domain`
- `zlib/libpng`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `mysql-defaults=1.0.0`

Binary Packages:

- `mysql-common=5.8+1.0.0`

Licenses: (parsed from: `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `ncurses=6.0+20160917-1`

Binary Packages:

- `libncurses5:amd64=6.0+20160917-1`
- `libncurses5-dev:amd64=6.0+20160917-1`
- `libncursesw5:amd64=6.0+20160917-1`
- `libtinfo-dev:amd64=6.0+20160917-1`
- `libtinfo5:amd64=6.0+20160917-1`
- `ncurses-base=6.0+20160917-1`
- `ncurses-bin=6.0+20160917-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20160917-1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20160917-1.dsc' ncurses_6.0+20160917-1.dsc 3748 SHA256:d3b3199a6262f07a706a4859d94cc6e1eef65c318afad052b77f9f3c28d4e6a2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20160917.orig.tar.gz' ncurses_6.0+20160917.orig.tar.gz 3179055 SHA256:ae88a28e9cc4922b304df7ac88bf5cce3b3916298541bb22c92d4dc0d88188a6
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20160917-1.debian.tar.xz' ncurses_6.0+20160917-1.debian.tar.xz 52640 SHA256:edd0e288c47a0458b809ae96548184a12ca96e6d71b218a57294bf288a29fe0d
```

Likely also available for browsing at:

- https://sources.debian.net/src/ncurses/6.0+20160917-1/
- https://sources.debian.net/src/ncurses/6.0+20160917-1/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `nettle=3.3-1`

Binary Packages:

- `libhogweed4:amd64=3.3-1`
- `libnettle6:amd64=3.3-1`

Licenses: (parsed from: `/usr/share/doc/libhogweed4/copyright`, `/usr/share/doc/libnettle6/copyright`)

- `GAP`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1+`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nettle=3.3-1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.3-1.dsc' nettle_3.3-1.dsc 2043 SHA256:3336bc6e8e5b1acad66afa97a05f934e4d758c614fd468d5650b5a38049f1161
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.3.orig.tar.gz' nettle_3.3.orig.tar.gz 1887927 SHA256:46942627d5d0ca11720fec18d81fc38f7ef837ea4197c1f630e71ce0d470b11e
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.3-1.debian.tar.xz' nettle_3.3-1.debian.tar.xz 19428 SHA256:42fef549318af6cfdf76336eb348501d09454a1d873a84f66440b9a791a0ff1b
```

Likely also available for browsing at:

- https://sources.debian.net/src/nettle/3.3-1/
- https://sources.debian.net/src/nettle/3.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `nghttp2=1.16.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.16.0-1`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `SIL-OFL-1.1`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.16.0-1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.16.0-1.dsc' nghttp2_1.16.0-1.dsc 2231 SHA256:6679dc2340b573ba2b54a41dca4d834b1008599ee9b5f64aa063cf7848d20e19
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.16.0.orig.tar.bz2' nghttp2_1.16.0.orig.tar.bz2 1783873 SHA256:bc53bed532b8a0e284b692b0446325894c2b1783935290ccd2ac7a3e1bc5c6ae
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.16.0-1.debian.tar.xz' nghttp2_1.16.0-1.debian.tar.xz 11352 SHA256:52a8b14cf2bcc8f792106284fab9c2d5381b21c5c32536e62110ba0dc299fa74
```

Likely also available for browsing at:

- https://sources.debian.net/src/nghttp2/1.16.0-1/
- https://sources.debian.net/src/nghttp2/1.16.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openexr=2.2.0-11`

Binary Packages:

- `libopenexr-dev=2.2.0-11`
- `libopenexr22:amd64=2.2.0-11`

Licenses: (parsed from: `/usr/share/doc/libopenexr-dev/copyright`, `/usr/share/doc/libopenexr22/copyright`)

- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.2.0-11
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.0-11.dsc' openexr_2.2.0-11.dsc 2264 SHA256:135bace179e244606866b76d63c4fe3bab9f6829d09eabe68968f70bc53d9e23
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.0.orig.tar.gz' openexr_2.2.0.orig.tar.gz 14489661 SHA256:36a012f6c43213f840ce29a8b182700f6cf6b214bea0d5735594136b44914231
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.0-11.debian.tar.xz' openexr_2.2.0-11.debian.tar.xz 16504 SHA256:019605b14e57034f1e9b5d1ef6ae5f8839ab6a2756532084a8bad350e8d6f05e
```

Likely also available for browsing at:

- https://sources.debian.net/src/openexr/2.2.0-11/
- https://sources.debian.net/src/openexr/2.2.0-11/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openjpeg2=2.1.2-1`

Binary Packages:

- `libopenjp2-7:amd64=2.1.2-1`
- `libopenjp2-7-dev=2.1.2-1`

Licenses: (parsed from: `/usr/share/doc/libopenjp2-7/copyright`, `/usr/share/doc/libopenjp2-7-dev/copyright`)

- `BSD-2`
- `BSD-3`
- `LIBPNG`
- `LIBTIFF`
- `LIBTIFF-GLARSON`
- `LIBTIFF-PIXAR`
- `MIT`
- `ZLIB`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openjpeg2=2.1.2-1
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.1.2-1.dsc' openjpeg2_2.1.2-1.dsc 2745 SHA256:b2f16bb0be9a9f5b218b01252391d2280820165ab96ec3e2a6b26a8ce4f01bca
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.1.2.orig.tar.gz' openjpeg2_2.1.2.orig.tar.gz 1987071 SHA256:4ce77b6ef538ef090d9bde1d5eeff8b3069ab56c4906f083475517c2c023dfa7
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.1.2-1.debian.tar.xz' openjpeg2_2.1.2-1.debian.tar.xz 17176 SHA256:ef4381c844169803b0512486d0fd8e0d2c82b8b77ab65e0043cb1376adcde451
```

Likely also available for browsing at:

- https://sources.debian.net/src/openjpeg2/2.1.2-1/
- https://sources.debian.net/src/openjpeg2/2.1.2-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openldap=2.4.42+dfsg-2`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.42+dfsg-2+b3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.42+dfsg-2
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.42+dfsg-2.dsc' openldap_2.4.42+dfsg-2.dsc 2902 SHA256:66bd0c7ccc8997008a4e8c734cb2ee7fed5ac6897217389dc5647ff86bfbac01
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.42+dfsg.orig.tar.gz' openldap_2.4.42+dfsg.orig.tar.gz 4813173 SHA256:5f56e4e3584f7a4b4c8437a2c985b2f519836946be77ef1aa43a5d20c02ea97b
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.42+dfsg-2.debian.tar.xz' openldap_2.4.42+dfsg-2.debian.tar.xz 152620 SHA256:6a9bb42aeb745dd2b18765ab067401d450bbf97f8822356fa175397cb9257199
```

Likely also available for browsing at:

- https://sources.debian.net/src/openldap/2.4.42+dfsg-2/
- https://sources.debian.net/src/openldap/2.4.42+dfsg-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openssh=1:7.3p1-3`

Binary Packages:

- `openssh-client=1:7.3p1-3+b1`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-3-clause`
- `Beer-ware`
- `CORE-SDI-BSD-style`
- `Expat-with-advertising-restriction`
- `GPL-2 with OpenSSH-linking exception`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openssh=1:7.3p1-3
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.3p1-3.dsc' openssh_7.3p1-3.dsc 2890 SHA256:ef0c4c4d3d374ee81875d89e1c9f5cd67fb37d7440834c0640f7447100136c87
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.3p1.orig.tar.gz' openssh_7.3p1.orig.tar.gz 1522617 SHA256:3ffb989a6dcaa69594c3b550d4855a5a2e1718ccdde7f5e36387b424220fbecc
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.3p1-3.debian.tar.xz' openssh_7.3p1-3.debian.tar.xz 152220 SHA256:841745326ce0e4b29bbd7420e5bbba49b871f7ea54962a5a4805c900e1a2c46e
```

Likely also available for browsing at:

- https://sources.debian.net/src/openssh/1:7.3p1-3/
- https://sources.debian.net/src/openssh/1:7.3p1-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openssl1.0=1.0.2j-4`

Binary Packages:

- `libssl1.0.2:amd64=1.0.2j-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl1.0=1.0.2j-4
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2j-4.dsc' openssl1.0_1.0.2j-4.dsc 2468 SHA256:19d9da65e37d460b94cbfb7f7fd306ede46e2d57ea8c5d0fc040ace56ff98cf5
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2j.orig.tar.gz' openssl1.0_1.0.2j.orig.tar.gz 5307912 SHA256:e7aff292be21c259c6af26469c7a9b3ba26e9abaaffd325e3dccc9785256c431
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2j.orig.tar.gz.asc' openssl1.0_1.0.2j.orig.tar.gz.asc 473 SHA256:b3551e17fef7df2eb901aa9c1cbc41e5cf7c9d5d10e546936145f24d1e52efdc
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2j-4.debian.tar.xz' openssl1.0_1.0.2j-4.debian.tar.xz 74788 SHA256:591263249b907f9b39964bfa3fda94735f5f315b1bb47bf80d5f6e458a5262ef
```

Likely also available for browsing at:

- https://sources.debian.net/src/openssl1.0/1.0.2j-4/
- https://sources.debian.net/src/openssl1.0/1.0.2j-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openssl=1.1.0b-2`

Binary Packages:

- `libssl-dev:amd64=1.1.0b-2`
- `libssl1.1:amd64=1.1.0b-2`
- `openssl=1.1.0b-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `p11-kit=0.23.2-5`

Binary Packages:

- `libp11-kit0:amd64=0.23.2-5`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.2-5
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.2-5.dsc' p11-kit_0.23.2-5.dsc 2173 SHA256:0a7b69704d9e7dd61d9d6dfbb07f00e6e3c2fe3c50852b7941c5be59ce8116ea
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.2.orig.tar.gz' p11-kit_0.23.2.orig.tar.gz 1022733 SHA256:ba726ea8303c97467a33fca50ee79b7b35212964be808ecf9b145e9042fdfaf0
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.2-5.debian.tar.xz' p11-kit_0.23.2-5.debian.tar.xz 15088 SHA256:69ffb937aeec1ccb1c4788473ac8bd1d9f070a65d04db47a18cd82f45f61d7f0
```

Likely also available for browsing at:

- https://sources.debian.net/src/p11-kit/0.23.2-5/
- https://sources.debian.net/src/p11-kit/0.23.2-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pam=1.1.8-3.3`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.3`
- `libpam-modules-bin=1.1.8-3.3`
- `libpam-runtime=1.1.8-3.3`
- `libpam0g:amd64=1.1.8-3.3`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.3
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.3.dsc' pam_1.1.8-3.3.dsc 2203 SHA256:3fa2ec8d2fa8ac2dbde75416b1fc52b5ca16db524821c3b8bbca141fd17e5886
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.3.diff.gz' pam_1.1.8-3.3.diff.gz 139020 SHA256:5b6f05d25bb20fc9e5965bd1c3b70611546d1bdb6c1f28d37d5a0eaf0724f040
```

Likely also available for browsing at:

- https://sources.debian.net/src/pam/1.1.8-3.3/
- https://sources.debian.net/src/pam/1.1.8-3.3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pango1.0=1.40.3-3`

Binary Packages:

- `libpango-1.0-0:amd64=1.40.3-3`
- `libpangocairo-1.0-0:amd64=1.40.3-3`
- `libpangoft2-1.0-0:amd64=1.40.3-3`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `LGPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.40.3-3
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.40.3-3.dsc' pango1.0_1.40.3-3.dsc 3201 SHA256:2dcddc7c25a0a7c83e4636a6aa68eb6c27b99d02c348ca6fd7a94502e73b9f7c
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.40.3.orig.tar.xz' pango1.0_1.40.3.orig.tar.xz 1061044 SHA256:abba8b5ce728520c3a0f1535eab19eac3c14aeef7faa5aded90017ceac2711d3
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.40.3-3.debian.tar.xz' pango1.0_1.40.3-3.debian.tar.xz 27372 SHA256:aca66bb3069d6a57d44d45a4986968c2a7ac8e43e8e84c32d66f26a1bd1c2ff0
```

Likely also available for browsing at:

- https://sources.debian.net/src/pango1.0/1.40.3-3/
- https://sources.debian.net/src/pango1.0/1.40.3-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `patch=2.7.5-1`

Binary Packages:

- `patch=2.7.5-1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.5-1
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.5-1.dsc' patch_2.7.5-1.dsc 1795 SHA256:909ac12aa395f8b32a4524dcea67207567e99d2560e2a833ba577ec64c4cc1bd
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.5.orig.tar.xz' patch_2.7.5.orig.tar.xz 727704 SHA256:fd95153655d6b95567e623843a0e77b81612d502ecf78a489a4aed7867caa299
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.5-1.debian.tar.xz' patch_2.7.5-1.debian.tar.xz 8116 SHA256:c5b9797658fdc1c150072fc9568279bd62c591b2fc43fa6d33750a9a4e8f0ddd
```

Likely also available for browsing at:

- https://sources.debian.net/src/patch/2.7.5-1/
- https://sources.debian.net/src/patch/2.7.5-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pcre3=2:8.39-2`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-2`
- `libpcre3:amd64=2:8.39-2`
- `libpcre3-dev:amd64=2:8.39-2`
- `libpcre32-3:amd64=2:8.39-2`
- `libpcrecpp0v5:amd64=2:8.39-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-2
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-2.dsc' pcre3_8.39-2.dsc 2133 SHA256:8c5ba4886410322adb13986748280e95fb9334bb5b86aeee6b4ba9295144eb12
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-2.debian.tar.gz' pcre3_8.39-2.debian.tar.gz 23765 SHA256:375c8c6c746553dd3c7364d53c4e85f68694c58763e4bc541821060cbb52eef6
```

Likely also available for browsing at:

- https://sources.debian.net/src/pcre3/2:8.39-2/
- https://sources.debian.net/src/pcre3/2:8.39-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `perl=5.24.1~rc3-3`

Binary Packages:

- `libperl5.24:amd64=5.24.1~rc3-3`
- `perl=5.24.1~rc3-3`
- `perl-base=5.24.1~rc3-3`
- `perl-modules-5.24=5.24.1~rc3-3`

Licenses: (parsed from: `/usr/share/doc/libperl5.24/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.24/copyright`)

- `Artistic`
- `Artistic,`
- `Artistic-2`
- `BSD-3-clause`
- `BSD-3-clause-GENERIC`
- `BSD-3-clause-with-weird-numbering`
- `BSD-4-clause-POWERDOG`
- `BZIP`
- `CC0-1.0`
- `DONT-CHANGE-THE-GPL`
- `Expat`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `GPL-3+-WITH-BISON-EXCEPTION`
- `HSIEH-BSD`
- `HSIEH-DERIVATIVE`
- `LGPL-2.1`
- `REGCOMP`
- `REGCOMP,`
- `RRA-KEEP-THIS-NOTICE`
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.24.1~rc3-3
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.24.1~rc3-3.dsc' perl_5.24.1~rc3-3.dsc 2347 SHA256:9328c6e667267ed5a20618b06dffc9f96180d0ea519f2422e8964d0d173c66d4
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.24.1~rc3.orig.tar.xz' perl_5.24.1~rc3.orig.tar.xz 11552388 SHA256:18a25373d80e5d5c39928790e45427c7bc34a98499b25645de2b5fb2ab7ba7b5
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.24.1~rc3-3.debian.tar.xz' perl_5.24.1~rc3-3.debian.tar.xz 162980 SHA256:c52663a4148af33561e3c8db88fa4b07e8fe62ffc3670f7a78f521ebb1ec7759
```

Likely also available for browsing at:

- https://sources.debian.net/src/perl/5.24.1~rc3-3/
- https://sources.debian.net/src/perl/5.24.1~rc3-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pixman=0.34.0-1`

Binary Packages:

- `libpixman-1-0:amd64=0.34.0-1`
- `libpixman-1-dev=0.34.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.34.0-1
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.34.0-1.dsc' pixman_0.34.0-1.dsc 2103 SHA256:157e17c323d461a07f48e570a87228098770fd4388324b2dfcf360bf59ac1e11
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.34.0.orig.tar.gz' pixman_0.34.0.orig.tar.gz 878784 SHA256:21b6b249b51c6800dc9553b65106e1e37d0e25df942c90531d4c3997aa20a88e
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.34.0-1.diff.gz' pixman_0.34.0-1.diff.gz 315394 SHA256:a230def25913d56f9f13e4dbb1014214f84e85fe502c943d560f4335cfc1c5cd
```

Likely also available for browsing at:

- https://sources.debian.net/src/pixman/0.34.0-1/
- https://sources.debian.net/src/pixman/0.34.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pkg-config=0.29-4`

Binary Packages:

- `pkg-config=0.29-4`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29-4
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-4.dsc' pkg-config_0.29-4.dsc 1718 SHA256:6a00ca4f4813c9d531b7f99072e1b6b443a8eea045c97e7d2b9d34f9a960deb5
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29.orig.tar.gz' pkg-config_0.29.orig.tar.gz 1973875 SHA256:c8507705d2a10c67f385d66ca2aae31e81770cc0734b4191eb8c489e864a006b
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-4.diff.gz' pkg-config_0.29-4.diff.gz 7560 SHA256:0c1253e3755942d3bf407d5c6465568e97ee960c8d9829c53cbae8ff26dc3762
```

Likely also available for browsing at:

- https://sources.debian.net/src/pkg-config/0.29-4/
- https://sources.debian.net/src/pkg-config/0.29-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `postgresql-9.6=9.6.1-2`

Binary Packages:

- `libpq-dev=9.6.1-2`
- `libpq5:amd64=9.6.1-2`

Licenses: (parsed from: `/usr/share/doc/libpq-dev/copyright`, `/usr/share/doc/libpq5/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `Custom-Unicode`
- `Custom-pg_dump`
- `Custom-regex`
- `GPL-1`
- `PostgreSQL`
- `Tcl`
- `blf`
- `double-metaphone`
- `imath`
- `nagaysau-ishii`
- `rijndael`

Source:

```console
$ apt-get source -qq --print-uris postgresql-9.6=9.6.1-2
'http://deb.debian.org/debian/pool/main/p/postgresql-9.6/postgresql-9.6_9.6.1-2.dsc' postgresql-9.6_9.6.1-2.dsc 3634 SHA256:2fad895302ea58d1db661a25bbca9cef228535c957e3d918250c537a227723d4
'http://deb.debian.org/debian/pool/main/p/postgresql-9.6/postgresql-9.6_9.6.1.orig.tar.bz2' postgresql-9.6_9.6.1.orig.tar.bz2 19260568 SHA256:e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
'http://deb.debian.org/debian/pool/main/p/postgresql-9.6/postgresql-9.6_9.6.1-2.debian.tar.xz' postgresql-9.6_9.6.1-2.debian.tar.xz 20376 SHA256:cda7c8c40942e7382ce63a6ef6a9ba26d80b132100fba2c4815aeb5a8a4a6905
```

Likely also available for browsing at:

- https://sources.debian.net/src/postgresql-9.6/9.6.1-2/
- https://sources.debian.net/src/postgresql-9.6/9.6.1-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `procps=2:3.3.12-2`

Binary Packages:

- `libprocps6:amd64=2:3.3.12-2`
- `procps=2:3.3.12-2`

Licenses: (parsed from: `/usr/share/doc/libprocps6/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.12-2
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.12-2.dsc' procps_3.3.12-2.dsc 2136 SHA256:ba3339c5b84b53f01942d17fbd10dfaa4e9c61ae7d849eb7204660e292811172
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.12.orig.tar.xz' procps_3.3.12.orig.tar.xz 840540 SHA256:042fcc93e1850aee4c193c51c03f369293fb64fe47e37b38852be6693d12a3af
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.12-2.debian.tar.xz' procps_3.3.12-2.debian.tar.xz 26820 SHA256:f2dc5de6bf7a5d73b3e012633afdc7dd8d0b466ea768c57934a7de9b81e4bb9e
```

Likely also available for browsing at:

- https://sources.debian.net/src/procps/2:3.3.12-2/
- https://sources.debian.net/src/procps/2:3.3.12-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `python-defaults=2.7.11-2`

Binary Packages:

- `libpython-stdlib:amd64=2.7.11-2`
- `python=2.7.11-2`
- `python-minimal=2.7.11-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.11-2
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.11-2.dsc' python-defaults_2.7.11-2.dsc 2630 SHA256:78fad69ce99631565654d675b242dc71684cc8ff53668306b5100956eb7d464c
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.11-2.tar.gz' python-defaults_2.7.11-2.tar.gz 283181 SHA256:4eea9fdbf3b61a98836cb7f20657f80c9718e8d6ff09588678e07a554ae787ba
```

Likely also available for browsing at:

- https://sources.debian.net/src/python-defaults/2.7.11-2/
- https://sources.debian.net/src/python-defaults/2.7.11-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `python2.7=2.7.12-5`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.12-5`
- `libpython2.7-stdlib:amd64=2.7.12-5`
- `python2.7=2.7.12-5`
- `python2.7-minimal=2.7.12-5`

Licenses: (parsed from: `/usr/share/doc/libpython2.7-minimal/copyright`, `/usr/share/doc/libpython2.7-stdlib/copyright`, `/usr/share/doc/python2.7/copyright`, `/usr/share/doc/python2.7-minimal/copyright`)

- `# Licensed to PSF under a Contributor Agreement`
- `* Permission to use this software in any way is granted without`
- `Apache`
- `Apache-2`
- `Apache-2.0`
- `Expat`
- `GPL-2`
- `ISC`
- `LGPL-2.1+`
- `PSF-2`
- `Permission is hereby granted, free of charge, to any person obtaining`
- `Python`
- `This software is provided 'as-is', without any express`
- `This software is provided as-is, without express`
- `implied`
- `see above, some license as Python`

Source:

```console
$ apt-get source -qq --print-uris python2.7=2.7.12-5
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.12-5.dsc' python2.7_2.7.12-5.dsc 3310 SHA256:2254c288eb5f4c9360ec28b035127bda736371606e814e88c02e8f9168aaa2c9
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.12.orig.tar.gz' python2.7_2.7.12.orig.tar.gz 16935960 SHA256:3cb522d17463dfa69a155ab18cffa399b358c966c0363d6c8b5b3bf1384da4b6
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.12-5.diff.gz' python2.7_2.7.12-5.diff.gz 507143 SHA256:6cf7be507c67c349108d3b5c44275e41105456de860c2fd8558e52d7eee0fb04
```

Likely also available for browsing at:

- https://sources.debian.net/src/python2.7/2.7.12-5/
- https://sources.debian.net/src/python2.7/2.7.12-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `python3-defaults=3.5.1-4`

Binary Packages:

- `libpython3-stdlib:amd64=3.5.1-4`
- `python3=3.5.1-4`
- `python3-minimal=3.5.1-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.5.1-4
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.5.1-4.dsc' python3-defaults_3.5.1-4.dsc 2735 SHA256:8736a7daf594446507633ea83fe342a2d778435764c6ac081c27d9a649596940
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.5.1-4.tar.gz' python3-defaults_3.5.1-4.tar.gz 131640 SHA256:798cfc0d8c8257aec269975f8f42203e48f202cc3a32416f4e5538f2ae44b3a9
```

Likely also available for browsing at:

- https://sources.debian.net/src/python3-defaults/3.5.1-4/
- https://sources.debian.net/src/python3-defaults/3.5.1-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `python3.5=3.5.2-7`

Binary Packages:

- `libpython3.5-minimal:amd64=3.5.2-7`
- `libpython3.5-stdlib:amd64=3.5.2-7`
- `python3.5=3.5.2-7`
- `python3.5-minimal=3.5.2-7`

Licenses: (parsed from: `/usr/share/doc/libpython3.5-minimal/copyright`, `/usr/share/doc/libpython3.5-stdlib/copyright`, `/usr/share/doc/python3.5/copyright`, `/usr/share/doc/python3.5-minimal/copyright`)

- `* Permission to use this software in any way is granted without`
- `Apache`
- `Apache-2`
- `Apache-2.0`
- `By obtaining, using, and/or copying this software and/or its`
- `Expat`
- `GPL-2`
- `ISC`
- `LGPL-2.1+`
- `PSF-2`
- `Permission  is  hereby granted,  free  of charge,  to  any person`
- `Permission is hereby granted, free of charge, to any person obtaining`
- `Permission to use, copy, modify,`
- `Python`
- `Redistribution`
- `This software is provided 'as-is', without any express`
- `This software is provided as-is, without express`
- `binary forms, with`
- `distribute this software`
- `distribute this software and`
- `distribute this software for any`
- `implied`
- `its`
- `see above, some license as Python`
- `use in source`
- `without`

Source:

```console
$ apt-get source -qq --print-uris python3.5=3.5.2-7
'http://deb.debian.org/debian/pool/main/p/python3.5/python3.5_3.5.2-7.dsc' python3.5_3.5.2-7.dsc 3317 SHA256:d9a83212dcaae68f1b99068fa6e55317458d295f68b1a65d53b671310822eeeb
'http://deb.debian.org/debian/pool/main/p/python3.5/python3.5_3.5.2.orig.tar.xz' python3.5_3.5.2.orig.tar.xz 15222676 SHA256:0010f56100b9b74259ebcd5d4b295a32324b58b517403a10d1a2aa7cb22bca40
'http://deb.debian.org/debian/pool/main/p/python3.5/python3.5_3.5.2-7.debian.tar.xz' python3.5_3.5.2-7.debian.tar.xz 625180 SHA256:48d2907c8e2e4ef78c030ebf760af9437118fa415699b064a3d92f243c669991
```

Likely also available for browsing at:

- https://sources.debian.net/src/python3.5/3.5.2-7/
- https://sources.debian.net/src/python3.5/3.5.2-7/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `readline=7.0-1`

Binary Packages:

- `libreadline-dev:amd64=7.0-1`
- `libreadline7:amd64=7.0-1`
- `readline-common=7.0-1`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=7.0-1
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-1.dsc' readline_7.0-1.dsc 2505 SHA256:d3176f0ab485483d077d176df51a9e2fcac3e8bb0b96bd191dc95c9fad7f57ca
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-1.debian.tar.xz' readline_7.0-1.debian.tar.xz 28516 SHA256:814a15c6dc5fad46bfbeb869f2cafe73ca6052e21dbe3ffafb8ea317b5e1cd00
```

Likely also available for browsing at:

- https://sources.debian.net/src/readline/7.0-1/
- https://sources.debian.net/src/readline/7.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-1
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc 2315 SHA256:e56822b88625bf6a51f06652fc36fa2a1348b4325ac76541800cd078192aa3d2
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz 8044 SHA256:675847f5cddb860256cbf2e7d5b85918aa53b59b0fd97a466b39a5c77a399537
```

Likely also available for browsing at:

- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-1/
- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sed=4.2.2-8`

Binary Packages:

- `sed=4.2.2-8`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.2.2-8
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.2-8.dsc' sed_4.2.2-8.dsc 1983 SHA256:1ed436e5f31808e411ffe628a8c64d5743794edd4e0dedb640f53efc08739203
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.2.orig.tar.bz2' sed_4.2.2.orig.tar.bz2 1059414 SHA256:f048d1838da284c8bc9753e4506b85a1e0cc1ea8999d36f6995bcb9460cddbd7
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.2-8.debian.tar.xz' sed_4.2.2-8.debian.tar.xz 85104 SHA256:16c35745df5187642865d3bccf5d3ee151fe1d36481da4a72f2fb8c3e54e50dd
```

Likely also available for browsing at:

- https://sources.debian.net/src/sed/4.2.2-8/
- https://sources.debian.net/src/sed/4.2.2-8/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `serf=1.3.9-1`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-1`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `shadow=1:4.2-3.2`

Binary Packages:

- `login=1:4.2-3.2`
- `passwd=1:4.2-3.2`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.2-3.2
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.2-3.2.dsc' shadow_4.2-3.2.dsc 2289 SHA256:9377f2adb0d3bf01dbdd36a6b550f1bc2e1d60840cf39d5314cca4474a7ff857
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.2.orig.tar.xz' shadow_4.2.orig.tar.xz 1088696 SHA256:c5bd72c4ecb438b99289e4630b22ea0626987a378d084910dbe59eceaa34be1d
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.2-3.2.debian.tar.xz' shadow_4.2-3.2.debian.tar.xz 497092 SHA256:0483a19f500c8eb8b26ef3fd408a014f32171c375b76d3ed7762cf97934bee4c
```

Likely also available for browsing at:

- https://sources.debian.net/src/shadow/1:4.2-3.2/
- https://sources.debian.net/src/shadow/1:4.2-3.2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `shared-mime-info=1.7-1`

Binary Packages:

- `shared-mime-info=1.7-1`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.7-1
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.7-1.dsc' shared-mime-info_1.7-1.dsc 2271 SHA256:7a5f933a9765ae61b2f1a68b667162a8f6d6485ea95ab8c85166be11b49d927f
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.7.orig.tar.xz' shared-mime-info_1.7.orig.tar.xz 582172 SHA256:eacc781cfebaa2074e43cf9521dc7ab4391ace8a4712902b2841669c83144d2e
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.7-1.debian.tar.xz' shared-mime-info_1.7-1.debian.tar.xz 10228 SHA256:5f0f8ff1ac95bb999189caf2a3cc28aaab7fc6850e17fcb2d230740c90d6049b
```

Likely also available for browsing at:

- https://sources.debian.net/src/shared-mime-info/1.7-1/
- https://sources.debian.net/src/shared-mime-info/1.7-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `six=1.10.0-3`

Binary Packages:

- `python-six=1.10.0-3`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.10.0-3
'http://deb.debian.org/debian/pool/main/s/six/six_1.10.0-3.dsc' six_1.10.0-3.dsc 2158 SHA256:71f2d5ff8b999c471cc2e92712befe482351a5ae226321e0e795bc683c8729cb
'http://deb.debian.org/debian/pool/main/s/six/six_1.10.0.orig.tar.gz' six_1.10.0.orig.tar.gz 29630 SHA256:105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a
'http://deb.debian.org/debian/pool/main/s/six/six_1.10.0-3.debian.tar.xz' six_1.10.0-3.debian.tar.xz 3668 SHA256:860cc57244ea4e69eb4ee3ad1b823472c20d868c1cc25745b236ba6c9e1f3563
```

Likely also available for browsing at:

- https://sources.debian.net/src/six/1.10.0-3/
- https://sources.debian.net/src/six/1.10.0-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sqlite3=3.15.1-1`

Binary Packages:

- `libsqlite3-0:amd64=3.15.1-1`
- `libsqlite3-dev:amd64=3.15.1-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.15.1-1
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.15.1-1.dsc' sqlite3_3.15.1-1.dsc 2478 SHA256:32ad6590c9801c71aed1cf787409cd2b51aa66524e85ec4c70d9cdd9cc45773a
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.15.1.orig-www.tar.xz' sqlite3_3.15.1.orig-www.tar.xz 3340588 SHA256:6436fd79054ae91e09272663d847d645b966e976a37e081bc29215a6f94f61cd
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.15.1.orig.tar.xz' sqlite3_3.15.1.orig.tar.xz 5319056 SHA256:148babe05b5eb70967b78d2084fd5da49edf75aa3443dc6e0961c938e6de0035
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.15.1-1.debian.tar.xz' sqlite3_3.15.1-1.debian.tar.xz 16688 SHA256:cc0d55d6a08b2c9d5bd10880c1006c9616639d31c319d04de01b91692f3f6109
```

Likely also available for browsing at:

- https://sources.debian.net/src/sqlite3/3.15.1-1/
- https://sources.debian.net/src/sqlite3/3.15.1-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `subversion=1.9.4-3`

Binary Packages:

- `libsvn1:amd64=1.9.4-3+b1`
- `subversion=1.9.4-3+b1`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.9.4-3
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.4-3.dsc' subversion_1.9.4-3.dsc 3017 SHA256:79b3ff5e16e2aac8c0c8a8e441362ad7743757b5fc096775ef456abda1e967ec
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.4.orig.tar.gz' subversion_1.9.4.orig.tar.gz 10603019 SHA256:11f738063f322b06f8c81e42bc26c33e0cb1e465539647109e534274d4a8540c
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.4-3.diff.gz' subversion_1.9.4-3.diff.gz 2423501 SHA256:d09c42f0d24e19fa5152a5ed6f4babbecc5a48605e99d41412157d222937b57b
```

Likely also available for browsing at:

- https://sources.debian.net/src/subversion/1.9.4-3/
- https://sources.debian.net/src/subversion/1.9.4-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `systemd=232-1`

Binary Packages:

- `libsystemd0:amd64=232-1`
- `libudev1:amd64=232-1`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

- `CC0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `sysvinit=2.88dsf-59.8`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.8`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.8.dsc' sysvinit_2.88dsf-59.8.dsc 2248 SHA256:eea9978e43d12ccf6db031a37e4c26261fe99b4a050ec33fe2f67052cf9f251a
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.8.debian.tar.xz' sysvinit_2.88dsf-59.8.debian.tar.xz 132524 SHA256:2846084547646a93be1b73c1aaad5bd7a300291cebf9aabdbf2131bc36ddc20e
```

Likely also available for browsing at:

- https://sources.debian.net/src/sysvinit/2.88dsf-59.8/
- https://sources.debian.net/src/sysvinit/2.88dsf-59.8/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `tar=1.29b-1.1`

Binary Packages:

- `tar=1.29b-1.1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.29b-1.1
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b-1.1.dsc' tar_1.29b-1.1.dsc 2057 SHA256:9474ed422017e23e8208785c071b9f7765d73d704b9bb19da22699c6581d73ef
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b.orig.tar.xz' tar_1.29b.orig.tar.xz 1822008 SHA256:6a59706ebee384a6cd2fb3ee1dbfbfc20c5c66c7efd7cedb28edc054fca8ba00
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b-1.1.debian.tar.xz' tar_1.29b-1.1.debian.tar.xz 28484 SHA256:380f80af0e87446796f05ba384c5d130ea2ad5978b8cfdcf315503966333ebb9
```

Likely also available for browsing at:

- https://sources.debian.net/src/tar/1.29b-1.1/
- https://sources.debian.net/src/tar/1.29b-1.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `tiff=4.0.6-3`

Binary Packages:

- `libtiff5:amd64=4.0.6-3`
- `libtiff5-dev:amd64=4.0.6-3`
- `libtiffxx5:amd64=4.0.6-3`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiff5-dev/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.6-3
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.6-3.dsc' tiff_4.0.6-3.dsc 2125 SHA256:4630f34a2f56a90eff104bf01dcb843f21683f883eb4135f52782af111deaae2
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.6.orig.tar.gz' tiff_4.0.6.orig.tar.gz 2192991 SHA256:4d57a50907b510e3049a4bba0d7888930fdfc16ce49f1bf693e5b6247370d68c
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.6-3.debian.tar.xz' tiff_4.0.6-3.debian.tar.xz 22272 SHA256:cc650116c1dafed9c3721302f91e5e79b670f46712ebf2b86dea989c102e5c94
```

Likely also available for browsing at:

- https://sources.debian.net/src/tiff/4.0.6-3/
- https://sources.debian.net/src/tiff/4.0.6-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `tzdata=2016h-1`

Binary Packages:

- `tzdata=2016h-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `ucf=3.0036`

Binary Packages:

- `ucf=3.0036`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0036
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0036.dsc' ucf_3.0036.dsc 1343 SHA256:e67a8a3012ac357c7759dabd93d258422b1003bad8c3f17f25fc2a289eeda3bb
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0036.tar.xz' ucf_3.0036.tar.xz 65020 SHA256:34aa44416106f1205376918386b2896edf21dd42b633133b5f8fedecae17fca8
```

Likely also available for browsing at:

- https://sources.debian.net/src/ucf/3.0036/
- https://sources.debian.net/src/ucf/3.0036/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `ustr=1.0.4-5`

Binary Packages:

- `libustr-1.0-1:amd64=1.0.4-5`

Licenses: (parsed from: `/usr/share/doc/libustr-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris ustr=1.0.4-5
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-5.dsc' ustr_1.0.4-5.dsc 2016 SHA256:3c06f54e4c05e76bf7c4d7192bbf3a7b259372c7448a4245e8317115808cf7c9
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-5.debian.tar.xz' ustr_1.0.4-5.debian.tar.xz 24948 SHA256:a21e78acf82dcccef2893932ef7b85852419bfd9b18382e63c34e7710c1d7762
```

Likely also available for browsing at:

- https://sources.debian.net/src/ustr/1.0.4-5/
- https://sources.debian.net/src/ustr/1.0.4-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `util-linux=2.28.2-1`

Binary Packages:

- `bsdutils=1:2.28.2-1`
- `libblkid1:amd64=2.28.2-1`
- `libfdisk1:amd64=2.28.2-1`
- `libmount1:amd64=2.28.2-1`
- `libsmartcols1:amd64=2.28.2-1`
- `libuuid1:amd64=2.28.2-1`
- `mount=2.28.2-1`
- `util-linux=2.28.2-1`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.28.2-1
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.28.2-1.dsc' util-linux_2.28.2-1.dsc 3889 SHA256:3eebc93c437e6c95f5d3327f12a51fffa882148b0e59cdf43703a939ef69df93
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.28.2.orig.tar.xz' util-linux_2.28.2.orig.tar.xz 4149700 SHA256:b89d37146f20bede93a42c847bce881a17e6dbd8066ff2db2bee733fa409f0cd
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.28.2-1.debian.tar.xz' util-linux_2.28.2-1.debian.tar.xz 73220 SHA256:55a1aaaffb259893578d1d0044daa274cd9e1402de0db9789f05c44074cb3506
```

Likely also available for browsing at:

- https://sources.debian.net/src/util-linux/2.28.2-1/
- https://sources.debian.net/src/util-linux/2.28.2-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `wget=1.18-4`

Binary Packages:

- `wget=1.18-4`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.18-4
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.18-4.dsc' wget_1.18-4.dsc 1870 SHA256:0c40295fd54d845b9c81c06b985f334771bd6e6d3d19007b251852aeff03b2a2
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.18.orig.tar.gz' wget_1.18.orig.tar.gz 3865525 SHA256:a00a65fab84cc46e24c53ce88c45604668a7a479276e037dc2f558e34717fb2d
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.18-4.debian.tar.xz' wget_1.18-4.debian.tar.xz 21408 SHA256:30f87c9465311bd1ab935dce7b1b6d9e1be3c9ff5c40a43f052f145a823debd9
```

Likely also available for browsing at:

- https://sources.debian.net/src/wget/1.18-4/
- https://sources.debian.net/src/wget/1.18-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `x11proto-core=7.0.31-1`

Binary Packages:

- `x11proto-core-dev=7.0.31-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-core=7.0.31-1
'http://deb.debian.org/debian/pool/main/x/x11proto-core/x11proto-core_7.0.31-1.dsc' x11proto-core_7.0.31-1.dsc 1949 SHA256:9810fabbded85927d800058431a9168308aeec4bdd4e4fa6dc7f877855c35028
'http://deb.debian.org/debian/pool/main/x/x11proto-core/x11proto-core_7.0.31.orig.tar.gz' x11proto-core_7.0.31.orig.tar.gz 367979 SHA256:6d755eaae27b45c5cc75529a12855fed5de5969b367ed05003944cf901ed43c7
'http://deb.debian.org/debian/pool/main/x/x11proto-core/x11proto-core_7.0.31-1.diff.gz' x11proto-core_7.0.31-1.diff.gz 30387 SHA256:68f5f4e0df06f5fa5ed4a88e1b3899bd9d80313a51b6f314230132f560bcf94e
```

Likely also available for browsing at:

- https://sources.debian.net/src/x11proto-core/7.0.31-1/
- https://sources.debian.net/src/x11proto-core/7.0.31-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `x11proto-input=2.3.2-1`

Binary Packages:

- `x11proto-input-dev=2.3.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-input=2.3.2-1
'http://deb.debian.org/debian/pool/main/x/x11proto-input/x11proto-input_2.3.2-1.dsc' x11proto-input_2.3.2-1.dsc 1908 SHA256:6c4fc45a57d001782369ffcdbe29f5ff889d426a1053c67678c3a710dd9d03d2
'http://deb.debian.org/debian/pool/main/x/x11proto-input/x11proto-input_2.3.2.orig.tar.gz' x11proto-input_2.3.2.orig.tar.gz 244334 SHA256:10eaadd531f38f7c92ab59ef0708ca195caf3164a75c4ed99f0c04f2913f6ef3
'http://deb.debian.org/debian/pool/main/x/x11proto-input/x11proto-input_2.3.2-1.diff.gz' x11proto-input_2.3.2-1.diff.gz 6898 SHA256:21f09fce8acfb20e01bd2c90775eb8ae8f43d67dea690874625d1a0bd5a1bff2
```

Likely also available for browsing at:

- https://sources.debian.net/src/x11proto-input/2.3.2-1/
- https://sources.debian.net/src/x11proto-input/2.3.2-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `x11proto-kb=1.0.7-1`

Binary Packages:

- `x11proto-kb-dev=1.0.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-kb=1.0.7-1
'http://deb.debian.org/debian/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-1.dsc' x11proto-kb_1.0.7-1.dsc 1929 SHA256:279f1e446457ba50e8950ebbe44446f960362f2247dece08ed276f5181596480
'http://deb.debian.org/debian/pool/main/x/x11proto-kb/x11proto-kb_1.0.7.orig.tar.gz' x11proto-kb_1.0.7.orig.tar.gz 325858 SHA256:828cb275b91268b1a3ea950d5c0c5eb076c678fdf005d517411f89cc8c3bb416
'http://deb.debian.org/debian/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-1.diff.gz' x11proto-kb_1.0.7-1.diff.gz 7467 SHA256:c868adc57853c6633e0379ce25f23e4cd8847f1d67c651ed1d7e63c98574064c
```

Likely also available for browsing at:

- https://sources.debian.net/src/x11proto-kb/1.0.7-1/
- https://sources.debian.net/src/x11proto-kb/1.0.7-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `x11proto-render=2:0.11.1-2`

Binary Packages:

- `x11proto-render-dev=2:0.11.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-render=2:0.11.1-2
'http://deb.debian.org/debian/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.dsc' x11proto-render_0.11.1-2.dsc 1979 SHA256:5cebbcce7928bd468b0eb447d9da403e5228af1691549a529a9012d2f7d18948
'http://deb.debian.org/debian/pool/main/x/x11proto-render/x11proto-render_0.11.1.orig.tar.gz' x11proto-render_0.11.1.orig.tar.gz 124436 SHA256:a0a4be3cad9381ae28279ba5582e679491fc2bec9aab8a65993108bf8dbce5fe
'http://deb.debian.org/debian/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.diff.gz' x11proto-render_0.11.1-2.diff.gz 14527 SHA256:614b7adf6f08bdf25bc7fb565f048e2f94e290c3bd056fa2485e093eb887c54f
```

Likely also available for browsing at:

- https://sources.debian.net/src/x11proto-render/2:0.11.1-2/
- https://sources.debian.net/src/x11proto-render/2:0.11.1-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `x11proto-xext=7.3.0-1`

Binary Packages:

- `x11proto-xext-dev=7.3.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-xext=7.3.0-1
'http://deb.debian.org/debian/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.dsc' x11proto-xext_7.3.0-1.dsc 1997 SHA256:4b806c7f17f7dd466901111ce0862117541098025470601c251499d76affe9fc
'http://deb.debian.org/debian/pool/main/x/x11proto-xext/x11proto-xext_7.3.0.orig.tar.gz' x11proto-xext_7.3.0.orig.tar.gz 290814 SHA256:1b1bcdf91221e78c6c33738667a57bd9aaa63d5953174ad8ed9929296741c9f5
'http://deb.debian.org/debian/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.diff.gz' x11proto-xext_7.3.0-1.diff.gz 16644 SHA256:68eec9363c7f8bcfbbaba68d6661284eb78fffccbddb293b95a6c85647cfcf6c
```

Likely also available for browsing at:

- https://sources.debian.net/src/x11proto-xext/7.3.0-1/
- https://sources.debian.net/src/x11proto-xext/7.3.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.dsc' xorg-sgml-doctools_1.11-1.dsc 1975 SHA256:1f4a12a38420b0ddab35553b9588fdf43ab39577958aed70fca435c9a747141a
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA256:986326d7b4dd2ad298f61d8d41fe3929ac6191c6000d6d7e47a8ffc0c34e7426
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.diff.gz' xorg-sgml-doctools_1.11-1.diff.gz 3194 SHA256:18eeb355cb0efff9f47f8ed8e852eee322d9733a427419f4b39f43bc4df630c1
```

Likely also available for browsing at:

- https://sources.debian.net/src/xorg-sgml-doctools/1:1.11-1/
- https://sources.debian.net/src/xorg-sgml-doctools/1:1.11-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `xorg=1:7.7+16`

Binary Packages:

- `x11-common=1:7.7+16`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+16
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7+16.dsc' xorg_7.7+16.dsc 1970 SHA256:2851fe3914bd116515086ee6cb47c60d394dd1fd69569383b9bcd86ed9064a99
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7+16.tar.gz' xorg_7.7+16.tar.gz 289969 SHA256:5f1a755ffeb86996c0aba36845145932e20641990fc28a3c68e76d78dd6293ae
```

Likely also available for browsing at:

- https://sources.debian.net/src/xorg/1:7.7+16/
- https://sources.debian.net/src/xorg/1:7.7+16/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `xtrans=1.3.5-1`

Binary Packages:

- `xtrans-dev=1.3.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.3.5-1
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.3.5-1.dsc' xtrans_1.3.5-1.dsc 1901 SHA256:64750bc2dd993ac93b9e0a8d6109ce72963ab22296479145eb3f392d238c2280
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.3.5.orig.tar.gz' xtrans_1.3.5.orig.tar.gz 227536 SHA256:b7a577c1b6c75030145e53b4793db9c88f9359ac49e7d771d4385d21b3e5945d
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.3.5-1.diff.gz' xtrans_1.3.5-1.diff.gz 16122 SHA256:2acb2c4f5958ef1bbae74ca64007d0465261a4f62bfad6ed22f1f144c0e445e1
```

Likely also available for browsing at:

- https://sources.debian.net/src/xtrans/1.3.5-1/
- https://sources.debian.net/src/xtrans/1.3.5-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `xz-utils=5.2.2-1.2`

Binary Packages:

- `liblzma-dev:amd64=5.2.2-1.2`
- `liblzma5:amd64=5.2.2-1.2`
- `xz-utils=5.2.2-1.2`

Licenses: (parsed from: `/usr/share/doc/liblzma-dev/copyright`, `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

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
$ apt-get source -qq --print-uris xz-utils=5.2.2-1.2
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.2.dsc' xz-utils_5.2.2-1.2.dsc 2550 SHA256:13c8d8d0c243af78dc89b6e2cd670c8d8a2522379e1fcd196957c95d988d5961
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA256:f341b1906ebcdde291dd619399ae944600edc9193619dd0c0110a5f05bfcc89e
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA256:2cc0575556e1331b3f468e6e7dca5969ce86efcc315d62672279b4e68b2e449f
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.2.debian.tar.xz' xz-utils_5.2.2-1.2.debian.tar.xz 108632 SHA256:231c08d5c2c4e5c8ef5d6d58cac91aaeb2e4fcddc35e1ed3c69d730a2375c948
```

Likely also available for browsing at:

- https://sources.debian.net/src/xz-utils/5.2.2-1.2/
- https://sources.debian.net/src/xz-utils/5.2.2-1.2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `zlib=1:1.2.8.dfsg-2`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-2+b3`
- `zlib1g-dev:amd64=1:1.2.8.dfsg-2+b3`

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
