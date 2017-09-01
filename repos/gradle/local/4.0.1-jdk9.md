# `gradle:4.0.1-jdk9`

## Docker Metadata

- Image ID: `sha256:a152fb4f607d033a383584d643ba1d8951f2ea93c8b2c025dacd1eeffa72ba24`
- Created: `2017-08-26T03:01:56.330462289Z`
- Virtual Size: ~ 658.63 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["gradle"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `JAVA_HOME=/docker-java-home`
  - `JAVA_VERSION=9-b181`
  - `JAVA_DEBIAN_VERSION=9~b181-4`
  - `GRADLE_HOME=/opt/gradle`
  - `GRADLE_VERSION=4.0.1`

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

### `dpkg` source package: `adduser=3.115`

Binary Packages:

- `adduser=3.115`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `apparmor=2.11.0-10`

Binary Packages:

- `libapparmor1:amd64=2.11.0-10`

Licenses: (parsed from: `/usr/share/doc/libapparmor1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris apparmor=2.11.0-10
'http://deb.debian.org/debian/pool/main/a/apparmor/apparmor_2.11.0-10.dsc' apparmor_2.11.0-10.dsc 3161 SHA256:e34e24b3b6782ec18888eb2aff2c9edcd7f5c514ef8a55b4abebb156ff2420ef
'http://deb.debian.org/debian/pool/main/a/apparmor/apparmor_2.11.0.orig.tar.gz' apparmor_2.11.0.orig.tar.gz 5013297 SHA256:b1c489ea11e7771b8e6b181532cafbf9ebe6603e3cb00e2558f21b7a5bdd739a
'http://deb.debian.org/debian/pool/main/a/apparmor/apparmor_2.11.0-10.debian.tar.xz' apparmor_2.11.0-10.debian.tar.xz 87580 SHA256:3ac68659310ec08a8ca6f3465ef5dc7c0ef2ff0f1050b0c7b5016d76dfe40b69
```

Likely also available for browsing at:

- https://sources.debian.net/src/apparmor/2.11.0-10/
- https://sources.debian.net/src/apparmor/2.11.0-10/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `apr-util=1.5.4-3`

Binary Packages:

- `libaprutil1:amd64=1.5.4-3`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `apr=1.5.2-5`

Binary Packages:

- `libapr1:amd64=1.5.2-5`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.5.2-5
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.5.2-5.dsc' apr_1.5.2-5.dsc 2115 SHA256:b58bb3209c8a28bff47666de6a9bf32292303fdc2433c9fafb15f2a9e6c16ca6
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.5.2.orig.tar.bz2' apr_1.5.2.orig.tar.bz2 826885 SHA256:7d03ed29c22a7152be45b8e50431063736df9e1daa1ddf93f6a547ba7a28f67a
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.5.2-5.debian.tar.xz' apr_1.5.2-5.debian.tar.xz 212856 SHA256:5b253cd3acc284241c3cb4a84d9d16f9c5c7775c8f7a26b3a0068ff174bacf76
```

Likely also available for browsing at:

- https://sources.debian.net/src/apr/1.5.2-5/
- https://sources.debian.net/src/apr/1.5.2-5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `apt=1.5~beta1`

Binary Packages:

- `apt=1.5~beta1`
- `libapt-pkg5.0:amd64=1.5~beta1`

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

### `dpkg` source package: `avahi=0.6.32-2`

Binary Packages:

- `libavahi-client3:amd64=0.6.32-2`
- `libavahi-common-data:amd64=0.6.32-2`
- `libavahi-common3:amd64=0.6.32-2`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.6.32-2
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.6.32-2.dsc' avahi_0.6.32-2.dsc 4263 SHA256:d369e30da54617a519796af49dcb4daa7e12f85314a4653c6504ec5567aab502
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.6.32.orig.tar.gz' avahi_0.6.32.orig.tar.gz 1297169 SHA256:d54991185d514a0aba54ebeb408d7575b60f5818a772e28fa0e18b98bc1db454
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.6.32-2.debian.tar.xz' avahi_0.6.32-2.debian.tar.xz 29348 SHA256:59434a4796ebc34f4b0fa92e8ca57b4c6c54adc1d2167db0dae3445aeac3318a
```

Likely also available for browsing at:

- https://sources.debian.net/src/avahi/0.6.32-2/
- https://sources.debian.net/src/avahi/0.6.32-2/debian/copyright (for direct copyright/license information)

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

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.43
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.43.dsc' base-passwd_3.5.43.dsc 1749 SHA256:174a03d0df0d0f36cc186592e36472339632de094d60f9fcab370e1101a2430d
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.43.tar.xz' base-passwd_3.5.43.tar.xz 52596 SHA256:7768d10e2c08469cc81342e391e059f0426afdb6eb74a3102beef59ac45ab994
```

Likely also available for browsing at:

- https://sources.debian.net/src/base-passwd/3.5.43/
- https://sources.debian.net/src/base-passwd/3.5.43/debian/copyright (for direct copyright/license information)

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

- `bzip2=1.0.6-8.1`
- `libbz2-1.0:amd64=1.0.6-8.1`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

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

### `dpkg` source package: `bzr=2.7.0+bzr6622-3`

Binary Packages:

- `bzr=2.7.0+bzr6622-3`
- `python-bzrlib=2.7.0+bzr6622-3`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `ca-certificates-java=20170531+nmu1`

Binary Packages:

- `ca-certificates-java=20170531+nmu1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates-java/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates-java=20170531+nmu1
'http://deb.debian.org/debian/pool/main/c/ca-certificates-java/ca-certificates-java_20170531+nmu1.dsc' ca-certificates-java_20170531+nmu1.dsc 1864 SHA256:07edafb2b29da665dad55034bf8044df1e85e3fa6a611ec6996c6f55f902802a
'http://deb.debian.org/debian/pool/main/c/ca-certificates-java/ca-certificates-java_20170531+nmu1.tar.xz' ca-certificates-java_20170531+nmu1.tar.xz 15992 SHA256:d89588b1875731ca14e5634c641ecf2668b8dd54ef44c40692dcfec7925778ea
```

Likely also available for browsing at:

- https://sources.debian.net/src/ca-certificates-java/20170531+nmu1/
- https://sources.debian.net/src/ca-certificates-java/20170531+nmu1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `ca-certificates=20161130+nmu1`

Binary Packages:

- `ca-certificates=20161130+nmu1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20161130+nmu1
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20161130+nmu1.dsc' ca-certificates_20161130+nmu1.dsc 1886 SHA256:09e8d33c479827b070719170a9a98de7c1d4e9c7973ed8556321d08d8ae27494
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20161130+nmu1.tar.xz' ca-certificates_20161130+nmu1.tar.xz 298648 SHA256:77f9aca431e3122bf04aa0ffd989b723d906db4d1c106e3290e463d73c177f0e
```

Likely also available for browsing at:

- https://sources.debian.net/src/ca-certificates/20161130+nmu1/
- https://sources.debian.net/src/ca-certificates/20161130+nmu1/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `cups=2.2.4-3`

Binary Packages:

- `libcups2:amd64=2.2.4-3`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2.0 with AOSDL exception`
- `LGPL-2`
- `LGPL-2.0 with AOSDL exception`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `curl=7.52.1-5`

Binary Packages:

- `curl=7.52.1-5`
- `libcurl3:amd64=7.52.1-5`
- `libcurl3-gnutls:amd64=7.52.1-5`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.52.1-5
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.52.1-5.dsc' curl_7.52.1-5.dsc 2765 SHA256:40e5e7c680d0246e12bdebf4f84949412c7846d95708c688df9dd7e77119960e
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.52.1.orig.tar.gz' curl_7.52.1.orig.tar.gz 3504621 SHA256:a8984e8b20880b621f61a62d95ff3c0763a3152093a9f9ce4287cfd614add6ae
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.52.1-5.debian.tar.xz' curl_7.52.1-5.debian.tar.xz 33004 SHA256:67e9388c5562edbdd63fa31a892d446bd7dee18207a62ec367bc925f6ce50fcf
```

Likely also available for browsing at:

- https://sources.debian.net/src/curl/7.52.1-5/
- https://sources.debian.net/src/curl/7.52.1-5/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `db5.3=5.3.28-13`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-13
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-13.dsc' db5.3_5.3.28-13.dsc 3091 SHA256:2d56be2ce7bf2a554ddc8c6762b2bfbf19f127b33f4719958a23d006f23381de
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-13.debian.tar.xz' db5.3_5.3.28-13.debian.tar.xz 27676 SHA256:7126585f2eb63ca2a8fa2f4623a07d65d7df5dbbe7cea96b9bb850da5f4f22e5
```

Likely also available for browsing at:

- https://sources.debian.net/src/db5.3/5.3.28-13/
- https://sources.debian.net/src/db5.3/5.3.28-13/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `dbus=1.11.16+really1.10.22-1`

Binary Packages:

- `dbus=1.11.16+really1.10.22-1`
- `libdbus-1-3:amd64=1.11.16+really1.10.22-1`

Licenses: (parsed from: `/usr/share/doc/dbus/copyright`, `/usr/share/doc/libdbus-1-3/copyright`)

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
$ apt-get source -qq --print-uris dbus=1.11.16+really1.10.22-1
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.11.16+really1.10.22-1.dsc' dbus_1.11.16+really1.10.22-1.dsc 3777 SHA256:bcd4f551cad7bde494f37fcbedeb58edc7dcb767a3835eaa759329a97d6dbef7
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.11.16+really1.10.22.orig.tar.gz' dbus_1.11.16+really1.10.22.orig.tar.gz 1989350 SHA256:e2b1401e3eedc7b5c9a2034d31254c886e1fcbc7858006e0a1c59158fe4b7b97
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.11.16+really1.10.22.orig.tar.gz.asc' dbus_1.11.16+really1.10.22.orig.tar.gz.asc 1666 SHA256:8373d4cb9b8e675f3b0cedce25a82dce35e35e16b349fd4db662badf452baca7
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.11.16+really1.10.22-1.debian.tar.xz' dbus_1.11.16+really1.10.22-1.debian.tar.xz 60156 SHA256:555a4afa71c1707deb525f0fd5f04ae8cf9c8e5bb406b95d5ec4928a93e7300b
```

Likely also available for browsing at:

- https://sources.debian.net/src/dbus/1.11.16+really1.10.22-1/
- https://sources.debian.net/src/dbus/1.11.16+really1.10.22-1/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `debian-archive-keyring=2017.5`

Binary Packages:

- `debian-archive-keyring=2017.5`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2017.5
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.5.dsc' debian-archive-keyring_2017.5.dsc 1597 SHA256:202c8424b79747e7a3d74b1e3d6f8748b211eb6ee1f2cb9c56f3c28ad9bc4f02
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.5.tar.xz' debian-archive-keyring_2017.5.tar.xz 79324 SHA256:6e06a47c79948d7a2f6b5bcfbf1f615293da329226bc9d7ad692cb67d2f4b731
```

Likely also available for browsing at:

- https://sources.debian.net/src/debian-archive-keyring/2017.5/
- https://sources.debian.net/src/debian-archive-keyring/2017.5/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `debianutils=4.8.1.1`

Binary Packages:

- `debianutils=4.8.1.1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `diffutils=1:3.5-3`

Binary Packages:

- `diffutils=1:3.5-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `e2fsprogs=1.43.4-2`

Binary Packages:

- `e2fslibs:amd64=1.43.4-2`
- `e2fsprogs=1.43.4-2`
- `libcomerr2:amd64=1.43.4-2`
- `libss2:amd64=1.43.4-2`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.43.4-2
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.4-2.dsc' e2fsprogs_1.43.4-2.dsc 2043 SHA256:e6f6b8dddeb97cc81c3aa7aa826305e1f9c9cd1c3066b2b916e558682fdc7f70
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.4.orig.tar.gz' e2fsprogs_1.43.4.orig.tar.gz 7552218 SHA256:484ab0bc1bc07c64267b18cfe7871b6b975bf0a705c5a4563001f035071cdc7c
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.4-2.debian.tar.xz' e2fsprogs_1.43.4-2.debian.tar.xz 76444 SHA256:e1713f9e686a71a9d6f119cd178c4ebea502a7c2b43901cc41bcdb61b142b1c8
```

Likely also available for browsing at:

- https://sources.debian.net/src/e2fsprogs/1.43.4-2/
- https://sources.debian.net/src/e2fsprogs/1.43.4-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `elfutils=0.168-1`

Binary Packages:

- `libelf1:amd64=0.168-1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.168-1
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.168-1.dsc' elfutils_0.168-1.dsc 2549 SHA256:b29e03a3d515d9accd52019ff7c75762ae5e61285453518ff90d538e9878ad7f
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.168.orig.tar.bz2' elfutils_0.168.orig.tar.bz2 6840399 SHA256:b88d07893ba1373c7dd69a7855974706d05377766568a7d9002706d5de72c276
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.168.orig.tar.bz2.asc' elfutils_0.168.orig.tar.bz2.asc 473 SHA256:f455fc014b59a0d80ab921935d20f26e64f411a424d4be29ec5bf3a1378f3002
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.168-1.debian.tar.xz' elfutils_0.168-1.debian.tar.xz 39964 SHA256:5517922b1025d32903759c46f9a1f656e3e367c5ea036dc54b32cbbe68a5f300
```

Likely also available for browsing at:

- https://sources.debian.net/src/elfutils/0.168-1/
- https://sources.debian.net/src/elfutils/0.168-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `expat=2.2.2-2`

Binary Packages:

- `libexpat1:amd64=2.2.2-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `findutils=4.6.0+git+20170606-3`

Binary Packages:

- `findutils=4.6.0+git+20170606-3`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `freetype=2.8-0.2`

Binary Packages:

- `libfreetype6:amd64=2.8-0.2`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

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
$ apt-get source -qq --print-uris freetype=2.8-0.2
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.8-0.2.dsc' freetype_2.8-0.2.dsc 1802 SHA256:d43fec201f695524148e691e73c4dfc243ff57b3a238feb7b50148385e00441d
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.8.orig.tar.gz' freetype_2.8.orig.tar.gz 4225710 SHA256:7ba438204ec4532cfa770faff63a90f0555369bb594c15014cc0fb5f0d52e3b4
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.8-0.2.diff.gz' freetype_2.8-0.2.diff.gz 37779 SHA256:5060fb3ad83ddbec18334a80bcf6697468131d9ec2a03d3ab992e5b695b84352
```

Likely also available for browsing at:

- https://sources.debian.net/src/freetype/2.8-0.2/
- https://sources.debian.net/src/freetype/2.8-0.2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gcc-5=5.4.1-11`

Binary Packages:

- `gcc-5-base:amd64=5.4.1-11`

Licenses: (parsed from: `/usr/share/doc/gcc-5-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `gcc-6=6.4.0-1`

Binary Packages:

- `gcc-6-base:amd64=6.4.0-1`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `gcc-7=7.1.0-9`

Binary Packages:

- `gcc-7-base:amd64=7.1.0-9`
- `libgcc1:amd64=1:7.1.0-9`
- `libstdc++6:amd64=7.1.0-9`

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

### `dpkg` source package: `git=1:2.13.3-1`

Binary Packages:

- `git=1:2.13.3-1`
- `git-man=1:2.13.3-1`

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


### `dpkg` source package: `glibc=2.24-12`

Binary Packages:

- `libc-bin=2.24-12`
- `libc6:amd64=2.24-12`
- `multiarch-support=2.24-12`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.24-12
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-12.dsc' glibc_2.24-12.dsc 8365 SHA256:a03c6e6f9dbb6a83d4cda71fbcfaf90690e74a553b59639c387519c8f97f8bfb
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24.orig.tar.xz' glibc_2.24.orig.tar.xz 13921912 SHA256:ed71e8afd2b270f7947a2cea2457a31e1ca4fac08e2731d80edd7ec1730ec84f
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-12.debian.tar.xz' glibc_2.24-12.debian.tar.xz 1028888 SHA256:aeafb5396520596e7d91b9d6e61c51030883c0f27d6c0fa436596b30a9961d5a
```

Likely also available for browsing at:

- https://sources.debian.net/src/glibc/2.24-12/
- https://sources.debian.net/src/glibc/2.24-12/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `gnupg2=2.1.18-8`

Binary Packages:

- `dirmngr=2.1.18-8`
- `gnupg=2.1.18-8`
- `gnupg-agent=2.1.18-8`
- `gnupg2=2.1.18-8`
- `gpgv=2.1.18-8`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-agent/copyright`, `/usr/share/doc/gnupg2/copyright`, `/usr/share/doc/gpgv/copyright`)

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

Source:

```console
$ apt-get source -qq --print-uris gnupg2=2.1.18-8
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.1.18-8.dsc' gnupg2_2.1.18-8.dsc 3118 SHA256:f09f722ffa9be660a101886d6c4a597fe69b0a08a35dc9fa74ae68b9ee2af715
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.1.18.orig.tar.bz2' gnupg2_2.1.18.orig.tar.bz2 6308666 SHA256:d04c6fab7e5562ce4b915b22020e34d4c1a256847690cf149842264fc7cef994
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.1.18-8.debian.tar.bz2' gnupg2_2.1.18-8.debian.tar.bz2 101290 SHA256:f4f6c52d8b0e9ea48be81ad8f97257fa963988de603418895f53d89aac850b46
```

Likely also available for browsing at:

- https://sources.debian.net/src/gnupg2/2.1.18-8/
- https://sources.debian.net/src/gnupg2/2.1.18-8/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `gnutls28=3.5.14-2`

Binary Packages:

- `libgnutls30:amd64=3.5.14-2`

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

Source:

```console
$ apt-get source -qq --print-uris iproute2=4.9.0-1
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.9.0-1.dsc' iproute2_4.9.0-1.dsc 2397 SHA256:30ead60a56ff3d3a2ba61079790292952d66b5a74b1685133b7a69ef14a82e2e
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.9.0.orig.tar.xz' iproute2_4.9.0.orig.tar.xz 613032 SHA256:c0f30f043f7767cc1b2cd2197b08d4e9b2392c95823fabe30bbce308c30116c4
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.9.0-1.debian.tar.xz' iproute2_4.9.0-1.debian.tar.xz 26752 SHA256:1926348d3c8c9e90f7826f5d409d5dc17a2cbf5d247206f1bc4b9a584c672be2
```

Likely also available for browsing at:

- https://sources.debian.net/src/iproute2/4.9.0-1/
- https://sources.debian.net/src/iproute2/4.9.0-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `java-common=0.59`

Binary Packages:

- `java-common=0.59`

Licenses: (parsed from: `/usr/share/doc/java-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris java-common=0.59
'http://deb.debian.org/debian/pool/main/j/java-common/java-common_0.59.dsc' java-common_0.59.dsc 2134 SHA256:44f77a693749779f3bd78bf2b2ac1a5a2a9a7278eb0a9e00190e206d3cb31537
'http://deb.debian.org/debian/pool/main/j/java-common/java-common_0.59.tar.xz' java-common_0.59.tar.xz 13064 SHA256:d5737f7bacf02c81cace29176d8bddc3552b0857841aeb3435bcf52265d695ca
```

Likely also available for browsing at:

- https://sources.debian.net/src/java-common/0.59/
- https://sources.debian.net/src/java-common/0.59/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `lcms2=2.8-4`

Binary Packages:

- `liblcms2-2:amd64=2.8-4`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.8-4
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.8-4.dsc' lcms2_2.8-4.dsc 1997 SHA256:3b92900948848eef62fa91b78f6b6661bd84eae6c49c224248c7c48a09b5f028
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.8.orig.tar.gz' lcms2_2.8.orig.tar.gz 6687005 SHA256:66d02b229d2ea9474e62c2b6cd6720fde946155cd1d0d2bffdab829790a0fb22
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.8-4.debian.tar.xz' lcms2_2.8-4.debian.tar.xz 11036 SHA256:50c0040fc92e1f2ca27740f608ae248acdd5b21a633f34cf2fe4d66f1d05c4b4
```

Likely also available for browsing at:

- https://sources.debian.net/src/lcms2/2.8-4/
- https://sources.debian.net/src/lcms2/2.8-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libassuan=2.4.3-2`

Binary Packages:

- `libassuan0:amd64=2.4.3-2`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libbsd=0.8.6-1`

Binary Packages:

- `libbsd0:amd64=0.8.6-1`

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
$ apt-get source -qq --print-uris libbsd=0.8.6-1
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.6-1.dsc' libbsd_0.8.6-1.dsc 2218 SHA256:5a946851fc41ccf8b9d4e501b1959a35937a9ae0ca0fdef22a944aa0efdf887f
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.6.orig.tar.xz' libbsd_0.8.6.orig.tar.xz 371112 SHA256:467fbf9df1f49af11f7f686691057c8c0a7613ae5a870577bef9155de39f9687
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.6.orig.tar.xz.asc' libbsd_0.8.6.orig.tar.xz.asc 833 SHA256:8b579470e8249b2ad24134989cc77404e3620e8ccda3d57650cfbcc7c50c26ce
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.6-1.debian.tar.xz' libbsd_0.8.6-1.debian.tar.xz 15624 SHA256:eb1b5b2d4ef96ce6de8e97ed9169be9fdc4336e057ae3e1b5970f777773e10ad
```

Likely also available for browsing at:

- https://sources.debian.net/src/libbsd/0.8.6-1/
- https://sources.debian.net/src/libbsd/0.8.6-1/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `libgcrypt20=1.7.8-2`

Binary Packages:

- `libgcrypt20:amd64=1.7.8-2`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.7.8-2
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.8-2.dsc' libgcrypt20_1.7.8-2.dsc 2914 SHA256:50756aa88fe20558993c3d73e1f611e28ec78daab7b4e61a0ac0efdbd3da910d
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.8.orig.tar.bz2' libgcrypt20_1.7.8.orig.tar.bz2 2897853 SHA256:948276ea47e6ba0244f36a17b51dcdd52cfd1e664b0a1ac3bc82134fb6cec199
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.8.orig.tar.bz2.asc' libgcrypt20_1.7.8.orig.tar.bz2.asc 310 SHA256:7785a7b8f861b8742f64c27a08de8aa27cb6f22af8884e5252602051544085db
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.8-2.debian.tar.xz' libgcrypt20_1.7.8-2.debian.tar.xz 26620 SHA256:7ddf57bcb8a1eb78d89af15dc138e4016ebca49ea8b78049ea4c71a8bb4cd31b
```

Likely also available for browsing at:

- https://sources.debian.net/src/libgcrypt20/1.7.8-2/
- https://sources.debian.net/src/libgcrypt20/1.7.8-2/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `libidn2-0=2.0.2-1`

Binary Packages:

- `libidn2-0:amd64=2.0.2-1`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`)

- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-3+`
- `Unicode`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libjpeg-turbo=1:1.5.2-2`

Binary Packages:

- `libjpeg62-turbo:amd64=1:1.5.2-2`

Licenses: (parsed from: `/usr/share/doc/libjpeg62-turbo/copyright`)

- `BSD-3`
- `BSD-BY-LC-NE`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:1.5.2-2
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2-2.dsc' libjpeg-turbo_1.5.2-2.dsc 2434 SHA256:f975bd4b2192e3f1aeacef7f0de33035f386225035aea6157b413b1c500d46a1
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2.orig.tar.gz' libjpeg-turbo_1.5.2.orig.tar.gz 1657235 SHA256:9098943b270388727ae61de82adec73cf9f0dbb240b3bc8b172595ebf405b528
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2-2.debian.tar.xz' libjpeg-turbo_1.5.2-2.debian.tar.xz 78360 SHA256:964a2d747f8e74cbd558f343afd11b7dfe37212a611eeca863f1908eba66f728
```

Likely also available for browsing at:

- https://sources.debian.net/src/libjpeg-turbo/1:1.5.2-2/
- https://sources.debian.net/src/libjpeg-turbo/1:1.5.2-2/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `libpng1.6=1.6.31-1`

Binary Packages:

- `libpng16-16:amd64=1.6.31-1`

Licenses: (parsed from: `/usr/share/doc/libpng16-16/copyright`)

- `BSD-like-with-advertising-clause`
- `GPL-2`
- `GPL-2+`
- `expat`
- `libpng`

Source:

```console
$ apt-get source -qq --print-uris libpng1.6=1.6.31-1
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.31-1.dsc' libpng1.6_1.6.31-1.dsc 2473 SHA256:9dd317698c1fc9c0320311b84e010b48a5cdb871274091e7d9821216ccf6fbb6
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.31.orig.tar.xz' libpng1.6_1.6.31.orig.tar.xz 991824 SHA256:232a602de04916b2b5ce6f901829caf419519e6a16cc9cd7c1c91187d3ee8b41
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.31.orig.tar.xz.asc' libpng1.6_1.6.31.orig.tar.xz.asc 819 SHA256:b09770dae0aadbb75983481ad95ca0cca64026fa09a2aa26cd4bbde9079591d5
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.31-1.debian.tar.xz' libpng1.6_1.6.31-1.debian.tar.xz 22372 SHA256:4268b99bf948ca11ee8e6109d76e3bc4b7537e96f7afa8ef391013b2715aa4bb
```

Likely also available for browsing at:

- https://sources.debian.net/src/libpng1.6/1.6.31-1/
- https://sources.debian.net/src/libpng1.6/1.6.31-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libpsl=0.17.0-5`

Binary Packages:

- `libpsl5:amd64=0.17.0-5`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.6-2
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.6-2.dsc' libsemanage_2.6-2.dsc 2338 SHA256:2806bf3591dc7eb4c80d647a9e65df13d03657cfa6e049de1035165e0d8484d0
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.6.orig.tar.gz' libsemanage_2.6.orig.tar.gz 155897 SHA256:4f81541047290b751f2ffb926fcd381c186f22db18d9fe671b0b4a6a54e8cfce
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.6-2.debian.tar.xz' libsemanage_2.6-2.debian.tar.xz 17088 SHA256:3d1c4c5ea5d4f27a521b64ba3fc499c8b662257ffec773706501f466032db8cf
```

Likely also available for browsing at:

- https://sources.debian.net/src/libsemanage/2.6-2/
- https://sources.debian.net/src/libsemanage/2.6-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libsepol=2.6-2`

Binary Packages:

- `libsepol1:amd64=2.6-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.6-2
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.6-2.dsc' libsepol_2.6-2.dsc 1814 SHA256:197ddaf44a5139d7ca6c12ce6b29fca0589f72c59ac588a7fa39d11b2e65778a
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.6.orig.tar.gz' libsepol_2.6.orig.tar.gz 442549 SHA256:d856d6506054f52abeaa3543ea2f2344595a3dc05d0d873ed7f724f7a16b1874
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.6-2.debian.tar.xz' libsepol_2.6-2.debian.tar.xz 14320 SHA256:d7a1022d03eb53a8d30262e06f14f691e553b3db684ca0f3549cd17b93fb7465
```

Likely also available for browsing at:

- https://sources.debian.net/src/libsepol/2.6-2/
- https://sources.debian.net/src/libsepol/2.6-2/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `libtasn1-6=4.12-2`

Binary Packages:

- `libtasn1-6:amd64=4.12-2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `libx11=2:1.6.4-3`

Binary Packages:

- `libx11-6:amd64=2:1.6.4-3`
- `libx11-data=2:1.6.4-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.4-3
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4-3.dsc' libx11_1.6.4-3.dsc 2397 SHA256:4c5d6add2ba969067ca111c827ae94264e4c22776e22f318d264545dc1c6a300
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4.orig.tar.gz' libx11_1.6.4.orig.tar.gz 3095115 SHA256:5d7fbb9e15c27900ea8963218a59750b674a8d7c94161b66e96fcfbdaa1c6263
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4-3.diff.gz' libx11_1.6.4-3.diff.gz 41366 SHA256:2c936827bca63eaf5b66683bdcd0ecf013d152c35439f792475db85c5c2338fd
```

Likely also available for browsing at:

- https://sources.debian.net/src/libx11/2:1.6.4-3/
- https://sources.debian.net/src/libx11/2:1.6.4-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

- `libxau6:amd64=1:1.0.8-1+b2`

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

- `libxcb1:amd64=1.12-1`

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

### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

- `libxdmcp6:amd64=1:1.1.2-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-3
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.dsc' libxdmcp_1.1.2-3.dsc 2145 SHA256:f9697dca6a275aeee9a3eee9fb2d55e0f77485481e8b84efc6950fc9b1988460
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.diff.gz' libxdmcp_1.1.2-3.diff.gz 18017 SHA256:5844df115c17e5ba40ac116f80373304d821c607e763ef6f40562421f5cc0cf3
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/
- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxext=2:1.3.3-1`

Binary Packages:

- `libxext6:amd64=2:1.3.3-1+b2`

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

### `dpkg` source package: `libxi=2:1.7.9-1`

Binary Packages:

- `libxi6:amd64=2:1.7.9-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.7.9-1
'http://deb.debian.org/debian/pool/main/libx/libxi/libxi_1.7.9-1.dsc' libxi_1.7.9-1.dsc 2202 SHA256:fb19b7e8b9ad6306c3e8a6728f29576f956f07a7980e7b4d727259714d6ca686
'http://deb.debian.org/debian/pool/main/libx/libxi/libxi_1.7.9.orig.tar.gz' libxi_1.7.9.orig.tar.gz 604214 SHA256:463cc5370191404bc0f8a450fdbf6d9159efbbf274e5e0f427a60191fed9cf4b
'http://deb.debian.org/debian/pool/main/libx/libxi/libxi_1.7.9-1.diff.gz' libxi_1.7.9-1.diff.gz 15892 SHA256:8c9c221faecc97a7ba7ff1a1a14fad580c49b72e270dc3aae40b72b2d7f4dc5e
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxi/2:1.7.9-1/
- https://sources.debian.net/src/libxi/2:1.7.9-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxrender=1:0.9.10-1`

Binary Packages:

- `libxrender1:amd64=1:0.9.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.10-1
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.10-1.dsc' libxrender_0.9.10-1.dsc 2064 SHA256:95d6471218b44f4e60c48cea60cfb4865bbe861530add23f6c859515bee92dbd
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.10.orig.tar.gz' libxrender_0.9.10.orig.tar.gz 373717 SHA256:770527cce42500790433df84ec3521e8bf095dfe5079454a92236494ab296adf
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.10-1.diff.gz' libxrender_0.9.10-1.diff.gz 15399 SHA256:ff56a0a00119383adc5f1731e86155ae5c2de069e1d059a9da1d777917430588
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxrender/1:0.9.10-1/
- https://sources.debian.net/src/libxrender/1:0.9.10-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `libxtst=2:1.2.3-1`

Binary Packages:

- `libxtst6:amd64=2:1.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxtst=2:1.2.3-1
'http://deb.debian.org/debian/pool/main/libx/libxtst/libxtst_1.2.3-1.dsc' libxtst_1.2.3-1.dsc 2243 SHA256:979f05e505ea319c3f75955e10345338f77a512f5a6a0a887d6f4633d6bd4633
'http://deb.debian.org/debian/pool/main/libx/libxtst/libxtst_1.2.3.orig.tar.gz' libxtst_1.2.3.orig.tar.gz 400197 SHA256:a0c83acce02d4923018c744662cb28eb0dbbc33b4adc027726879ccf68fbc2c2
'http://deb.debian.org/debian/pool/main/libx/libxtst/libxtst_1.2.3-1.diff.gz' libxtst_1.2.3-1.diff.gz 10177 SHA256:c4739fc7ccda7caaffcf36f934b7c33463390e71d567c7d62f635db1946b74ed
```

Likely also available for browsing at:

- https://sources.debian.net/src/libxtst/2:1.2.3-1/
- https://sources.debian.net/src/libxtst/2:1.2.3-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `lsb=9.20161125`

Binary Packages:

- `lsb-base=9.20161125`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `mercurial=4.0-1`

Binary Packages:

- `mercurial=4.0-1`
- `mercurial-common=4.0-1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `ncurses=6.0+20170715-2`

Binary Packages:

- `libncurses5:amd64=6.0+20170715-2`
- `libncursesw5:amd64=6.0+20170715-2`
- `libtinfo5:amd64=6.0+20170715-2`
- `ncurses-base=6.0+20170715-2`
- `ncurses-bin=6.0+20170715-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20170715-2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20170715-2.dsc' ncurses_6.0+20170715-2.dsc 3756 SHA256:583b4a0839f8f5d2cfa4235adc97c68fa6ab29a729c561fb3d5b82d3d859c4b2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20170715.orig.tar.gz' ncurses_6.0+20170715.orig.tar.gz 3297342 SHA256:b01753b18cba6b63a7d4a79fb452c2c173c537198b5ea477827e4ddfe50c6509
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20170715-2.debian.tar.xz' ncurses_6.0+20170715-2.debian.tar.xz 53188 SHA256:2673d855f203405dac91463d371117c3f25858c2bae3ddc373ea5204ef8b309f
```

Likely also available for browsing at:

- https://sources.debian.net/src/ncurses/6.0+20170715-2/
- https://sources.debian.net/src/ncurses/6.0+20170715-2/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `nghttp2=1.24.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.24.0-1`

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

### `dpkg` source package: `nspr=2:4.16-1`

Binary Packages:

- `libnspr4:amd64=2:4.16-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris nspr=2:4.16-1
'http://deb.debian.org/debian/pool/main/n/nspr/nspr_4.16-1.dsc' nspr_4.16-1.dsc 2061 SHA256:77eeb81db61d32b89762e566a36249d251fcc9ac475bf4445cd99bf558f9f1f9
'http://deb.debian.org/debian/pool/main/n/nspr/nspr_4.16.orig.tar.gz' nspr_4.16.orig.tar.gz 1140681 SHA256:9b3102d97665504aeee73363c11a21c062ad67a2522242368b7f019f96a53cd1
'http://deb.debian.org/debian/pool/main/n/nspr/nspr_4.16-1.debian.tar.xz' nspr_4.16-1.debian.tar.xz 15244 SHA256:776198b99b6ae188a3c3b09f12373be97fb3d381eabb3e6c42b591ca37dadd3c
```

Likely also available for browsing at:

- https://sources.debian.net/src/nspr/2:4.16-1/
- https://sources.debian.net/src/nspr/2:4.16-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `nss=2:3.32-1`

Binary Packages:

- `libnss3:amd64=2:3.32-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `openjdk-9=9~b181-4`

Binary Packages:

- `openjdk-9-jdk-headless:amd64=9~b181-4`
- `openjdk-9-jre-headless:amd64=9~b181-4`

Licenses: (parsed from: `/usr/share/doc/openjdk-9-jdk-headless/copyright`, `/usr/share/doc/openjdk-9-jre-headless/copyright`)

- `Apache-2.0`
- `GPL-2`
- `LGPL-2`
- `LGPL-2-1`

Source:

```console
$ apt-get source -qq --print-uris openjdk-9=9~b181-4
'http://deb.debian.org/debian/pool/main/o/openjdk-9/openjdk-9_9~b181-4.dsc' openjdk-9_9~b181-4.dsc 4500 SHA256:37dc3e62c9aeecb896e91f281f3a5b64c33b93b9a5a6a3b7cbb31ae86ed29bdb
'http://deb.debian.org/debian/pool/main/o/openjdk-9/openjdk-9_9~b181.orig.tar.gz' openjdk-9_9~b181.orig.tar.gz 74709643 SHA256:fae669a3a6ef266bb8bda75bed0d26b861051181ced63609cdef5e30bde93df1
'http://deb.debian.org/debian/pool/main/o/openjdk-9/openjdk-9_9~b181-4.debian.tar.xz' openjdk-9_9~b181-4.debian.tar.xz 175152 SHA256:220f579685c4491f1d1be53ec7135eba7f9f646fd19a000c9108379b49b9f160
```

Likely also available for browsing at:

- https://sources.debian.net/src/openjdk-9/9~b181-4/
- https://sources.debian.net/src/openjdk-9/9~b181-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `openldap=2.4.44+dfsg-8`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.44+dfsg-8+b2`
- `libldap-common=2.4.44+dfsg-8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `openssh=1:7.5p1-5`

Binary Packages:

- `openssh-client=1:7.5p1-5`

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
$ apt-get source -qq --print-uris openssh=1:7.5p1-5
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.5p1-5.dsc' openssh_7.5p1-5.dsc 2892 SHA256:f39775e585cb084eb5f477b5d34d143635f03398491a220513c9879b8d87a92b
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.5p1.orig.tar.gz' openssh_7.5p1.orig.tar.gz 1510857 SHA256:9846e3c5fab9f0547400b4d2c017992f914222b3fd1f8eee6c7dc6bc5e59f9f0
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.5p1-5.debian.tar.xz' openssh_7.5p1-5.debian.tar.xz 158776 SHA256:f23a12c7e5f2d8dabfa55e310ef7dfcbe94d15464470681ea114f022cdd842c3
```

Likely also available for browsing at:

- https://sources.debian.net/src/openssh/1:7.5p1-5/
- https://sources.debian.net/src/openssh/1:7.5p1-5/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `openssl=1.1.0f-3`

Binary Packages:

- `libssl1.1:amd64=1.1.0f-3`
- `openssl=1.1.0f-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.0f-3
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0f-3.dsc' openssl_1.1.0f-3.dsc 2583 SHA256:a4d69ed8c10134374d86fee593e85bb5165e6d539ab86294e40532a3ed276642
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0f.orig.tar.gz' openssl_1.1.0f.orig.tar.gz 5278176 SHA256:12f746f3f2493b2f39da7ecf63d7ee19c6ac9ec6a4fcd8c229da8a522cb12765
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0f.orig.tar.gz.asc' openssl_1.1.0f.orig.tar.gz.asc 455 SHA256:9f2feb0494ebcc1cf152d95a11bc966cb94bc1957d88650285db3966866801b0
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0f-3.debian.tar.xz' openssl_1.1.0f-3.debian.tar.xz 54152 SHA256:2b1ca97264b073345375a69ee95e32a9850f0288462bc58e9054dfa769f14806
```

Likely also available for browsing at:

- https://sources.debian.net/src/openssl/1.1.0f-3/
- https://sources.debian.net/src/openssl/1.1.0f-3/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `pcre3=2:8.39-3`

Binary Packages:

- `libpcre3:amd64=2:8.39-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-3
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-3.dsc' pcre3_8.39-3.dsc 2133 SHA256:3180a023c33b5eb7f0a853bec887be867d00a68da8d119d989909e40c6168fd7
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-3.debian.tar.gz' pcre3_8.39-3.debian.tar.gz 25025 SHA256:a9f0e1a96b6a017965fe69233e267682c289f2cfeb33b46fb78aedcb8cf2c16a
```

Likely also available for browsing at:

- https://sources.debian.net/src/pcre3/2:8.39-3/
- https://sources.debian.net/src/pcre3/2:8.39-3/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `pcsc-lite=1.8.22-1`

Binary Packages:

- `libpcsclite1:amd64=1.8.22-1`

Licenses: (parsed from: `/usr/share/doc/libpcsclite1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris pcsc-lite=1.8.22-1
'http://deb.debian.org/debian/pool/main/p/pcsc-lite/pcsc-lite_1.8.22-1.dsc' pcsc-lite_1.8.22-1.dsc 2225 SHA256:8a4f990542143ae0d951de9d9a4906dd6cdee716fc27d7f82bd90976999efe5f
'http://deb.debian.org/debian/pool/main/p/pcsc-lite/pcsc-lite_1.8.22.orig.tar.bz2' pcsc-lite_1.8.22.orig.tar.bz2 751724 SHA256:6a358f61ed3b66a7f6e1f4e794a94c7be4c81b7a58ec360c33791e8d7d9bd405
'http://deb.debian.org/debian/pool/main/p/pcsc-lite/pcsc-lite_1.8.22-1.debian.tar.xz' pcsc-lite_1.8.22-1.debian.tar.xz 14644 SHA256:07d413dcb710a95581c18c0162983a87084329620da4e6906ee3ba3b4d596d90
```

Likely also available for browsing at:

- https://sources.debian.net/src/pcsc-lite/1.8.22-1/
- https://sources.debian.net/src/pcsc-lite/1.8.22-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `perl=5.26.0-4`

Binary Packages:

- `libperl5.26:amd64=5.26.0-4`
- `perl=5.26.0-4`
- `perl-base=5.26.0-4`
- `perl-modules-5.26=5.26.0-4`

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
$ apt-get source -qq --print-uris perl=5.26.0-4
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.0-4.dsc' perl_5.26.0-4.dsc 2365 SHA256:ae0b8e0dfd9c85f94dea61d4e381e0367a4b59f87f57915362e775d8093a0ab0
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.0.orig.tar.xz' perl_5.26.0.orig.tar.xz 11961692 SHA256:9bf2e3d0d72aad77865c3bdbc20d3b576d769c5c255c4ceb30fdb9335266bf55
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.0-4.debian.tar.xz' perl_5.26.0-4.debian.tar.xz 159000 SHA256:e488f2ffc0e0a848452d44f87a809b1c45fbc6aa9dcce53e6902ff26d6e93a21
```

Likely also available for browsing at:

- https://sources.debian.net/src/perl/5.26.0-4/
- https://sources.debian.net/src/perl/5.26.0-4/debian/copyright (for direct copyright/license information)

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


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.13-2
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.13-2.dsc' python-defaults_2.7.13-2.dsc 2677 SHA256:80d5452cde16052caa5b9c3880ed067c3d4f2e60485a56947531a6650f6e7d94
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.13-2.tar.gz' python-defaults_2.7.13-2.tar.gz 273915 SHA256:aa376f54a9b2ca59b6f051ce0b4320d95ef60f114f90d98a90e510c3968b416a
```

Likely also available for browsing at:

- https://sources.debian.net/src/python-defaults/2.7.13-2/
- https://sources.debian.net/src/python-defaults/2.7.13-2/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `python2.7=2.7.13-4`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.13-4`
- `libpython2.7-stdlib:amd64=2.7.13-4`
- `python2.7=2.7.13-4`
- `python2.7-minimal=2.7.13-4`

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
$ apt-get source -qq --print-uris python2.7=2.7.13-4
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.13-4.dsc' python2.7_2.7.13-4.dsc 3367 SHA256:108fce09520abe38b42ca067e07d1e08d370cc188b1205521725b80578e0aac4
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.13.orig.tar.gz' python2.7_2.7.13.orig.tar.gz 17076672 SHA256:a4f05a0720ce0fd92626f0278b6b433eee9a6173ddf2bced7957dfb599a5ece1
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.13-4.diff.gz' python2.7_2.7.13-4.diff.gz 679735 SHA256:19df2c5e1ea46906be51e6456bf758a0778f65ece15d3e68a6a2bbb6dfc0cf62
```

Likely also available for browsing at:

- https://sources.debian.net/src/python2.7/2.7.13-4/
- https://sources.debian.net/src/python2.7/2.7.13-4/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `sensible-utils=0.0.9+nmu1`

Binary Packages:

- `sensible-utils=0.0.9+nmu1`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `six=1.10.0-4`

Binary Packages:

- `python-six=1.10.0-4`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.10.0-4
'http://deb.debian.org/debian/pool/main/s/six/six_1.10.0-4.dsc' six_1.10.0-4.dsc 2326 SHA256:3a320be5970dea4f43a03e3a417ccd1639b3c4a749ced220fc283a3eb20912f9
'http://deb.debian.org/debian/pool/main/s/six/six_1.10.0.orig.tar.gz' six_1.10.0.orig.tar.gz 29630 SHA256:105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a
'http://deb.debian.org/debian/pool/main/s/six/six_1.10.0-4.debian.tar.xz' six_1.10.0-4.debian.tar.xz 4012 SHA256:ab208e55d33fe4765d1ed0da62c966a3bb420009bdb9d68c32e61c619c3e61d9
```

Likely also available for browsing at:

- https://sources.debian.net/src/six/1.10.0-4/
- https://sources.debian.net/src/six/1.10.0-4/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `sqlite3=3.19.3-3`

Binary Packages:

- `libsqlite3-0:amd64=3.19.3-3`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `subversion=1.9.6-1`

Binary Packages:

- `libsvn1:amd64=1.9.6-1+b2`
- `subversion=1.9.6-1+b2`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.9.6-1
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.6-1.dsc' subversion_1.9.6-1.dsc 3005 SHA256:49358f460e8e0c3a3e5ff96cfe27eb9366f32d84bb5ab7db36ee644799b4fe44
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.6.orig.tar.gz' subversion_1.9.6.orig.tar.gz 10643280 SHA256:a400cbc46d05cb29f2d7806405bb539e9e045b24013b0f12f8f82688513321a7
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.6-1.diff.gz' subversion_1.9.6-1.diff.gz 2632243 SHA256:75f83cf5243f0c33da84bd95b03aa47cde648f23216aaea4b1dac5fd7c750efa
```

Likely also available for browsing at:

- https://sources.debian.net/src/subversion/1.9.6-1/
- https://sources.debian.net/src/subversion/1.9.6-1/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `systemd=234-2`

Binary Packages:

- `libsystemd0:amd64=234-2`
- `libudev1:amd64=234-2`

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
$ apt-get source -qq --print-uris systemd=234-2
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_234-2.3.dsc' systemd_234-2.3.dsc 4379 SHA256:14c5d6f063183f33a880bdfd5bf40a09ad67cff45116a7331420fdebae5860c1
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_234.orig.tar.gz' systemd_234.orig.tar.gz 4800186 SHA256:da3e69d10aa1c983d33833372ad4929037b411ac421fb085c8cee79ae1d80b6a
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_234-2.3.debian.tar.xz' systemd_234-2.3.debian.tar.xz 132112 SHA256:dabfa05beb1edf30ccd80d6d73af413f19b42c09bb76390767eb4e491e2bb1d1
```

Likely also available for browsing at:

- https://sources.debian.net/src/systemd/234-2/
- https://sources.debian.net/src/systemd/234-2/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `unzip=6.0-21`

Binary Packages:

- `unzip=6.0-21`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-21
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-21.dsc' unzip_6.0-21.dsc 1344 SHA256:c51fca0f9d8af19ead119addf4b56ea25443b64951b85eceb873f0ca76b378d4
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA256:036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-21.debian.tar.xz' unzip_6.0-21.debian.tar.xz 17740 SHA256:8accd9d214630a366476437a3ec1842f2e057fdce16042a7b19ee569c33490a3
```

Likely also available for browsing at:

- https://sources.debian.net/src/unzip/6.0-21/
- https://sources.debian.net/src/unzip/6.0-21/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `util-linux=2.29.2-2`

Binary Packages:

- `bsdutils=1:2.29.2-2`
- `libblkid1:amd64=2.29.2-2`
- `libfdisk1:amd64=2.29.2-2`
- `libmount1:amd64=2.29.2-2`
- `libsmartcols1:amd64=2.29.2-2`
- `libuuid1:amd64=2.29.2-2`
- `mount=2.29.2-2`
- `util-linux=2.29.2-2`

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
$ apt-get source -qq --print-uris util-linux=2.29.2-2
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.29.2-2.dsc' util-linux_2.29.2-2.dsc 3943 SHA256:fce6b97aba36641aaa2d7cd4609af5ab0e339795cfd24b198dc75976ee1f8d6d
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.29.2.orig.tar.xz' util-linux_2.29.2.orig.tar.xz 4277668 SHA256:accea4d678209f97f634f40a93b7e9fcad5915d1f4749f6c47bee6bf110fe8e3
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.29.2-2.debian.tar.xz' util-linux_2.29.2-2.debian.tar.xz 72924 SHA256:ba434eff659d02f21d2e579ead1eb00cf85c20159cb3a954dc3eafb504abf94a
```

Likely also available for browsing at:

- https://sources.debian.net/src/util-linux/2.29.2-2/
- https://sources.debian.net/src/util-linux/2.29.2-2/debian/copyright (for direct copyright/license information)

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

### `dpkg` source package: `xorg=1:7.7+19`

Binary Packages:

- `x11-common=1:7.7+19`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+19
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7+19.dsc' xorg_7.7+19.dsc 2016 SHA256:fc4a577eee67f3604c56701e21b28dccd3858da0f110b708ca3359e2718e3d46
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7+19.tar.gz' xorg_7.7+19.tar.gz 288723 SHA256:5de6df9e19009450b94f4f5307049bc2c7dc1114222f6f2f6fc60d737a33a537
```

Likely also available for browsing at:

- https://sources.debian.net/src/xorg/1:7.7+19/
- https://sources.debian.net/src/xorg/1:7.7+19/debian/copyright (for direct copyright/license information)

### `dpkg` source package: `xz-utils=5.2.2-1.3`

Binary Packages:

- `liblzma5:amd64=5.2.2-1.3`
- `xz-utils=5.2.2-1.3`

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
