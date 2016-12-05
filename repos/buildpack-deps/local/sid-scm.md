# `buildpack-deps:sid-scm`

## Docker Metadata

- Image ID: `sha256:37da78514a45b9cd6b7f2b828eff4672bfe33a231e311a714e86e9eac43c123b`
- Created: `2016-11-07T22:29:13.474793089Z`
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `base-files=9.6`

Binary Packages:

- `base-files=9.6`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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


### `dpkg` source package: `bzip2=1.0.6-8`

Binary Packages:

- `libbz2-1.0:amd64=1.0.6-8`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `ca-certificates=20161102`

Binary Packages:

- `ca-certificates=20161102`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `curl=7.51.0-1`

Binary Packages:

- `curl=7.51.0-1`
- `libcurl3-gnutls:amd64=7.51.0-1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `db5.3=5.3.28-12`

Binary Packages:

- `libdb5.3:amd64=5.3.28-12`

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

### `dpkg` source package: `dpkg=1.18.10`

Binary Packages:

- `dpkg=1.18.10`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `e2fsprogs=1.43.3-1`

Binary Packages:

- `e2fslibs:amd64=1.43.3-1`
- `e2fsprogs=1.43.3-1`
- `libcomerr2:amd64=1.43.3-1`
- `libss2:amd64=1.43.3-1`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

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

### `dpkg` source package: `findutils=4.6.0+git+20160703-2`

Binary Packages:

- `findutils=4.6.0+git+20160703-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

- `gcc-6-base:amd64=6.2.0-11`
- `libgcc1:amd64=1:6.2.0-11`
- `libstdc++6:amd64=6.2.0-11`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

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

### `dpkg` source package: `gdbm=1.8.3-14`

Binary Packages:

- `libgdbm3:amd64=1.8.3-14`

Licenses: (parsed from: `/usr/share/doc/libgdbm3/copyright`)

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


### `dpkg` source package: `glibc=2.24-5`

Binary Packages:

- `libc-bin=2.24-5`
- `libc6:amd64=2.24-5`
- `multiarch-support=2.24-5`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/multiarch-support/copyright`)

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

- `libicu57:amd64=57.1-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

- `libgssapi-krb5-2:amd64=1.15~beta1-1`
- `libk5crypto3:amd64=1.15~beta1-1`
- `libkrb5-3:amd64=1.15~beta1-1`
- `libkrb5support0:amd64=1.15~beta1-1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `libffi=3.2.1-6`

Binary Packages:

- `libffi6:amd64=3.2.1-6`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

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

### `dpkg` source package: `libpsl=0.14.0-1`

Binary Packages:

- `libpsl5:amd64=0.14.0-1+b1`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `lsb=9.20161101`

Binary Packages:

- `lsb-base=9.20161101`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `ncurses=6.0+20160917-1`

Binary Packages:

- `libncurses5:amd64=6.0+20160917-1`
- `libncursesw5:amd64=6.0+20160917-1`
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `pcre3=2:8.39-2`

Binary Packages:

- `libpcre3:amd64=2:8.39-2`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `readline=7.0-1`

Binary Packages:

- `libreadline7:amd64=7.0-1`
- `readline-common=7.0-1`

Licenses: (parsed from: `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `xz-utils=5.2.2-1.2`

Binary Packages:

- `liblzma5:amd64=5.2.2-1.2`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`)

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
