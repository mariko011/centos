# `buildpack-deps:sid-scm`

## Docker Metadata

- Image ID: `sha256:d4ac4f20097e3c31490daf04de1b41347db01eb4a0058a81ab4ca728fe19a8a7`
- Created: `2017-09-13T12:34:45.120496323Z`
- Virtual Size: ~ 276.82 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3`

Binary Packages:

- `libacl1:amd64=2.2.52-3+b1`

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

### `dpkg` source package: `adduser=3.116`

Binary Packages:

- `adduser=3.116`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.116
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.116.dsc' adduser_3.116.dsc 1740 SHA256:50e4154d3101101a890864185a09478c182155dc13f73dbb465c4279213bfafa
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.116.tar.xz' adduser_3.116.tar.xz 212012 SHA256:72d811ad3ba17d2794b14d19acd1d6b57f9dd31d9250d51e786895dee2daeac0
```

Likely also available for browsing at:

- https://sources.debian.net/src/adduser/3.116/
- https://sources.debian.net/src/adduser/3.116/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `apr-util=1.6.0-2`

Binary Packages:

- `libaprutil1:amd64=1.6.0-2`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.0-2
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.0-2.dsc' apr-util_1.6.0-2.dsc 2865 SHA256:cc129f4e615a3dbdb5aedfda9381cdedb99ced08178610728d09b3ac0e776986
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.0.orig.tar.bz2' apr-util_1.6.0.orig.tar.bz2 428750 SHA256:8474c93fa74b56ac6ca87449abe3e155723d5f534727f3f33283f6631a48ca4c
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.0.orig.tar.bz2.asc' apr-util_1.6.0.orig.tar.bz2.asc 859 SHA256:c89a3c69e82678ab28ca72d5c658a5556ed52dd092c11421649a08b048191086
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.0-2.debian.tar.xz' apr-util_1.6.0-2.debian.tar.xz 210800 SHA256:a8b2d0cee68374738434b09785c5344b16e2a6ad3cc4b1ef7f7e9f852e70c5e6
```

Likely also available for browsing at:

- https://sources.debian.net/src/apr-util/1.6.0-2/
- https://sources.debian.net/src/apr-util/1.6.0-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `apr=1.6.2-1`

Binary Packages:

- `libapr1:amd64=1.6.2-1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.2-1
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.2-1.dsc' apr_1.6.2-1.dsc 2316 SHA256:c7e14c7a36c02fc416586808637b6797f6e1c7a697abeda63db04989a101fcd2
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.2.orig.tar.bz2' apr_1.6.2.orig.tar.bz2 853363 SHA256:09109cea377bab0028bba19a92b5b0e89603df9eab05c0f7dbd4dd83d48dcebd
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.2.orig.tar.bz2.asc' apr_1.6.2.orig.tar.bz2.asc 801 SHA256:026e3086d6ebdd1fb5b0c82953447b4d1946fdf2a621d4e4a607be2f4131f27c
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.2-1.debian.tar.xz' apr_1.6.2-1.debian.tar.xz 212900 SHA256:d1fdfd94fce25be17e6bb84ef6ef694db5b7bad4be964b39b0195c9926dd0510
```

Likely also available for browsing at:

- https://sources.debian.net/src/apr/1.6.2-1/
- https://sources.debian.net/src/apr/1.6.2-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `apt=1.5~rc1`

Binary Packages:

- `apt=1.5~rc1`
- `libapt-pkg5.0:amd64=1.5~rc1`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `attr=1:2.4.47-2`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2+b2`

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

### `dpkg` source package: `audit=1:2.7.7-1`

Binary Packages:

- `libaudit-common=1:2.7.7-1`
- `libaudit1:amd64=1:2.7.7-1+b2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.7.7-1
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.7.7-1.dsc' audit_2.7.7-1.dsc 2485 SHA256:aa5701159bdbefdf93d536042449d53430e2f3455a1d68842a44446c156c151b
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.7.7.orig.tar.gz' audit_2.7.7.orig.tar.gz 1110512 SHA256:98e22549444c313187dc98c2e137f36a9882efa0874b559b0457e5f87ae178ef
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.7.7-1.debian.tar.xz' audit_2.7.7-1.debian.tar.xz 18684 SHA256:18056454f7252209b1d53063173952fa0c023e2ce5d96b197b137d3031cf9b36
```

Likely also available for browsing at:

- https://sources.debian.net/src/audit/1:2.7.7-1/
- https://sources.debian.net/src/audit/1:2.7.7-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `base-files=10`

Binary Packages:

- `base-files=10`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=10
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_10.dsc' base-files_10.dsc 1063 SHA256:9e0e1f9fa67c55c552e053c340327f2d6c366b882fab74197170b03caefac488
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_10.tar.xz' base-files_10.tar.xz 62872 SHA256:11a1f87511c26be242ad549b6d1262aed9c6a7eb2dd3a005d2e49bf41c445b83
```

Likely also available for browsing at:

- https://sources.debian.net/src/base-files/10/
- https://sources.debian.net/src/base-files/10/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `base-passwd=3.5.43`

Binary Packages:

- `base-passwd=3.5.43`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `bash=4.4-5`

Binary Packages:

- `bash=4.4-5`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4-5
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.4-5.dsc' bash_4.4-5.dsc 2251 SHA256:1605c608c48f3d866e23a3d6989d23c1d910d58b2a64eee13ad0efd2d98d4b06
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.4.orig.tar.xz' bash_4.4.orig.tar.xz 4878580 SHA256:819ebb6a23799e9e4ca56ac579778c46902005bd5ade4f131ed293d9f77108e7
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.4-5.debian.tar.xz' bash_4.4-5.debian.tar.xz 65640 SHA256:e01cc0f49941d81bee4e81f3eeefede280a91ad9365947234f29f1cb783f9dd8
```

Likely also available for browsing at:

- https://sources.debian.net/src/bash/4.4-5/
- https://sources.debian.net/src/bash/4.4-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `bzip2=1.0.6-8.1`

Binary Packages:

- `libbz2-1.0:amd64=1.0.6-8.1`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8.1
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-8.1.dsc' bzip2_1.0.6-8.1.dsc 2082 SHA256:d80deed11a1419ad090cb486dd2335850fd8719b809c32002dea04b485f55dbd
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-8.1.debian.tar.bz2' bzip2_1.0.6-8.1.debian.tar.bz2 59875 SHA256:bdbe7bf29e014e44d79bb7c733fe63cae990ab50882a4a07867cf69c61ad72b7
```

Likely also available for browsing at:

- https://sources.debian.net/src/bzip2/1.0.6-8.1/
- https://sources.debian.net/src/bzip2/1.0.6-8.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `ca-certificates=20170717`

Binary Packages:

- `ca-certificates=20170717`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20170717
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20170717.dsc' ca-certificates_20170717.dsc 1506 SHA256:da6268ff88e05c85c23c62add13d3d127087467d0c7e83974ca28db5543a252a
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20170717.tar.xz' ca-certificates_20170717.tar.xz 293028 SHA256:e487639b641fa75445174734dd6e9d600373e3248b3d86a7e3c6d0f6977decd2
```

Likely also available for browsing at:

- https://sources.debian.net/src/ca-certificates/20170717/
- https://sources.debian.net/src/ca-certificates/20170717/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cdebconf=0.229`

Binary Packages:

- `libdebconfclient0:amd64=0.229`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.229
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.229.dsc' cdebconf_0.229.dsc 2662 SHA256:05f558cb0f75dd7bfece8c7ea83fc7f8736feca255577b307a1eb99f1ef969db
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.229.tar.xz' cdebconf_0.229.tar.xz 274448 SHA256:79582d8b3231c8cc1a8daff4bc9168f3b222113221d98ebb064fcc45318e1949
```

Likely also available for browsing at:

- https://sources.debian.net/src/cdebconf/0.229/
- https://sources.debian.net/src/cdebconf/0.229/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `coreutils=8.26-3`

Binary Packages:

- `coreutils=8.26-3`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.26-3
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.26-3.dsc' coreutils_8.26-3.dsc 1955 SHA256:f62ab642e46e02c470cc045316643de530a0be50446151a5e449ca12da6485c4
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.26.orig.tar.xz' coreutils_8.26.orig.tar.xz 5810244 SHA256:155e94d748f8e2bc327c66e0cbebdb8d6ab265d2f37c3c928f7bf6c3beba9a8e
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.26-3.debian.tar.xz' coreutils_8.26-3.debian.tar.xz 22392 SHA256:cef6a15eb95d9e7bc992bca95010bc5ea9e25e98d8f4f668a698eee534d14b93
```

Likely also available for browsing at:

- https://sources.debian.net/src/coreutils/8.26-3/
- https://sources.debian.net/src/coreutils/8.26-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `curl=7.55.1-1`

Binary Packages:

- `curl=7.55.1-1`
- `libcurl3:amd64=7.55.1-1`
- `libcurl3-gnutls:amd64=7.55.1-1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.55.1-1
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.55.1-1.dsc' curl_7.55.1-1.dsc 2712 SHA256:dc8890b7c70c5d376f8f65c5aa96627ebf768511228fc513496175a87215da6d
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.55.1.orig.tar.gz' curl_7.55.1.orig.tar.gz 3736406 SHA256:09576ea5e66672648d83dce3af16d0cb294d4cba2b5d166ade39655c495f4a20
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.55.1-1.debian.tar.xz' curl_7.55.1-1.debian.tar.xz 28136 SHA256:7c9d3959512e3149661552ecb169f0a79b16cfbb00079563c4e718f68543a831
```

Likely also available for browsing at:

- https://sources.debian.net/src/curl/7.55.1-1/
- https://sources.debian.net/src/curl/7.55.1-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-3`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-3`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27~101-g0780600+dfsg-3
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-3.dsc' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3.dsc 3176 SHA256:abc0b2b0e8757195689821a724037c2017f8d06d63d357e1663d679226ef71d4
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz 1143888 SHA256:69f34971f768e7ee6a6b647ec2d16a5a72a854ecd4602b019d5f79ba61063fdc
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-3.debian.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3.debian.tar.xz 94664 SHA256:5094c002044588381e417c112f0f85d33242651f2739783b4dbd673321e7a386
```

Likely also available for browsing at:

- https://sources.debian.net/src/cyrus-sasl2/2.1.27~101-g0780600+dfsg-3/
- https://sources.debian.net/src/cyrus-sasl2/2.1.27~101-g0780600+dfsg-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `dash=0.5.8-2.5`

Binary Packages:

- `dash=0.5.8-2.5`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.5
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8-2.5.dsc' dash_0.5.8-2.5.dsc 1807 SHA256:42e77c37a5a4db1cc8274c3183d83e7173883cc611339815d92358562b74d066
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8-2.5.diff.gz' dash_0.5.8-2.5.diff.gz 44513 SHA256:53f55bbcb327b0e2dd687c44bf0610f5e304dd00733c81c101be46e0adf8ec89
```

Likely also available for browsing at:

- https://sources.debian.net/src/dash/0.5.8-2.5/
- https://sources.debian.net/src/dash/0.5.8-2.5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `db5.3=5.3.28-13.1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-13.1
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-13.1.dsc' db5.3_5.3.28-13.1.dsc 3124 SHA256:8941edcad8e16fe6bc76ffcbe86dbdaadc654b5ed994654689cf5408602a84f3
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-13.1.debian.tar.xz' db5.3_5.3.28-13.1.debian.tar.xz 28180 SHA256:9e04b9269be51de4e73536584addc61e19b29e34f769e263c180228064c72ec9
```

Likely also available for browsing at:

- https://sources.debian.net/src/db5.3/5.3.28-13.1/
- https://sources.debian.net/src/db5.3/5.3.28-13.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `debconf=1.5.63`

Binary Packages:

- `debconf=1.5.63`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.63
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.63.dsc' debconf_1.5.63.dsc 1937 SHA256:532d624315a3a6c62f3cafe90f12e4a185309b40350643be4861b64afe736555
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.63.tar.xz' debconf_1.5.63.tar.xz 571980 SHA256:e50033ced377f22162de2200f5a8a7854ab45bc89e6e9a7ffbfae7dd70265092
```

Likely also available for browsing at:

- https://sources.debian.net/src/debconf/1.5.63/
- https://sources.debian.net/src/debconf/1.5.63/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `debian-archive-keyring=2017.6`

Binary Packages:

- `debian-archive-keyring=2017.6`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2017.6
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.6.dsc' debian-archive-keyring_2017.6.dsc 1788 SHA256:366f7e854cc3686755e1988977fb276790beb581dd4bb2a0faac87a59ebef5b0
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.6.tar.xz' debian-archive-keyring_2017.6.tar.xz 79560 SHA256:d5b3a7ad4030324489fa783235d3c5cd98e47ecb24e23533cb419cc696d6f7be
```

Likely also available for browsing at:

- https://sources.debian.net/src/debian-archive-keyring/2017.6/
- https://sources.debian.net/src/debian-archive-keyring/2017.6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `debianutils=4.8.2`

Binary Packages:

- `debianutils=4.8.2`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.2
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.2.dsc' debianutils_4.8.2.dsc 1731 SHA256:175edfd4a94f20d34784b36c644cf8c23ee23686ebee6ad0c10c32b76e41c34f
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.2.tar.xz' debianutils_4.8.2.tar.xz 155944 SHA256:4deb5f293fd3e43c5d4a625a30b18d0fb07662ff77f769e3272841cdb61e7c68
```

Likely also available for browsing at:

- https://sources.debian.net/src/debianutils/4.8.2/
- https://sources.debian.net/src/debianutils/4.8.2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `diffutils=1:3.6-1`

Binary Packages:

- `diffutils=1:3.6-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.6-1
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.6-1.dsc' diffutils_3.6-1.dsc 1453 SHA256:26fe7690b45748dc92cee6af224192e78db2ac574e16ae0aeb8ed6a472c883cd
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.6.orig.tar.xz' diffutils_3.6.orig.tar.xz 1398296 SHA256:d621e8bdd4b573918c8145f7ae61817d1be9deb4c8d2328a65cea8e11d783bd6
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.6-1.debian.tar.xz' diffutils_3.6-1.debian.tar.xz 10808 SHA256:f6ab546a134bde18a87ca8e3c98919680e79d81a65a24801ae06ef69b33f24d8
```

Likely also available for browsing at:

- https://sources.debian.net/src/diffutils/1:3.6-1/
- https://sources.debian.net/src/diffutils/1:3.6-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `dpkg=1.18.24`

Binary Packages:

- `dpkg=1.18.24`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.18.24
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.18.24.dsc' dpkg_1.18.24.dsc 2032 SHA256:9f1560a0d237ec570f98f8aacfd1cbdd372371cce40e4c7ee4a31315b0c40823
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.18.24.tar.xz' dpkg_1.18.24.tar.xz 4530444 SHA256:d853081d3e06bfd46a227056e591f094e42e78fa8a5793b0093bad30b710d7b4
```

Likely also available for browsing at:

- https://sources.debian.net/src/dpkg/1.18.24/
- https://sources.debian.net/src/dpkg/1.18.24/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `e2fsprogs=1.43.6-1`

Binary Packages:

- `e2fslibs:amd64=1.43.6-1`
- `e2fsprogs=1.43.6-1`
- `libcomerr2:amd64=1.43.6-1`
- `libss2:amd64=1.43.6-1`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.43.6-1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.6-1.dsc' e2fsprogs_1.43.6-1.dsc 2305 SHA256:7397523f79b776a237fbc8ed124407d6fcf0c8b568b772b4d9dad5bec20cd705
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.6.orig.tar.gz' e2fsprogs_1.43.6.orig.tar.gz 7478011 SHA256:60139d75802925b0c23d451da8e4fc84c5e7cf94626cc324b59295495c0fdc80
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.6.orig.tar.gz.asc' e2fsprogs_1.43.6.orig.tar.gz.asc 488 SHA256:af46a31e5178dd86c324805552b6d003af4719932c3dc9d1b55ac99737e198fe
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.6-1.debian.tar.xz' e2fsprogs_1.43.6-1.debian.tar.xz 75236 SHA256:b29924813f322aaac5b1026e3d9594d5af153b56a1eefb827d0d25cf85ac9e17
```

Likely also available for browsing at:

- https://sources.debian.net/src/e2fsprogs/1.43.6-1/
- https://sources.debian.net/src/e2fsprogs/1.43.6-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `elfutils=0.168-1`

Binary Packages:

- `libelf1:amd64=0.168-1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `expat=2.2.3-1`

Binary Packages:

- `libexpat1:amd64=2.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.2.3-1
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.3-1.dsc' expat_2.2.3-1.dsc 2284 SHA256:c5f2c77f5b69361a38fbf9b2b3044cf823b6243d1029ca9e5754da2bd08f936d
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.3.orig.tar.bz2' expat_2.2.3.orig.tar.bz2 435593 SHA256:b31890fb02f85c002a67491923f89bda5028a880fd6c374f707193ad81aace5f
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.3-1.debian.tar.xz' expat_2.2.3-1.debian.tar.xz 10640 SHA256:885dda6baf300f15ef2c75f225d10736236056c7a9bf9405d1d3d138fbb7c63e
```

Likely also available for browsing at:

- https://sources.debian.net/src/expat/2.2.3-1/
- https://sources.debian.net/src/expat/2.2.3-1/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `findutils=4.6.0+git+20170729-2`

Binary Packages:

- `findutils=4.6.0+git+20170729-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20170729-2
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20170729-2.dsc' findutils_4.6.0+git+20170729-2.dsc 2220 SHA256:c59d5c89d6d5e794fd27cd2399d52d033629ae22a7551c1029aa8a779acaab56
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20170729.orig.tar.xz' findutils_4.6.0+git+20170729.orig.tar.xz 1865076 SHA256:a8be399ed28bca5042313dcaa8e6b90550b8da0d6497311fcdb3823259b5d7ac
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20170729-2.debian.tar.xz' findutils_4.6.0+git+20170729-2.debian.tar.xz 25572 SHA256:aa6d4a9f31870313a807d455bbc98030659ae69985d2e6893619e3997d01f022
```

Likely also available for browsing at:

- https://sources.debian.net/src/findutils/4.6.0+git+20170729-2/
- https://sources.debian.net/src/findutils/4.6.0+git+20170729-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gcc-5=5.4.1-12`

Binary Packages:

- `gcc-5-base:amd64=5.4.1-12`

Licenses: (parsed from: `/usr/share/doc/gcc-5-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-5=5.4.1-12
'http://deb.debian.org/debian/pool/main/g/gcc-5/gcc-5_5.4.1-12.dsc' gcc-5_5.4.1-12.dsc 17620 SHA256:9f951701db83bda0507ec7a19d8117a3dd3208bf59e67e175dde8f989eb4f164
'http://deb.debian.org/debian/pool/main/g/gcc-5/gcc-5_5.4.1.orig.tar.gz' gcc-5_5.4.1.orig.tar.gz 76812822 SHA256:2a84447f34cd062066d38300ac8a1fb528eb301a504b48e1d017e547e5abfcdb
'http://deb.debian.org/debian/pool/main/g/gcc-5/gcc-5_5.4.1-12.diff.gz' gcc-5_5.4.1-12.diff.gz 3702556 SHA256:abe96ea51c14e09de258f3d8c21a312f1e6090b4f19ef04f0b9074e76473a7e6
```

Likely also available for browsing at:

- https://sources.debian.net/src/gcc-5/5.4.1-12/
- https://sources.debian.net/src/gcc-5/5.4.1-12/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gcc-6=6.4.0-5`

Binary Packages:

- `gcc-6-base:amd64=6.4.0-5`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `gcc-7=7.2.0-4`

Binary Packages:

- `gcc-7-base:amd64=7.2.0-4`
- `libgcc1:amd64=1:7.2.0-4`
- `libstdc++6:amd64=7.2.0-4`

Licenses: (parsed from: `/usr/share/doc/gcc-7-base/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `git=1:2.14.1-3`

Binary Packages:

- `git=1:2.14.1-3`
- `git-man=1:2.14.1-3`

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

Source:

```console
$ apt-get source -qq --print-uris git=1:2.14.1-3
'http://deb.debian.org/debian/pool/main/g/git/git_2.14.1-3.dsc' git_2.14.1-3.dsc 2845 SHA256:012f442388c4dca441a67fa2aed5bebd885cb3227c1c84a5efcef63187d56be2
'http://deb.debian.org/debian/pool/main/g/git/git_2.14.1.orig.tar.xz' git_2.14.1.orig.tar.xz 4791876 SHA256:6f724c6d0e9e13114ab35db6f67e1b2c1934b641e89366e6a0e37618231f2cc6
'http://deb.debian.org/debian/pool/main/g/git/git_2.14.1-3.debian.tar.xz' git_2.14.1-3.debian.tar.xz 544476 SHA256:33a82a1eae762a0a0723d2a39745307b834960de76bd0d87360dd65aa9e4f06d
```

Likely also available for browsing at:

- https://sources.debian.net/src/git/1:2.14.1-3/
- https://sources.debian.net/src/git/1:2.14.1-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `glibc=2.24-17`

Binary Packages:

- `libc-bin=2.24-17`
- `libc6:amd64=2.24-17`
- `multiarch-support=2.24-17`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.24-17
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-17.dsc' glibc_2.24-17.dsc 8226 SHA256:8f8db58051f431525439dae692242124befba9cfab64b406ec8964818ba46a43
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24.orig.tar.xz' glibc_2.24.orig.tar.xz 13921912 SHA256:ed71e8afd2b270f7947a2cea2457a31e1ca4fac08e2731d80edd7ec1730ec84f
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-17.debian.tar.xz' glibc_2.24-17.debian.tar.xz 1036004 SHA256:a66991c3d29bb30e57ef8eaeb1732b3694689cb8d4eb999ccb018076a02c5940
```

Likely also available for browsing at:

- https://sources.debian.net/src/glibc/2.24-17/
- https://sources.debian.net/src/glibc/2.24-17/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gmp=2:6.1.2+dfsg-1`

Binary Packages:

- `libgmp10:amd64=2:6.1.2+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.2+dfsg-1
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-1.dsc' gmp_6.1.2+dfsg-1.dsc 2183 SHA256:3a53f6c74c9b2465c1c61446aa9bdc6182fdec8b04075849d4cbf224a73b6fbe
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-1.debian.tar.xz' gmp_6.1.2+dfsg-1.debian.tar.xz 20652 SHA256:79e73f74197e7628b2f0c02edf01b6eea3716c13152044ed8e0e0ee4178394df
```

Likely also available for browsing at:

- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-1/
- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gnupg2=2.2.0-3`

Binary Packages:

- `dirmngr=2.2.0-3`
- `gnupg=2.2.0-3`
- `gnupg-l10n=2.2.0-3`
- `gnupg-utils=2.2.0-3`
- `gnupg2=2.2.0-3`
- `gpg=2.2.0-3`
- `gpg-agent=2.2.0-3`
- `gpg-wks-client=2.2.0-3`
- `gpg-wks-server=2.2.0-3`
- `gpgconf=2.2.0-3`
- `gpgsm=2.2.0-3`
- `gpgv=2.2.0-3`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gnupg2/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `RFC-Reference`
- `TinySCHEME`
- `permissive`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `gnutls28=3.5.15-2`

Binary Packages:

- `libgnutls30:amd64=3.5.15-2`

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

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.5.15-2
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.15-2.dsc' gnutls28_3.5.15-2.dsc 3322 SHA256:16712db8bb067d802958d462274fcc87dcaece8ea4ab5a3d6fd182520fbc4272
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.15.orig.tar.xz' gnutls28_3.5.15.orig.tar.xz 7238928 SHA256:046081108b8b1fe455a13a4c5a4eaa0368e185b678f1670fe09a11a2d7ecfad5
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.15.orig.tar.xz.asc' gnutls28_3.5.15.orig.tar.xz.asc 310 SHA256:8e19becd65224aefc70a0ea15df7369ed9588f9d692cc5cd790a72b541a48de2
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.15-2.debian.tar.xz' gnutls28_3.5.15-2.debian.tar.xz 100840 SHA256:b470739833727c0f4f58c14b598c4e3ad56384e4fbb271a10106418c9a44143e
```

Likely also available for browsing at:

- https://sources.debian.net/src/gnutls28/3.5.15-2/
- https://sources.debian.net/src/gnutls28/3.5.15-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `grep=3.1-2`

Binary Packages:

- `grep=3.1-2`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.1-2
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.1-2.dsc' grep_3.1-2.dsc 2046 SHA256:b75ef8eb1399a49274bafe972679680b7add1500a4ee82eedaa0372f8ed744a0
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.1.orig.tar.xz' grep_3.1.orig.tar.xz 1370880 SHA256:db625c7ab3bb3ee757b3926a5cfa8d9e1c3991ad24707a83dde8a5ef2bf7a07e
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.1-2.debian.tar.bz2' grep_3.1-2.debian.tar.bz2 110067 SHA256:f09ce7a3c860a5de8939ebceb5fcd85d00d1537ad9f998dae5f623d9bcfe4e40
```

Likely also available for browsing at:

- https://sources.debian.net/src/grep/3.1-2/
- https://sources.debian.net/src/grep/3.1-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gzip=1.6-5`

Binary Packages:

- `gzip=1.6-5+b1`

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

- `hostname=3.18+b1`

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

### `dpkg` source package: `init-system-helpers=1.49`

Binary Packages:

- `init-system-helpers=1.49`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.49
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.49.dsc' init-system-helpers_1.49.dsc 1945 SHA256:c051912f7585c7638efe621d4714f1daff25c4134b0b8806b8b67bfdf9b98a14
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.49.tar.xz' init-system-helpers_1.49.tar.xz 42660 SHA256:845ed218f1cb54d5b10ea850620e5b6b3905fb248163f97ad4670a55100cedae
```

Likely also available for browsing at:

- https://sources.debian.net/src/init-system-helpers/1.49/
- https://sources.debian.net/src/init-system-helpers/1.49/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `iproute2=4.9.0-1`

Binary Packages:

- `iproute2=4.9.0-1`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `krb5=1.15.1-2`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.15.1-2`
- `libk5crypto3:amd64=1.15.1-2`
- `libkrb5-3:amd64=1.15.1-2`
- `libkrb5support0:amd64=1.15.1-2`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.15.1-2
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.15.1-2.dsc' krb5_1.15.1-2.dsc 3294 SHA256:717416ea51edbfd2555568631e700c15cce1244f730a97d317288ab0be20d43a
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.15.1.orig.tar.gz' krb5_1.15.1.orig.tar.gz 9375538 SHA256:437c8831ddd5fde2a993fef425dedb48468109bb3d3261ef838295045a89eb45
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.15.1-2.debian.tar.xz' krb5_1.15.1-2.debian.tar.xz 143404 SHA256:e44c17efbf26e5d2a3de7577a039085683efe21afb0da3eacc12c17dc01e9d1a
```

Likely also available for browsing at:

- https://sources.debian.net/src/krb5/1.15.1-2/
- https://sources.debian.net/src/krb5/1.15.1-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libassuan=2.4.3-3`

Binary Packages:

- `libassuan0:amd64=2.4.3-3`

Licenses: (parsed from: `/usr/share/doc/libassuan0/copyright`)

- `GAP`
- `GAP~FSF`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with libtool exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libassuan=2.4.3-3
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.4.3-3.dsc' libassuan_2.4.3-3.dsc 2234 SHA256:057a5a131e60fe96a88a0246a776c75632df07d13211eb58031b452a30a5910a
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.4.3.orig.tar.bz2' libassuan_2.4.3.orig.tar.bz2 559867 SHA256:22843a3bdb256f59be49842abf24da76700354293a066d82ade8134bb5aa2b71
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.4.3-3.debian.tar.xz' libassuan_2.4.3-3.debian.tar.xz 15040 SHA256:c3e98d63cb6cd3fe524292da3aa250c17fd09692eef81e13db826a54e7e4dd27
```

Likely also available for browsing at:

- https://sources.debian.net/src/libassuan/2.4.3-3/
- https://sources.debian.net/src/libassuan/2.4.3-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libbsd=0.8.6-2`

Binary Packages:

- `libbsd0:amd64=0.8.6-2`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-John-Birrell`
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
$ apt-get source -qq --print-uris libbsd=0.8.6-2
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.6-2.dsc' libbsd_0.8.6-2.dsc 2181 SHA256:8adbd1e8bd9e36248be2530eb2ceb4ed0ebd6d16ad108f9620483a1f9b6ed055
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.6.orig.tar.xz' libbsd_0.8.6.orig.tar.xz 371112 SHA256:467fbf9df1f49af11f7f686691057c8c0a7613ae5a870577bef9155de39f9687
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.6.orig.tar.xz.asc' libbsd_0.8.6.orig.tar.xz.asc 833 SHA256:8b579470e8249b2ad24134989cc77404e3620e8ccda3d57650cfbcc7c50c26ce
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.6-2.debian.tar.xz' libbsd_0.8.6-2.debian.tar.xz 15684 SHA256:3ba08d93c36002737c4707b2dfdc13118d302487a53f1789d8ee22ed7107c491
```

Likely also available for browsing at:

- https://sources.debian.net/src/libbsd/0.8.6-2/
- https://sources.debian.net/src/libbsd/0.8.6-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libcap-ng=0.7.7-3`

Binary Packages:

- `libcap-ng0:amd64=0.7.7-3+b1`

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

### `dpkg` source package: `libedit=3.1-20170329-1`

Binary Packages:

- `libedit2:amd64=3.1-20170329-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20170329-1
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20170329-1.dsc' libedit_3.1-20170329-1.dsc 2269 SHA256:1e657cfcfbbe5c550b844f17cfeb1d8591136fa57300e6cff2b56e5a3e25ad3f
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20170329.orig.tar.gz' libedit_3.1-20170329.orig.tar.gz 508504 SHA256:91f2d90fbd2a048ff6dad7131d9a39e690fd8a8fd982a353f1333dd4017dd4be
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20170329-1.debian.tar.bz2' libedit_3.1-20170329-1.debian.tar.bz2 11267 SHA256:7dd7a23b07b082d058b7fb741d3b750b80699472e7c8efd1935a9e7c59a49a39
```

Likely also available for browsing at:

- https://sources.debian.net/src/libedit/3.1-20170329-1/
- https://sources.debian.net/src/libedit/3.1-20170329-1/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `libgcrypt20=1.7.9-1`

Binary Packages:

- `libgcrypt20:amd64=1.7.9-1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.7.9-1
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.9-1.dsc' libgcrypt20_1.7.9-1.dsc 2914 SHA256:d922d12b25a64cd25601b34380bed9c9ca3c8fd4c9625951641fcc8766c7796d
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.9.orig.tar.bz2' libgcrypt20_1.7.9.orig.tar.bz2 2897137 SHA256:bfe9bb703c1126c3647da2810fd23039c2f09d46969f71612c2065dc3fa9373b
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.9.orig.tar.bz2.asc' libgcrypt20_1.7.9.orig.tar.bz2.asc 310 SHA256:96108d1701cd3c8a6826d7d2a27056de79421fe20bf9ef447e8c12e982f64414
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.9-1.debian.tar.xz' libgcrypt20_1.7.9-1.debian.tar.xz 26020 SHA256:1a0775f8e8921aa537db92c06cca82780cb24adf04775e2f944a23d867414d55
```

Likely also available for browsing at:

- https://sources.debian.net/src/libgcrypt20/1.7.9-1/
- https://sources.debian.net/src/libgcrypt20/1.7.9-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libgpg-error=1.27-3`

Binary Packages:

- `libgpg-error0:amd64=1.27-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.27-3
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.27-3.dsc' libgpg-error_1.27-3.dsc 2377 SHA256:427eba727e5ff13b1f29493edc281cfa811aabe4c0d0f07f747ab11bc8e9574f
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.27.orig.tar.bz2' libgpg-error_1.27.orig.tar.bz2 813060 SHA256:4f93aac6fecb7da2b92871bb9ee33032be6a87b174f54abf8ddf0911a22d29d2
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.27-3.debian.tar.xz' libgpg-error_1.27-3.debian.tar.xz 15856 SHA256:c1a17ea7066c955be7f7117efdd0961cd43f3fd81152854e53a60cb08fba0a10
```

Likely also available for browsing at:

- https://sources.debian.net/src/libgpg-error/1.27-3/
- https://sources.debian.net/src/libgpg-error/1.27-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libidn2-0=2.0.2-3`

Binary Packages:

- `libidn2-0:amd64=2.0.2-3`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`)

- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-3+`
- `Unicode`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libksba=1.3.5-2`

Binary Packages:

- `libksba8:amd64=1.3.5-2`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.3.5-2
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.3.5-2.dsc' libksba_1.3.5-2.dsc 2526 SHA256:4fd08fd129f97ab1df86c220b88b7b2c6e4e04aa90bfd3ae364d18022256bef8
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.3.5.orig.tar.bz2' libksba_1.3.5.orig.tar.bz2 620649 SHA256:41444fd7a6ff73a79ad9728f985e71c9ba8cd3e5e53358e70d5f066d35c1a340
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.3.5.orig.tar.bz2.asc' libksba_1.3.5.orig.tar.bz2.asc 287 SHA256:a954b03144ee882c838853da24fd7b6868b78df72a18c71079217d968698a76f
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.3.5-2.debian.tar.xz' libksba_1.3.5-2.debian.tar.xz 13852 SHA256:98c985bff973be1aecc702fa15887ff1e5b8de481d1dc3e99423a587754eaabd
```

Likely also available for browsing at:

- https://sources.debian.net/src/libksba/1.3.5-2/
- https://sources.debian.net/src/libksba/1.3.5-2/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `libpsl=0.18.0-4`

Binary Packages:

- `libpsl5:amd64=0.18.0-4`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.18.0-4
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.18.0-4.dsc' libpsl_0.18.0-4.dsc 2190 SHA256:b62d3ad4472795fa8a81fcdc938aae7e8fa542835873c730463b280931abae75
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.18.0.orig.tar.gz' libpsl_0.18.0.orig.tar.gz 10330130 SHA256:29d76f49fe58f36a23d8eeb863e545767ab6ebbddb3356fc63af9728739edb3f
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.18.0-4.debian.tar.xz' libpsl_0.18.0-4.debian.tar.xz 9240 SHA256:d46f48e6b9ed75702b13d1e8d9c39c0898f8f76c956e430a71ee4fbecff09138
```

Likely also available for browsing at:

- https://sources.debian.net/src/libpsl/0.18.0-4/
- https://sources.debian.net/src/libpsl/0.18.0-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libselinux=2.6-3`

Binary Packages:

- `libselinux1:amd64=2.6-3+b2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.6-3
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.6-3.dsc' libselinux_2.6-3.dsc 2217 SHA256:91bb53feba8031bfc7b0110fc4e0e1dae4a8e2906f4a524f83252a95ae0e639c
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.6.orig.tar.gz' libselinux_2.6.orig.tar.gz 203119 SHA256:4ea2dde50665c202253ba5caac7738370ea0337c47b251ba981c60d24e1a118a
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.6-3.debian.tar.xz' libselinux_2.6-3.debian.tar.xz 24396 SHA256:5a06841565e7907bc0dae9f8ed5940d040316192bd9662df59c79af7c212a171
```

Likely also available for browsing at:

- https://sources.debian.net/src/libselinux/2.6-3/
- https://sources.debian.net/src/libselinux/2.6-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libsemanage=2.6-2`

Binary Packages:

- `libsemanage-common=2.6-2`
- `libsemanage1:amd64=2.6-2+b1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libsepol=2.6-2`

Binary Packages:

- `libsepol1:amd64=2.6-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libssh2=1.8.0-1`

Binary Packages:

- `libssh2-1:amd64=1.8.0-1`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD3`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.8.0-1
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0-1.dsc' libssh2_1.8.0-1.dsc 1860 SHA256:14837d645e77d08fbf00333dee60129be3aeb40c956294cb7bd0b79f456a3fb0
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0.orig.tar.gz' libssh2_1.8.0.orig.tar.gz 846989 SHA256:4382d33de790b28f862e53ed59ffbd65f3def7a06e8b6e9ca1b6f70453b4d5e0
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0-1.debian.tar.xz' libssh2_1.8.0-1.debian.tar.xz 7320 SHA256:79a68889d8102922b92b1757b1d5993cb70faa9a259aca21c2db2e5e55d30b62
```

Likely also available for browsing at:

- https://sources.debian.net/src/libssh2/1.8.0-1/
- https://sources.debian.net/src/libssh2/1.8.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libtasn1-6=4.12-2.1`

Binary Packages:

- `libtasn1-6:amd64=4.12-2.1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.12-2.1
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.12-2.1.dsc' libtasn1-6_4.12-2.1.dsc 2586 SHA256:0f762f07bbb39e9a49687e8bd7a18a5d3cc435d6c226eaecfcda7a8d325c2cef
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.12.orig.tar.gz' libtasn1-6_4.12.orig.tar.gz 1888450 SHA256:6753da2e621257f33f5b051cc114d417e5206a0818fe0b1ecfd6153f70934753
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.12-2.1.debian.tar.xz' libtasn1-6_4.12-2.1.debian.tar.xz 58728 SHA256:df32c448a8472eff20fa6989f939cbc0e2caf0d4bb712e54b31b39bbd6d8b781
```

Likely also available for browsing at:

- https://sources.debian.net/src/libtasn1-6/4.12-2.1/
- https://sources.debian.net/src/libtasn1-6/4.12-2.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libunistring=0.9.7-2`

Binary Packages:

- `libunistring2:amd64=0.9.7-2`

Licenses: (parsed from: `/usr/share/doc/libunistring2/copyright`)

- `FreeSoftware`
- `GFDL-1.2`
- `GFDL-1.2+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with distribution exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libunistring=0.9.7-2
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.7-2.dsc' libunistring_0.9.7-2.dsc 1985 SHA256:2ac1f77b0fc421eadcbfbe1e2e022137f31404f4874f6ff326ed8644f8ca18c8
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.7.orig.tar.xz' libunistring_0.9.7.orig.tar.xz 1967300 SHA256:2e3764512aaf2ce598af5a38818c0ea23dedf1ff5460070d1b6cee5c3336e797
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.7-2.debian.tar.xz' libunistring_0.9.7-2.debian.tar.xz 39776 SHA256:6eaa5343ae3c40627a35fc8ac85a07c0da8236c8aa49205be7e51139f278c95c
```

Likely also available for browsing at:

- https://sources.debian.net/src/libunistring/0.9.7-2/
- https://sources.debian.net/src/libunistring/0.9.7-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `lsb=9.20170808`

Binary Packages:

- `lsb-base=9.20170808`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20170808
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_9.20170808.dsc' lsb_9.20170808.dsc 1597 SHA256:d767e622530f73df4f041f7bace54412a6da3d66ddcc73df7913cdebdbf258a9
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_9.20170808.tar.xz' lsb_9.20170808.tar.xz 42120 SHA256:ec9cb022cedcdf34c5b8dc2dca530777ce3f491ad364222557691e87807729b1
```

Likely also available for browsing at:

- https://sources.debian.net/src/lsb/9.20170808/
- https://sources.debian.net/src/lsb/9.20170808/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `lz4=0.0~r131-2`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2+b1`

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

- `mawk=1.3.3-17+b3`

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

### `dpkg` source package: `mercurial=4.3.1-3`

Binary Packages:

- `mercurial=4.3.1-3`
- `mercurial-common=4.3.1-3`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=4.3.1-3
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.3.1-3.dsc' mercurial_4.3.1-3.dsc 2225 SHA256:26d0e605823e9c7abc5cb34c9e9af6f28f4021d4eb8440a0bd5501cd55e3bf1c
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.3.1.orig.tar.gz' mercurial_4.3.1.orig.tar.gz 5475042 SHA256:2b12f02e3a452adff4ec9cf007017bab0cadb3f37eaf12f4b25a662df73618a2
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.3.1-3.debian.tar.xz' mercurial_4.3.1-3.debian.tar.xz 54916 SHA256:196363132773e9f32766c99a4abb1844b0e216093df84044aac341f735d6559c
```

Likely also available for browsing at:

- https://sources.debian.net/src/mercurial/4.3.1-3/
- https://sources.debian.net/src/mercurial/4.3.1-3/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `ncurses=6.0+20170902-1`

Binary Packages:

- `libncurses5:amd64=6.0+20170902-1`
- `libncursesw5:amd64=6.0+20170902-1`
- `libtinfo5:amd64=6.0+20170902-1`
- `ncurses-base=6.0+20170902-1`
- `ncurses-bin=6.0+20170902-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20170902-1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20170902-1.dsc' ncurses_6.0+20170902-1.dsc 4021 SHA256:6d57899b77e12869ef69d953c7b0af978a46091899401196cd2437c5825d27f4
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20170902.orig.tar.gz' ncurses_6.0+20170902.orig.tar.gz 3322744 SHA256:2437043fe3bb6a0deebe758a9744ee8e9d2e0b272ae2cb0d978804f2f5237ab2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20170902.orig.tar.gz.asc' ncurses_6.0+20170902.orig.tar.gz.asc 267 SHA256:10a8ea1bca1f94f7c0a95b2789352a4d279802065400d7a680591100ab75469c
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20170902-1.debian.tar.xz' ncurses_6.0+20170902-1.debian.tar.xz 53496 SHA256:b8bd83ec458ab21bb038addc846297206ad9f636e3a8eb7cbab5c5879071dcb2
```

Likely also available for browsing at:

- https://sources.debian.net/src/ncurses/6.0+20170902-1/
- https://sources.debian.net/src/ncurses/6.0+20170902-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `netbase=5.4`

Binary Packages:

- `netbase=5.4`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=5.4
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.4.dsc' netbase_5.4.dsc 1326 SHA256:ebe29d45e65b661d64636cbce3840997d8079cf338efbfa347b4c73ed2831b7b
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.4.tar.xz' netbase_5.4.tar.xz 31524 SHA256:66ff73d2d162e2d49db43988d8b8cd328cf7fffca042db73397f14c71825e80d
```

Likely also available for browsing at:

- https://sources.debian.net/src/netbase/5.4/
- https://sources.debian.net/src/netbase/5.4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `nettle=3.3-1`

Binary Packages:

- `libhogweed4:amd64=3.3-1+b1`
- `libnettle6:amd64=3.3-1+b1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `nghttp2=1.25.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.25.0-1`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `SIL-OFL-1.1`
- `all-permissive`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `npth=1.5-2`

Binary Packages:

- `libnpth0:amd64=1.5-2`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.5-2
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.5-2.dsc' npth_1.5-2.dsc 1949 SHA256:6f4e78f1ccb9ef5f062f973f937ea27e36e168a41c7b5c0d65d4775b0daf676f
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.5.orig.tar.bz2' npth_1.5.orig.tar.bz2 299308 SHA256:294a690c1f537b92ed829d867bee537e46be93fbd60b16c04630fbbfcd9db3c2
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.5-2.debian.tar.xz' npth_1.5-2.debian.tar.xz 10416 SHA256:c1140dacd332ca38dcc4ae6f0cb69baab25474fd58370a6432f55c2d52bf1e6d
```

Likely also available for browsing at:

- https://sources.debian.net/src/npth/1.5-2/
- https://sources.debian.net/src/npth/1.5-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openldap=2.4.45+dfsg-1`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.45+dfsg-1`
- `libldap-common=2.4.45+dfsg-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.45+dfsg-1
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.45+dfsg-1.dsc' openldap_2.4.45+dfsg-1.dsc 2769 SHA256:a9544b9d02dec7eb101b0eb4a71d9feaa402c9f3e12ab2398c6408c84bd93212
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.45+dfsg.orig.tar.gz' openldap_2.4.45+dfsg.orig.tar.gz 4846458 SHA256:d51c70423aa0554d454fd3d43e7f2e940523b4ef07979305b48c233ae44b2b32
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.45+dfsg-1.debian.tar.xz' openldap_2.4.45+dfsg-1.debian.tar.xz 162956 SHA256:7edec92185c74081a1fcbe934ccba951fb4a43075061aac40168a489f7989f5e
```

Likely also available for browsing at:

- https://sources.debian.net/src/openldap/2.4.45+dfsg-1/
- https://sources.debian.net/src/openldap/2.4.45+dfsg-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openssh=1:7.5p1-10`

Binary Packages:

- `openssh-client=1:7.5p1-10`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Beer-ware`
- `CORE-SDI-BSD-style`
- `Expat-with-advertising-restriction`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openssh=1:7.5p1-10
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.5p1-10.dsc' openssh_7.5p1-10.dsc 2856 SHA256:b4782d7383b5dd7e23a71a28065fd15e6b8aa8cd052f8f45d0078f053efa81be
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.5p1.orig.tar.gz' openssh_7.5p1.orig.tar.gz 1510857 SHA256:9846e3c5fab9f0547400b4d2c017992f914222b3fd1f8eee6c7dc6bc5e59f9f0
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.5p1-10.debian.tar.xz' openssh_7.5p1-10.debian.tar.xz 159252 SHA256:2eda9f24b25b306cae15a8080018ee4f06679e98e2574725459be0d7e0c7db53
```

Likely also available for browsing at:

- https://sources.debian.net/src/openssh/1:7.5p1-10/
- https://sources.debian.net/src/openssh/1:7.5p1-10/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openssl1.0=1.0.2l-2`

Binary Packages:

- `libssl1.0.2:amd64=1.0.2l-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl1.0=1.0.2l-2
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2l-2.dsc' openssl1.0_1.0.2l-2.dsc 2529 SHA256:51aa8afa8157b209a647f5476e72ba06720c33b8f6e46be79e91a0dc9349efcf
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2l.orig.tar.gz' openssl1.0_1.0.2l.orig.tar.gz 5365054 SHA256:ce07195b659e75f4e1db43552860070061f156a98bb37b672b101ba6e3ddf30c
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2l.orig.tar.gz.asc' openssl1.0_1.0.2l.orig.tar.gz.asc 455 SHA256:ad459d4de6c30c1889272e38144598847c8ba8e5f0892797543607e8d6d9be5f
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2l-2.debian.tar.xz' openssl1.0_1.0.2l-2.debian.tar.xz 75888 SHA256:8e0dc8d55df49bf85cc8a991774fbdf4186886307acc167054355edd7c77ed1e
```

Likely also available for browsing at:

- https://sources.debian.net/src/openssl1.0/1.0.2l-2/
- https://sources.debian.net/src/openssl1.0/1.0.2l-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openssl=1.1.0f-5`

Binary Packages:

- `libssl1.1:amd64=1.1.0f-5`
- `openssl=1.1.0f-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.0f-5
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0f-5.dsc' openssl_1.1.0f-5.dsc 2583 SHA256:44c38165dc9c99d069bb19c510d58778bb79e0530d5967cb74c556999f0b4b7e
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0f.orig.tar.gz' openssl_1.1.0f.orig.tar.gz 5278176 SHA256:12f746f3f2493b2f39da7ecf63d7ee19c6ac9ec6a4fcd8c229da8a522cb12765
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0f.orig.tar.gz.asc' openssl_1.1.0f.orig.tar.gz.asc 455 SHA256:9f2feb0494ebcc1cf152d95a11bc966cb94bc1957d88650285db3966866801b0
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0f-5.debian.tar.xz' openssl_1.1.0f-5.debian.tar.xz 59536 SHA256:7ae7fc632d259f1e4ed5e2475847d31db18d9bc6b96a6a3405a77cff7020b97e
```

Likely also available for browsing at:

- https://sources.debian.net/src/openssl/1.1.0f-5/
- https://sources.debian.net/src/openssl/1.1.0f-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `p11-kit=0.23.7-3`

Binary Packages:

- `libp11-kit0:amd64=0.23.7-3`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.7-3
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.7-3.dsc' p11-kit_0.23.7-3.dsc 2452 SHA256:ce5611bfa9891673edcb5b4ee369da586b2cee214061dff492dc5f6a8fff6092
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.7.orig.tar.gz' p11-kit_0.23.7.orig.tar.gz 1087009 SHA256:988e7c86f2641b36702503481292ef0686e6b1c39d80b215699b6dbf1024be41
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.7.orig.tar.gz.asc' p11-kit_0.23.7.orig.tar.gz.asc 543 SHA256:7156998e36be4e12e2375518d76a1b1fdf46acbae10dd6bb098c1bd902f0cdad
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.7-3.debian.tar.xz' p11-kit_0.23.7-3.debian.tar.xz 21772 SHA256:8dc0b106a69842cc734f8f3c9a1ad6312cd5d1cd318b696cdc76e6ca0c3108b5
```

Likely also available for browsing at:

- https://sources.debian.net/src/p11-kit/0.23.7-3/
- https://sources.debian.net/src/p11-kit/0.23.7-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pam=1.1.8-3.6`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.6`
- `libpam-modules-bin=1.1.8-3.6`
- `libpam-runtime=1.1.8-3.6`
- `libpam0g:amd64=1.1.8-3.6`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.6
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.6.dsc' pam_1.1.8-3.6.dsc 2572 SHA256:7bd7a3059c6ea5b97f5ce0460cbe20788f21bc59bd31ef5a28d7968f53373f5f
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.6.diff.gz' pam_1.1.8-3.6.diff.gz 139492 SHA256:beba99299941c5648ff412d75ebd3407e4d769f5e5ab1fce6a5f2e58c40341ae
```

Likely also available for browsing at:

- https://sources.debian.net/src/pam/1.1.8-3.6/
- https://sources.debian.net/src/pam/1.1.8-3.6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pcre2=10.22-3`

Binary Packages:

- `libpcre2-8-0:amd64=10.22-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.22-3
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.22-3.dsc' pcre2_10.22-3.dsc 2041 SHA256:c4458656524614e1bbe2992c5452c04eb971c22a2b27e64d64e1034ddcc2562b
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.22.orig.tar.gz' pcre2_10.22.orig.tar.gz 1985688 SHA256:e44d8a6f31bb33cce01ed43743f464290f1d96f60b5fd838786e632d3624a7bd
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.22-3.diff.gz' pcre2_10.22-3.diff.gz 4857 SHA256:d48a0afdd9e84aad0fcf2dc0d5e4a66fb2872cce565519371c4882235aad76de
```

Likely also available for browsing at:

- https://sources.debian.net/src/pcre2/10.22-3/
- https://sources.debian.net/src/pcre2/10.22-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pcre3=2:8.39-4`

Binary Packages:

- `libpcre3:amd64=2:8.39-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-4
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-4.dsc' pcre3_8.39-4.dsc 2224 SHA256:d79722717c869fce3343423d479e3cc0dfe5a31e392f9946a7054a11d395a544
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-4.debian.tar.gz' pcre3_8.39-4.debian.tar.gz 25456 SHA256:4b1f803c48e0d09bd4d8740c267ded7896afeb3a7ba0fc24326caf51044cf768
```

Likely also available for browsing at:

- https://sources.debian.net/src/pcre3/2:8.39-4/
- https://sources.debian.net/src/pcre3/2:8.39-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `perl=5.26.0-8`

Binary Packages:

- `libperl5.26:amd64=5.26.0-8`
- `perl=5.26.0-8`
- `perl-base=5.26.0-8`
- `perl-modules-5.26=5.26.0-8`

Licenses: (parsed from: `/usr/share/doc/libperl5.26/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.26/copyright`)

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
$ apt-get source -qq --print-uris perl=5.26.0-8
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.0-8.dsc' perl_5.26.0-8.dsc 2369 SHA256:14287efb9981734a2e15c3508b91e1fd3ca1342e9fc6f49c37ed00acd757aece
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.0.orig.tar.xz' perl_5.26.0.orig.tar.xz 11961692 SHA256:9bf2e3d0d72aad77865c3bdbc20d3b576d769c5c255c4ceb30fdb9335266bf55
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.0-8.debian.tar.xz' perl_5.26.0-8.debian.tar.xz 159896 SHA256:e6c7f4b6a5790f5909c007d3efe4dcb1f6c6b41da95e4f7ea74748bfb7e198d1
```

Likely also available for browsing at:

- https://sources.debian.net/src/perl/5.26.0-8/
- https://sources.debian.net/src/perl/5.26.0-8/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pinentry=1.0.0-2`

Binary Packages:

- `pinentry-curses=1.0.0-2`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.0.0-2
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.0.0-2.dsc' pinentry_1.0.0-2.dsc 2591 SHA256:01349d75a92435037a4f4ad252a42cabe7bef774cb8ac6e8c6e24a4107f06e13
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.0.0.orig.tar.bz2' pinentry_1.0.0.orig.tar.bz2 436930 SHA256:1672c2edc1feb036075b187c0773787b2afd0544f55025c645a71b4c2f79275a
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.0.0-2.debian.tar.xz' pinentry_1.0.0-2.debian.tar.xz 16672 SHA256:85e0b03d74a64a08b51f6ffac58a1a07a42499615aa993f367675ef12d0b47fb
```

Likely also available for browsing at:

- https://sources.debian.net/src/pinentry/1.0.0-2/
- https://sources.debian.net/src/pinentry/1.0.0-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `procps=2:3.3.12-3`

Binary Packages:

- `libprocps6:amd64=2:3.3.12-3`
- `procps=2:3.3.12-3`

Licenses: (parsed from: `/usr/share/doc/libprocps6/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.12-3
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.12-3.dsc' procps_3.3.12-3.dsc 2118 SHA256:5bff9bf045fb88118e5fe69df1ed1d092c49b258ebae5368222a16900288f12e
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.12.orig.tar.xz' procps_3.3.12.orig.tar.xz 840540 SHA256:042fcc93e1850aee4c193c51c03f369293fb64fe47e37b38852be6693d12a3af
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.12-3.debian.tar.xz' procps_3.3.12-3.debian.tar.xz 27260 SHA256:5907253fba4f11755b60d7d47ffd8212564d7e2c692dcfffc951e4026c465f9e
```

Likely also available for browsing at:

- https://sources.debian.net/src/procps/2:3.3.12-3/
- https://sources.debian.net/src/procps/2:3.3.12-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `python-defaults=2.7.13-2`

Binary Packages:

- `libpython-stdlib:amd64=2.7.13-2`
- `python=2.7.13-2`
- `python-minimal=2.7.13-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `python2.7=2.7.14~rc1-3`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.14~rc1-3`
- `libpython2.7-stdlib:amd64=2.7.14~rc1-3`
- `python2.7=2.7.14~rc1-3`
- `python2.7-minimal=2.7.14~rc1-3`

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


### `dpkg` source package: `readline=7.0-3`

Binary Packages:

- `libreadline7:amd64=7.0-3`
- `readline-common=7.0-3`

Licenses: (parsed from: `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=7.0-3
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-3.dsc' readline_7.0-3.dsc 2538 SHA256:f27a5dc9053b88641e3effc6c03b7840cbbbd887e8dcaf05d9e336c7bc7c6a53
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-3.debian.tar.xz' readline_7.0-3.debian.tar.xz 30012 SHA256:bf166310d6ca7716f2bd0e9e06cee2458b0157f7989d028730fc305643560175
```

Likely also available for browsing at:

- https://sources.debian.net/src/readline/7.0-3/
- https://sources.debian.net/src/readline/7.0-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-1+b1`

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

### `dpkg` source package: `sed=4.4-1`

Binary Packages:

- `sed=4.4-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.4-1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.4-1.dsc' sed_4.4-1.dsc 2048 SHA256:bb2a11d04f3aeba73cc994e097219fde8c5e0fd1bcf42e0ecc8a4f2282c00fc9
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.4.orig.tar.xz' sed_4.4.orig.tar.xz 1181664 SHA256:cbd6ebc5aaf080ed60d0162d7f6aeae58211a1ee9ba9bb25623daa6cd942683b
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.4-1.debian.tar.xz' sed_4.4-1.debian.tar.xz 59552 SHA256:56dd1f91c5e33b419f38cde93afc90d6fad9064ef4594a877424a0ab2ac9a4bf
```

Likely also available for browsing at:

- https://sources.debian.net/src/sed/4.4-1/
- https://sources.debian.net/src/sed/4.4-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sensible-utils=0.0.10`

Binary Packages:

- `sensible-utils=0.0.10`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.10
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.10.dsc' sensible-utils_0.0.10.dsc 1671 SHA256:9f19f464d6edc9c086a92c7ac03cc72b285dccd56f9d640b9979a3e5aac3457e
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.10.tar.xz' sensible-utils_0.0.10.tar.xz 57140 SHA256:137f67f34cbe2066407889d6ee15f4e51440e0f1378e9763da5922388a6510f3
```

Likely also available for browsing at:

- https://sources.debian.net/src/sensible-utils/0.0.10/
- https://sources.debian.net/src/sensible-utils/0.0.10/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `serf=1.3.9-3`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-3`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `shadow=1:4.4-4.1`

Binary Packages:

- `login=1:4.4-4.1`
- `passwd=1:4.4-4.1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.4-4.1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.4-4.1.dsc' shadow_4.4-4.1.dsc 2453 SHA256:6760f8ee90562ed02cb3902b81167e6153923a979c61dc06671426321e575f74
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.4.orig.tar.gz' shadow_4.4.orig.tar.gz 3003036 SHA256:1323e7e932836e03dbfa441f7eeb349ede2c92d62b788ade0732411fd516be3d
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.4-4.1.debian.tar.xz' shadow_4.4-4.1.debian.tar.xz 600560 SHA256:42610e666c762b88b9e60ea878b522b0639240dc9a74fe627b1ac497dd3d7424
```

Likely also available for browsing at:

- https://sources.debian.net/src/shadow/1:4.4-4.1/
- https://sources.debian.net/src/shadow/1:4.4-4.1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sqlite3=3.20.1-1`

Binary Packages:

- `libsqlite3-0:amd64=3.20.1-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.20.1-1
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.20.1-1.dsc' sqlite3_3.20.1-1.dsc 2473 SHA256:f9d17a62dbf721057c9ca05bc37bd69e247f289ac7098ab5e98d1e51434dda8a
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.20.1.orig-www.tar.xz' sqlite3_3.20.1.orig-www.tar.xz 3485848 SHA256:c31a1ad382c331c0507a5992c6d1697450ffc3410209ae992ead1c34344b5654
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.20.1.orig.tar.xz' sqlite3_3.20.1.orig.tar.xz 5900940 SHA256:0ed8da87222d3e0d45afcd9dac3b91a453eee4ea6eaf1287b78a6f0fb5274437
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.20.1-1.debian.tar.xz' sqlite3_3.20.1-1.debian.tar.xz 17652 SHA256:8c205983e0f7baf75419123093a42aac97c94e8454c0adf540838264604e04b3
```

Likely also available for browsing at:

- https://sources.debian.net/src/sqlite3/3.20.1-1/
- https://sources.debian.net/src/sqlite3/3.20.1-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `subversion=1.9.7-2`

Binary Packages:

- `libsvn1:amd64=1.9.7-2`
- `subversion=1.9.7-2`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.9.7-2
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.7-2.dsc' subversion_1.9.7-2.dsc 2990 SHA256:10b223085db0e302e4f15f51fa3d8ebabe0603c1a4edfb1f06fabfd77cc919ca
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.7.orig.tar.gz' subversion_1.9.7.orig.tar.gz 10643686 SHA256:c72a209c883e20245f14c4e644803f50ae83ae24652e385ff5e82300a0d06c3c
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.7-2.diff.gz' subversion_1.9.7-2.diff.gz 2632435 SHA256:d4b243270b601bdf6486bd4c7aefb508b6b55077aece28650d54057f047a92af
```

Likely also available for browsing at:

- https://sources.debian.net/src/subversion/1.9.7-2/
- https://sources.debian.net/src/subversion/1.9.7-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `systemd=234-3`

Binary Packages:

- `libsystemd0:amd64=234-3`
- `libudev1:amd64=234-3`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

- `CC0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=234-3
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_234-3.dsc' systemd_234-3.dsc 4838 SHA256:2c85a08e1ef7818c755f98a7aaf1e97deccc7575a717903e3330dae2777d5a94
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_234.orig.tar.gz' systemd_234.orig.tar.gz 4800186 SHA256:da3e69d10aa1c983d33833372ad4929037b411ac421fb085c8cee79ae1d80b6a
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_234-3.debian.tar.xz' systemd_234-3.debian.tar.xz 134836 SHA256:b873f8ce1cdaa82212ec043cc5d7bf9f82dd2c347d59816989e2079dfe94720f
```

Likely also available for browsing at:

- https://sources.debian.net/src/systemd/234-3/
- https://sources.debian.net/src/systemd/234-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sysvinit=2.88dsf-59.9`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.9`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.9
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.9.dsc' sysvinit_2.88dsf-59.9.dsc 2123 SHA256:a943edeac16668d3e55583daa4033ad46469e84ffad014e0e2007d9c3167e63d
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.9.debian.tar.xz' sysvinit_2.88dsf-59.9.debian.tar.xz 132584 SHA256:fbd5c085680d896ec6ee1c5a55ae2d8a5a6b9fd5a7ec1e13010dace24fdbcd5c
```

Likely also available for browsing at:

- https://sources.debian.net/src/sysvinit/2.88dsf-59.9/
- https://sources.debian.net/src/sysvinit/2.88dsf-59.9/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `tar=1.29b-2`

Binary Packages:

- `tar=1.29b-2`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.29b-2
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b-2.dsc' tar_1.29b-2.dsc 1965 SHA256:cae92504d2622b0a3d353df387c44beb1e9040ed2d527272a226f0ba247a17f1
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b.orig.tar.xz' tar_1.29b.orig.tar.xz 1822008 SHA256:6a59706ebee384a6cd2fb3ee1dbfbfc20c5c66c7efd7cedb28edc054fca8ba00
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b-2.debian.tar.xz' tar_1.29b-2.debian.tar.xz 28552 SHA256:caa4e76e821b87e842d0bfc8285abd47103d47d56e93dae0a8df4b787f7c8d72
```

Likely also available for browsing at:

- https://sources.debian.net/src/tar/1.29b-2/
- https://sources.debian.net/src/tar/1.29b-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `tzdata=2017b-2`

Binary Packages:

- `tzdata=2017b-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2017b-2
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2017b-2.dsc' tzdata_2017b-2.dsc 2005 SHA256:479f7a077690c3d84f15dc8be1da0a732a54cc07f7b30ca7fad6a5bd00921748
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2017b.orig.tar.gz' tzdata_2017b.orig.tar.gz 324317 SHA256:f8242a522ea3496b0ce4ff4f2e75a049178da21001a08b8e666d8cbe07d18086
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2017b-2.debian.tar.xz' tzdata_2017b-2.debian.tar.xz 101096 SHA256:2607bdfaa4535e59223d194c1cc1891a3c26a731d20a4a1d9311d22d1a9175d8
```

Likely also available for browsing at:

- https://sources.debian.net/src/tzdata/2017b-2/
- https://sources.debian.net/src/tzdata/2017b-2/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `ustr=1.0.4-6`

Binary Packages:

- `libustr-1.0-1:amd64=1.0.4-6`

Licenses: (parsed from: `/usr/share/doc/libustr-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris ustr=1.0.4-6
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-6.dsc' ustr_1.0.4-6.dsc 2029 SHA256:87a854fc03dc059d5d4f135dfd36353c8c09f88a6eb216c6dcea8adadbe6ba59
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-6.debian.tar.xz' ustr_1.0.4-6.debian.tar.xz 25608 SHA256:75aa6be2c70eba632ac63078e55ecb4b5a45e6624501a8ed6d81b9a2014d149e
```

Likely also available for browsing at:

- https://sources.debian.net/src/ustr/1.0.4-6/
- https://sources.debian.net/src/ustr/1.0.4-6/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `util-linux=2.29.2-4`

Binary Packages:

- `bsdutils=1:2.29.2-4`
- `fdisk=2.29.2-4`
- `libblkid1:amd64=2.29.2-4`
- `libfdisk1:amd64=2.29.2-4`
- `libmount1:amd64=2.29.2-4`
- `libsmartcols1:amd64=2.29.2-4`
- `libuuid1:amd64=2.29.2-4`
- `mount=2.29.2-4`
- `util-linux=2.29.2-4`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/fdisk/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.29.2-4
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.29.2-4.dsc' util-linux_2.29.2-4.dsc 4043 SHA256:0bc5b23cf92924cb895fdd97d24642333c80fc63d7ac0d8269e943b7da394271
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.29.2.orig.tar.xz' util-linux_2.29.2.orig.tar.xz 4277668 SHA256:accea4d678209f97f634f40a93b7e9fcad5915d1f4749f6c47bee6bf110fe8e3
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.29.2-4.debian.tar.xz' util-linux_2.29.2-4.debian.tar.xz 73552 SHA256:1004cbfa6053f9402a94f468dce087776e7028937c2d65a865d7af51788d9548
```

Likely also available for browsing at:

- https://sources.debian.net/src/util-linux/2.29.2-4/
- https://sources.debian.net/src/util-linux/2.29.2-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `wget=1.19.1-4`

Binary Packages:

- `wget=1.19.1-4`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.19.1-4
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.1-4.dsc' wget_1.19.1-4.dsc 1929 SHA256:3d5f32dc4e27b575e362e3a13392c91e955f21926bc3f77682be006b01ab1852
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.1.orig.tar.xz' wget_1.19.1.orig.tar.xz 2111756 SHA256:0c950b9671881222a4d385b013c9604e98a8025d1988529dfca0e93617744cd2
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.1-4.debian.tar.xz' wget_1.19.1-4.debian.tar.xz 20588 SHA256:d775348caa26dd682eb0a28ada1f1179ccc8cd9ca29d038ae5d3a511d722f9b5
```

Likely also available for browsing at:

- https://sources.debian.net/src/wget/1.19.1-4/
- https://sources.debian.net/src/wget/1.19.1-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `xz-utils=5.2.2-1.3`

Binary Packages:

- `liblzma5:amd64=5.2.2-1.3`

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
$ apt-get source -qq --print-uris xz-utils=5.2.2-1.3
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.dsc' xz-utils_5.2.2-1.3.dsc 2575 SHA256:3ea4e6a32f6265b152f89ceafe78c8839e5f4bb1cad137b159fe2013817f9342
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA256:f341b1906ebcdde291dd619399ae944600edc9193619dd0c0110a5f05bfcc89e
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA256:2cc0575556e1331b3f468e6e7dca5969ce86efcc315d62672279b4e68b2e449f
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.debian.tar.xz' xz-utils_5.2.2-1.3.debian.tar.xz 108680 SHA256:d76c3acf39d0999c14384695394970e8f98853fd6736ba91972d3e67106bc6f6
```

Likely also available for browsing at:

- https://sources.debian.net/src/xz-utils/5.2.2-1.3/
- https://sources.debian.net/src/xz-utils/5.2.2-1.3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `zlib=1:1.2.8.dfsg-5`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.8.dfsg-5
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-5.dsc' zlib_1.2.8.dfsg-5.dsc 2259 SHA256:35ebfdbb74b3563d344b2bb946909f5d3221cdf971876549ea7ccec01fabcbec
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz' zlib_1.2.8.dfsg.orig.tar.gz 361943 SHA256:2caecc2c3f1ef8b87b8f72b128a03e61c307e8c14f5ec9b422ef7914ba75cf9f
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-5.debian.tar.xz' zlib_1.2.8.dfsg-5.debian.tar.xz 18500 SHA256:7b88f58d1bfe8e873b8362ede3d0bc569793decc60094189fad1a110599cdd95
```

Likely also available for browsing at:

- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-5/
- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-5/debian/copyright (for direct copyright/license information)
