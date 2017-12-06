# `buildpack-deps:buster`

## Docker Metadata

- Image ID: `sha256:315267ef6177e1533d1f16252835fad90d0f49698fc95317904df22bee3c4977`
- Created: `2017-11-04T15:24:52.004768404Z`
- Virtual Size: ~ 839.49 Mb  
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

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.2.52-3/ (for browsing the source)
- https://sources.debian.net/src/acl/2.2.52-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.2.52-3/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/adduser/3.116/ (for browsing the source)
- https://sources.debian.net/src/adduser/3.116/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/adduser/3.116/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr-util=1.6.0-2`

Binary Packages:

- `libaprutil1:amd64=1.6.0-2`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apr-util/1.6.0-2/


### `dpkg` source package: `apr=1.6.2-1`

Binary Packages:

- `libapr1:amd64=1.6.2-1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apr/1.6.2-1/


### `dpkg` source package: `apt=1.5`

Binary Packages:

- `apt=1.5`
- `libapt-pkg5.0:amd64=1.5`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apt/1.5/


### `dpkg` source package: `atk1.0=2.26.0-2`

Binary Packages:

- `libatk1.0-0:amd64=2.26.0-2`
- `libatk1.0-data=2.26.0-2`

Licenses: (parsed from: `/usr/share/doc/libatk1.0-0/copyright`, `/usr/share/doc/libatk1.0-data/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris atk1.0=2.26.0-2
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.26.0-2.dsc' atk1.0_2.26.0-2.dsc 2807 SHA256:b667d253f54c991acd7778d8424916cadf75893e6e45d7c5edc619f7b4d626f9
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.26.0.orig.tar.xz' atk1.0_2.26.0.orig.tar.xz 710436 SHA256:eafe49d5c4546cb723ec98053290d7e0b8d85b3fdb123938213acb7bb4178827
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.26.0-2.debian.tar.xz' atk1.0_2.26.0-2.debian.tar.xz 10936 SHA256:ed114fd8b1c84695edc3335dd6b7298b7c03dc3b704c7fc17409311c86905dc7
```

Other potentially useful URLs:

- https://sources.debian.net/src/atk1.0/2.26.0-2/ (for browsing the source)
- https://sources.debian.net/src/atk1.0/2.26.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/atk1.0/2.26.0-2/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/attr/1:2.4.47-2/ (for browsing the source)
- https://sources.debian.net/src/attr/1:2.4.47-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/attr/1:2.4.47-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `audit=1:2.7.7-1`

Binary Packages:

- `libaudit-common=1:2.7.7-1`
- `libaudit1:amd64=1:2.7.7-1+b2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/audit/1:2.7.7-1/


### `dpkg` source package: `autoconf=2.69-11`

Binary Packages:

- `autoconf=2.69-11`

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
$ apt-get source -qq --print-uris autoconf=2.69-11
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-11.dsc' autoconf_2.69-11.dsc 1948 SHA256:249d25370d4f4d1d0cf7b37bfd178bb6fa87011566dd82230991f64814a39dde
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-11.debian.tar.xz' autoconf_2.69-11.debian.tar.xz 23540 SHA256:885b3947fdead5b737f6437b80a90a41c5d611791573c5d0cfef50a59c943c1b
```

Other potentially useful URLs:

- https://sources.debian.net/src/autoconf/2.69-11/ (for browsing the source)
- https://sources.debian.net/src/autoconf/2.69-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autoconf/2.69-11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `automake-1.15=1:1.15.1-3`

Binary Packages:

- `automake=1:1.15.1-3`

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
$ apt-get source -qq --print-uris automake-1.15=1:1.15.1-3
'http://deb.debian.org/debian/pool/main/a/automake-1.15/automake-1.15_1.15.1-3.dsc' automake-1.15_1.15.1-3.dsc 2264 SHA256:f19b0bbcf91ff11908730d64d6377d0d223dd70e32ac7946a8e745c0ed82dac8
'http://deb.debian.org/debian/pool/main/a/automake-1.15/automake-1.15_1.15.1.orig.tar.xz' automake-1.15_1.15.1.orig.tar.xz 1509496 SHA256:af6ba39142220687c500f79b4aa2f181d9b24e4f8d8ec497cea4ba26c64bedaf
'http://deb.debian.org/debian/pool/main/a/automake-1.15/automake-1.15_1.15.1-3.debian.tar.xz' automake-1.15_1.15.1-3.debian.tar.xz 13748 SHA256:029739edc3fee410b74af5df2de2f9742bf10720230f8cbac76fab100b6e7b2a
```

Other potentially useful URLs:

- https://sources.debian.net/src/automake-1.15/1:1.15.1-3/ (for browsing the source)
- https://sources.debian.net/src/automake-1.15/1:1.15.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/automake-1.15/1:1.15.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `autotools-dev=20161112.1+nmu1`

Binary Packages:

- `autotools-dev=20161112.1+nmu1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20161112.1+nmu1
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20161112.1+nmu1.dsc' autotools-dev_20161112.1+nmu1.dsc 1675 SHA256:74baa661a78ee3bbcbffb4a92d7e9cd3197867185c3e46537665db77a86854d8
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20161112.1+nmu1.tar.xz' autotools-dev_20161112.1+nmu1.tar.xz 65624 SHA256:d4c36e186de8655917b0b8d63712a5dc48493f04a240e77870b1025a1654c890
```

Other potentially useful URLs:

- https://sources.debian.net/src/autotools-dev/20161112.1+nmu1/ (for browsing the source)
- https://sources.debian.net/src/autotools-dev/20161112.1+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autotools-dev/20161112.1+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `avahi=0.7-3`

Binary Packages:

- `libavahi-client3:amd64=0.7-3`
- `libavahi-common-data:amd64=0.7-3`
- `libavahi-common3:amd64=0.7-3`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.7-3
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.7-3.dsc' avahi_0.7-3.dsc 3911 SHA256:b6fd44fc4044283e5a0db3558db08329548e86741da879f4da42ec817706e72d
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.7.orig.tar.gz' avahi_0.7.orig.tar.gz 1333400 SHA256:57a99b5dfe7fdae794e3d1ee7a62973a368e91e414bd0dfa5d84434de5b14804
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.7-3.debian.tar.xz' avahi_0.7-3.debian.tar.xz 30472 SHA256:b711982b1a1d301b6c40b29318c25617cb5eaedb212ce6acb4e6fbfac221f55c
```

Other potentially useful URLs:

- https://sources.debian.net/src/avahi/0.7-3/ (for browsing the source)
- https://sources.debian.net/src/avahi/0.7-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/avahi/0.7-3/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/10/ (for browsing the source)
- https://sources.debian.net/src/base-files/10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.5.44`

Binary Packages:

- `base-passwd=3.5.44`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.44
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.44.dsc' base-passwd_3.5.44.dsc 1685 SHA256:22a5db1e9bb71fa8a4d682b3f9c01470a61b8041eb6212471181c6808b268c13
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.44.tar.xz' base-passwd_3.5.44.tar.xz 52644 SHA256:f17a0746024572e86e60e4614cf226a81ffe682ceaf1a1fce9dc1a8002683e90
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.44/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.44/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.44/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/bash/4.4-5/ (for browsing the source)
- https://sources.debian.net/src/bash/4.4-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/4.4-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `binutils=2.29.1-6`

Binary Packages:

- `binutils=2.29.1-6`
- `binutils-common:amd64=2.29.1-6`
- `binutils-x86-64-linux-gnu=2.29.1-6`
- `libbinutils:amd64=2.29.1-6`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/binutils/2.29.1-6/


### `dpkg` source package: `bzip2=1.0.6-8.1`

Binary Packages:

- `bzip2=1.0.6-8.1`
- `libbz2-1.0:amd64=1.0.6-8.1`
- `libbz2-dev:amd64=1.0.6-8.1`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8.1
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-8.1.dsc' bzip2_1.0.6-8.1.dsc 2082 SHA256:d80deed11a1419ad090cb486dd2335850fd8719b809c32002dea04b485f55dbd
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-8.1.debian.tar.bz2' bzip2_1.0.6-8.1.debian.tar.bz2 59875 SHA256:bdbe7bf29e014e44d79bb7c733fe63cae990ab50882a4a07867cf69c61ad72b7
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.6-8.1/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.6-8.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.6-8.1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20170717/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20170717/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20170717/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cairo=1.15.8-2`

Binary Packages:

- `libcairo-gobject2:amd64=1.15.8-2`
- `libcairo-script-interpreter2:amd64=1.15.8-2`
- `libcairo2:amd64=1.15.8-2`
- `libcairo2-dev=1.15.8-2`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.15.8-2
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.15.8-2.dsc' cairo_1.15.8-2.dsc 2558 SHA256:ef943d81052180d6f1bbd0e57802def19758c0c0ad283f3ba0a52f1f326f31f4
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.15.8.orig.tar.xz' cairo_1.15.8.orig.tar.xz 41841808 SHA256:3224260a4f8e22e7ea95faf706ae111b974833dd74185be1db5ebc7618a98464
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.15.8-2.debian.tar.xz' cairo_1.15.8-2.debian.tar.xz 29100 SHA256:8eaa5425060b88e99e35b18a68053bf8442898bc08f6430dd27e5b21c05a6dd7
```

Other potentially useful URLs:

- https://sources.debian.net/src/cairo/1.15.8-2/ (for browsing the source)
- https://sources.debian.net/src/cairo/1.15.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cairo/1.15.8-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.230`

Binary Packages:

- `libdebconfclient0:amd64=0.230`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/cdebconf/0.230/


### `dpkg` source package: `coreutils=8.26-3`

Binary Packages:

- `coreutils=8.26-3`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/coreutils/8.26-3/


### `dpkg` source package: `cups=2.2.5-2`

Binary Packages:

- `libcups2:amd64=2.2.5-2`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2.0 with AOSDL exception`
- `LGPL-2`
- `LGPL-2.0 with AOSDL exception`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/cups/2.2.5-2/


### `dpkg` source package: `curl=7.56.1-1`

Binary Packages:

- `curl=7.56.1-1`
- `libcurl3:amd64=7.56.1-1`
- `libcurl3-gnutls:amd64=7.56.1-1`
- `libcurl4-openssl-dev:amd64=7.56.1-1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.56.1-1
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.56.1-1.dsc' curl_7.56.1-1.dsc 2737 SHA256:3b4a9d68bb96db9838536916678cfef384bf7d0455dad98a36550f07ea0eb3ca
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.56.1.orig.tar.gz' curl_7.56.1.orig.tar.gz 3799766 SHA256:961a25531d72a843dfcce87b290e7a882f2d376f3b88de11df009710019c5b16
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.56.1-1.debian.tar.xz' curl_7.56.1-1.debian.tar.xz 27512 SHA256:a99a91f2a10fba2b13ecacbba55287b1c1f6613cc479030c4d5fcc1a74fd1740
```

Other potentially useful URLs:

- https://sources.debian.net/src/curl/7.56.1-1/ (for browsing the source)
- https://sources.debian.net/src/curl/7.56.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/curl/7.56.1-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.27~101-g0780600+dfsg-3/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.27~101-g0780600+dfsg-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.27~101-g0780600+dfsg-3/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.8-2.5/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.8-2.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.8-2.5/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/db-defaults/5.3.1/ (for browsing the source)
- https://sources.debian.net/src/db-defaults/5.3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db-defaults/5.3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28-13.1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13.1`
- `libdb5.3-dev=5.3.28-13.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-13.1
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-13.1.dsc' db5.3_5.3.28-13.1.dsc 3124 SHA256:8941edcad8e16fe6bc76ffcbe86dbdaadc654b5ed994654689cf5408602a84f3
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-13.1.debian.tar.xz' db5.3_5.3.28-13.1.debian.tar.xz 28180 SHA256:9e04b9269be51de4e73536584addc61e19b29e34f769e263c180228064c72ec9
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28-13.1/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28-13.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28-13.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dbus=1.11.22-1`

Binary Packages:

- `libdbus-1-3:amd64=1.11.22-1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/dbus/1.11.22-1/


### `dpkg` source package: `debconf=1.5.63`

Binary Packages:

- `debconf=1.5.63`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/debconf/1.5.63/


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

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2017.6/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2017.6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2017.6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.8.2`

Binary Packages:

- `debianutils=4.8.2`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/debianutils/4.8.2/


### `dpkg` source package: `dh-python=2.20170125`

Binary Packages:

- `dh-python=2.20170125`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=2.20170125
'http://deb.debian.org/debian/pool/main/d/dh-python/dh-python_2.20170125.dsc' dh-python_2.20170125.dsc 1908 SHA256:ef4f2951cea36ae4aac29126a1017505f98b595432fb5bdac0f21b4b4d72c1b4
'http://deb.debian.org/debian/pool/main/d/dh-python/dh-python_2.20170125.tar.xz' dh-python_2.20170125.tar.xz 91332 SHA256:2e09c162ee2442a03511b7ebe83896e1e3c1df79ce97a22d2f8a8b4cfec9f1e3
```

Other potentially useful URLs:

- https://sources.debian.net/src/dh-python/2.20170125/ (for browsing the source)
- https://sources.debian.net/src/dh-python/2.20170125/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dh-python/2.20170125/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.6-1/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `djvulibre=3.5.27.1-8`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.27.1-8`
- `libdjvulibre-text=3.5.27.1-8`
- `libdjvulibre21:amd64=3.5.27.1-8`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.27.1-8
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.27.1-8.dsc' djvulibre_3.5.27.1-8.dsc 2409 SHA256:5738076776f1f197bbed13160315c9c84fe8bac7c6e175138b87ca8319f12e68
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.27.1.orig.tar.gz' djvulibre_3.5.27.1.orig.tar.gz 3231662 SHA256:77f07de3f1039aa19eba2eb3170d9ce9a0918ba7b704a59cfaf08f42fcc52144
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.27.1-8.debian.tar.xz' djvulibre_3.5.27.1-8.debian.tar.xz 56112 SHA256:d0b0af368b8e410b0015fd7d618daa545c76d381de17f9a500830a1141cb9742
```

Other potentially useful URLs:

- https://sources.debian.net/src/djvulibre/3.5.27.1-8/ (for browsing the source)
- https://sources.debian.net/src/djvulibre/3.5.27.1-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/djvulibre/3.5.27.1-8/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.18.24/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.18.24/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.18.24/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.19.0.4`

Binary Packages:

- `dpkg-dev=1.19.0.4`
- `libdpkg-perl=1.19.0.4`

Licenses: (parsed from: `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.0.4
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.0.4.dsc' dpkg_1.19.0.4.dsc 1977 SHA256:192f5f044373ee10d1ca123fe3038ef3482bba84899d843e5769bbcd5e402fe7
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.0.4.tar.xz' dpkg_1.19.0.4.tar.xz 4559160 SHA256:98a66bb19012f9bde848e1e02903fe411dd0b9e61921108ee4323c4167e6990a
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.19.0.4/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.19.0.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.19.0.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.43.6-1`

Binary Packages:

- `e2fslibs:amd64=1.43.6-1`
- `e2fsprogs=1.43.6-1`
- `libss2:amd64=1.43.6-1`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/e2fsprogs/1.43.6-1/


### `dpkg` source package: `e2fsprogs=1.43.7-1`

Binary Packages:

- `comerr-dev=2.1-1.43.7-1`
- `libcomerr2:amd64=1.43.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.43.7-1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.7-1.dsc' e2fsprogs_1.43.7-1.dsc 2328 SHA256:dc4f9463d1c7611e46d35b64d9e6d231528cbb6b28b4cbf3f3573cf46493024a
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.7.orig.tar.gz' e2fsprogs_1.43.7.orig.tar.gz 7492811 SHA256:87035f2eae8da5f9869f78ffc177969b4e3cf75a5da489521c1ffe4268e1a1c4
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.7.orig.tar.gz.asc' e2fsprogs_1.43.7.orig.tar.gz.asc 488 SHA256:f36ee349b541b7c8d8e3acee920ab2f33bf30d446aa8f94d53b960cb11efd307
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.7-1.debian.tar.xz' e2fsprogs_1.43.7-1.debian.tar.xz 75428 SHA256:c184efb5035851cdf192a7ab86823b9e41f3bf11e212ae2861b97f8dcdadb929
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.43.7-1/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.43.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.43.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `elfutils=0.170-0.1`

Binary Packages:

- `libelf1:amd64=0.170-0.1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.170-0.1
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.170-0.1.dsc' elfutils_0.170-0.1.dsc 2293 SHA256:a4f4a38b6bbb939080323243584362129b54a1cedc873b3c449067c3055e7523
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.170.orig.tar.bz2' elfutils_0.170.orig.tar.bz2 8358001 SHA256:1f844775576b79bdc9f9c717a50058d08620323c1e935458223a12f249c9e066
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.170-0.1.debian.tar.xz' elfutils_0.170-0.1.debian.tar.xz 37504 SHA256:71accbdfb81c3abe45e746b96bd62cc08d2b3c4c4073acece2e6a354f1595fa2
```

Other potentially useful URLs:

- https://sources.debian.net/src/elfutils/0.170-0.1/ (for browsing the source)
- https://sources.debian.net/src/elfutils/0.170-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/elfutils/0.170-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.2.3-1`

Binary Packages:

- `libexpat1:amd64=2.2.3-1`
- `libexpat1-dev:amd64=2.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/expat/2.2.3-1/


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

Other potentially useful URLs:

- https://sources.debian.net/src/explorercanvas/0.r3-4/ (for browsing the source)
- https://sources.debian.net/src/explorercanvas/0.r3-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/explorercanvas/0.r3-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fftw3=3.3.6p2-2`

Binary Packages:

- `libfftw3-double3:amd64=3.3.6p2-2`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.6p2-2
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.6p2-2.dsc' fftw3_3.3.6p2-2.dsc 3081 SHA256:ad08684ec0e6eb1b74b473c676c81826183b026936fe202e182ef3dae04e3720
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.6p2.orig.tar.gz' fftw3_3.3.6p2.orig.tar.gz 4185261 SHA256:a5de35c5c824a78a058ca54278c706cdf3d4abba1c56b63531c2cb05f5d57da2
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.6p2-2.debian.tar.xz' fftw3_3.3.6p2-2.debian.tar.xz 13584 SHA256:6027906dcd9ff00d1005a621ff2999f1ce926512a069b3f5bd4caf6a36a2cbc7
```

Other potentially useful URLs:

- https://sources.debian.net/src/fftw3/3.3.6p2-2/ (for browsing the source)
- https://sources.debian.net/src/fftw3/3.3.6p2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fftw3/3.3.6p2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `file=1:5.32-1`

Binary Packages:

- `file=1:5.32-1`
- `libmagic-mgc=1:5.32-1`
- `libmagic1:amd64=1:5.32-1`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.32-1
'http://deb.debian.org/debian/pool/main/f/file/file_5.32-1.dsc' file_5.32-1.dsc 2124 SHA256:86d4ea1ff36d73c501c786e74641755a14a711d6a7159756ba484d4c0961d9b4
'http://deb.debian.org/debian/pool/main/f/file/file_5.32.orig.tar.xz' file_5.32.orig.tar.xz 584352 SHA256:07627dc16c9a5b64352b00f24afb8d328b9ecade82afe2e2fa55201d324fd360
'http://deb.debian.org/debian/pool/main/f/file/file_5.32-1.debian.tar.xz' file_5.32-1.debian.tar.xz 31948 SHA256:be112d3500f7ea6f3c12e7159e1c0624e175593b3609a9c242472a4e03221268
```

Other potentially useful URLs:

- https://sources.debian.net/src/file/1:5.32-1/ (for browsing the source)
- https://sources.debian.net/src/file/1:5.32-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/file/1:5.32-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.6.0+git+20170729-2`

Binary Packages:

- `findutils=4.6.0+git+20170729-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/findutils/4.6.0+git+20170729-2/


### `dpkg` source package: `fontconfig=2.12.3-0.2`

Binary Packages:

- `fontconfig=2.12.3-0.2`
- `fontconfig-config=2.12.3-0.2`
- `libfontconfig1:amd64=2.12.3-0.2`
- `libfontconfig1-dev:amd64=2.12.3-0.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/fontconfig/2.12.3-0.2/


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

Other potentially useful URLs:

- https://sources.debian.net/src/fonts-dejavu/2.37-1/ (for browsing the source)
- https://sources.debian.net/src/fonts-dejavu/2.37-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fonts-dejavu/2.37-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `freetype=2.8.1-0.1`

Binary Packages:

- `libfreetype6:amd64=2.8.1-0.1`
- `libfreetype6-dev=2.8.1-0.1`

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
$ apt-get source -qq --print-uris freetype=2.8.1-0.1
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.8.1-0.1.dsc' freetype_2.8.1-0.1.dsc 1816 SHA256:713acf59971b6b7a35f2d04cd1fdefcf53aaecd8c40ae53c25f618726fc27e16
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.8.1.orig.tar.gz' freetype_2.8.1.orig.tar.gz 4242784 SHA256:a7531cb8c2f6b709896f018380ad97e677e243847ff8a098d1b8b5d23e9d74d7
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.8.1-0.1.diff.gz' freetype_2.8.1-0.1.diff.gz 36865 SHA256:5958d1bd6fb12bb7047de9da36c5cd8057ce18e704b64c8482ba1e5ddbd89537
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetype/2.8.1-0.1/ (for browsing the source)
- https://sources.debian.net/src/freetype/2.8.1-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetype/2.8.1-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-6=6.4.0-7`

Binary Packages:

- `gcc-6-base:amd64=6.4.0-7`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-6=6.4.0-7
'http://deb.debian.org/debian/pool/main/g/gcc-6/gcc-6_6.4.0-7.dsc' gcc-6_6.4.0-7.dsc 19495 SHA256:83ec86854680b4793dcf737c4f2167a1c8629bb5b2c3f3e15ba650fecd4cff5c
'http://deb.debian.org/debian/pool/main/g/gcc-6/gcc-6_6.4.0.orig.tar.gz' gcc-6_6.4.0.orig.tar.gz 81632257 SHA256:13220c723ddb7a69ff5690070b245886ac99afe5a31ee106ac36d6f013234a67
'http://deb.debian.org/debian/pool/main/g/gcc-6/gcc-6_6.4.0-7.diff.gz' gcc-6_6.4.0-7.diff.gz 1706240 SHA256:86d8530e94e00a21608b7092acd48e704fb35eb8477a43bfe004ebffc444737f
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-6/6.4.0-7/ (for browsing the source)
- https://sources.debian.net/src/gcc-6/6.4.0-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-6/6.4.0-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-7=7.2.0-12`

Binary Packages:

- `cpp-7=7.2.0-12`
- `g++-7=7.2.0-12`
- `gcc-7=7.2.0-12`
- `gcc-7-base:amd64=7.2.0-12`
- `libasan4:amd64=7.2.0-12`
- `libatomic1:amd64=7.2.0-12`
- `libcc1-0:amd64=7.2.0-12`
- `libcilkrts5:amd64=7.2.0-12`
- `libgcc-7-dev:amd64=7.2.0-12`
- `libgcc1:amd64=1:7.2.0-12`
- `libgomp1:amd64=7.2.0-12`
- `libitm1:amd64=7.2.0-12`
- `liblsan0:amd64=7.2.0-12`
- `libmpx2:amd64=7.2.0-12`
- `libquadmath0:amd64=7.2.0-12`
- `libstdc++-7-dev:amd64=7.2.0-12`
- `libstdc++6:amd64=7.2.0-12`
- `libtsan0:amd64=7.2.0-12`
- `libubsan0:amd64=7.2.0-12`

Licenses: (parsed from: `/usr/share/doc/cpp-7/copyright`, `/usr/share/doc/g++-7/copyright`, `/usr/share/doc/gcc-7/copyright`, `/usr/share/doc/gcc-7-base/copyright`, `/usr/share/doc/libasan4/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-7-dev/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-7-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gcc-7/7.2.0-12/


### `dpkg` source package: `gcc-defaults=1.173d1`

Binary Packages:

- `cpp=4:7.2.0-1d1`
- `g++=4:7.2.0-1d1`
- `gcc=4:7.2.0-1d1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.173d1
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.173d1.dsc' gcc-defaults_1.173d1.dsc 13267 SHA256:e6a297225d1a7fec8efa9469d5494f1eef5a97a1f367e01d00c9fa8c9ceb4032
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.173d1.tar.gz' gcc-defaults_1.173d1.tar.gz 70353 SHA256:932237a594dff911306502d7ba0fb9e84f3e0a658930ef28d8aaedfeeeb46449
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-defaults/1.173d1/ (for browsing the source)
- https://sources.debian.net/src/gcc-defaults/1.173d1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-defaults/1.173d1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.8.3-14/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.8.3-14/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.8.3-14/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdk-pixbuf=2.36.11-1`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.36.11-1`
- `libgdk-pixbuf2.0-0:amd64=2.36.11-1`
- `libgdk-pixbuf2.0-common=2.36.11-1`
- `libgdk-pixbuf2.0-dev=2.36.11-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MPL-1.1-or-LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.36.11-1
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11-1.dsc' gdk-pixbuf_2.36.11-1.dsc 2893 SHA256:51c30d563a34fedf4b3a4ad32ab9147598a2f7b266186bc9e625566779432b95
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11.orig.tar.xz' gdk-pixbuf_2.36.11.orig.tar.xz 5675908 SHA256:ae62ab87250413156ed72ef756347b10208c00e76b222d82d9ed361ed9dde2f3
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11-1.debian.tar.xz' gdk-pixbuf_2.36.11-1.debian.tar.xz 13540 SHA256:0af4f3d5d41e051327e516492f197ca56a03b64c462cc8ca0bea66df3d75d8d5
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdk-pixbuf/2.36.11-1/ (for browsing the source)
- https://sources.debian.net/src/gdk-pixbuf/2.36.11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdk-pixbuf/2.36.11-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `geoip=1.6.11-2`

Binary Packages:

- `geoip-bin=1.6.11-2`
- `libgeoip-dev=1.6.11-2`
- `libgeoip1:amd64=1.6.11-2`

Licenses: (parsed from: `/usr/share/doc/geoip-bin/copyright`, `/usr/share/doc/libgeoip-dev/copyright`, `/usr/share/doc/libgeoip1/copyright`)

- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/geoip/1.6.11-2/


### `dpkg` source package: `git=1:2.14.2-1`

Binary Packages:

- `git=1:2.14.2-1`
- `git-man=1:2.14.2-1`

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
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/git/1:2.14.2-1/


### `dpkg` source package: `glib2.0=2.54.1-1`

Binary Packages:

- `libglib2.0-0:amd64=2.54.1-1`
- `libglib2.0-bin=2.54.1-1`
- `libglib2.0-data=2.54.1-1`
- `libglib2.0-dev:amd64=2.54.1-1`
- `libglib2.0-dev-bin=2.54.1-1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.54.1-1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.54.1-1.dsc' glib2.0_2.54.1-1.dsc 3267 SHA256:f8b7cc4bc512dab35fbfc2f7720451b7dbe7d79ac559a25b2ca68a79a64ad1ca
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.54.1.orig.tar.xz' glib2.0_2.54.1.orig.tar.xz 7829104 SHA256:50c01b1419324f10fbf9b9709ec2164b18586968bdce7540583bf32302cf47a3
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.54.1-1.debian.tar.xz' glib2.0_2.54.1-1.debian.tar.xz 71816 SHA256:a61ac5240c6a67db15ecc6f6349d1f4be53329cde8eecff1d5a40f35eb5d724b
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.54.1-1/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.54.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.54.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.24-17`

Binary Packages:

- `libc-bin=2.24-17`
- `libc-dev-bin=2.24-17`
- `libc6:amd64=2.24-17`
- `libc6-dev:amd64=2.24-17`
- `multiarch-support=2.24-17`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.24-17
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-17.dsc' glibc_2.24-17.dsc 8226 SHA256:8f8db58051f431525439dae692242124befba9cfab64b406ec8964818ba46a43
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24.orig.tar.xz' glibc_2.24.orig.tar.xz 13921912 SHA256:ed71e8afd2b270f7947a2cea2457a31e1ca4fac08e2731d80edd7ec1730ec84f
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-17.debian.tar.xz' glibc_2.24-17.debian.tar.xz 1036004 SHA256:a66991c3d29bb30e57ef8eaeb1732b3694689cb8d4eb999ccb018076a02c5940
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.24-17/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.24-17/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.24-17/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.1.2+dfsg-1`

Binary Packages:

- `libgmp10:amd64=2:6.1.2+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gmp/2:6.1.2+dfsg-1/


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

Other potentially useful URLs:

- https://sources.debian.net/src/gnome-icon-theme/3.12.0-2/ (for browsing the source)
- https://sources.debian.net/src/gnome-icon-theme/3.12.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnome-icon-theme/3.12.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.1-5`

Binary Packages:

- `dirmngr=2.2.1-5`
- `gnupg=2.2.1-5`
- `gnupg-l10n=2.2.1-5`
- `gnupg-utils=2.2.1-5`
- `gpg=2.2.1-5`
- `gpg-agent=2.2.1-5`
- `gpg-wks-client=2.2.1-5`
- `gpg-wks-server=2.2.1-5`
- `gpgconf=2.2.1-5`
- `gpgsm=2.2.1-5`
- `gpgv=2.2.1-5`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

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
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gnupg2/2.2.1-5/


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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gnutls28/3.5.15-2/


### `dpkg` source package: `gobject-introspection=1.54.1-2`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.54.1-2`
- `gir1.2-glib-2.0:amd64=1.54.1-2`
- `libgirepository-1.0-1:amd64=1.54.1-2`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gobject-introspection/1.54.1-2/


### `dpkg` source package: `graphite2=1.3.10-6`

Binary Packages:

- `libgraphite2-3:amd64=1.3.10-6`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MPL-1.1`
- `custom-sil-open-font-license`

Source:

```console
$ apt-get source -qq --print-uris graphite2=1.3.10-6
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.10-6.dsc' graphite2_1.3.10-6.dsc 2311 SHA256:5697f2fea433f82904978e7973235c82e34e8dedbe5d46f9c6f7777100d01524
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.10.orig.tar.gz' graphite2_1.3.10.orig.tar.gz 3889647 SHA256:90fde3b2f9ea95d68ffb19278d07d9b8a7efa5ba0e413bebcea802ce05cda1ae
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.10-6.debian.tar.xz' graphite2_1.3.10-6.debian.tar.xz 11444 SHA256:ac58bea6ee466258b3d68f1a4ffd502392e5bee9fe9c3db5172554273ace079c
```

Other potentially useful URLs:

- https://sources.debian.net/src/graphite2/1.3.10-6/ (for browsing the source)
- https://sources.debian.net/src/graphite2/1.3.10-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/graphite2/1.3.10-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `graphviz=2.38.0-18`

Binary Packages:

- `libcdt5=2.38.0-18`
- `libcgraph6=2.38.0-18`
- `libgraphviz-dev=2.38.0-18`
- `libgvc6=2.38.0-18`
- `libgvc6-plugins-gtk=2.38.0-18`
- `libgvpr2=2.38.0-18`
- `libpathplan4=2.38.0-18`
- `libxdot4=2.38.0-18`

Licenses: (parsed from: `/usr/share/doc/libcdt5/copyright`, `/usr/share/doc/libcgraph6/copyright`, `/usr/share/doc/libgraphviz-dev/copyright`, `/usr/share/doc/libgvc6/copyright`, `/usr/share/doc/libgvc6-plugins-gtk/copyright`, `/usr/share/doc/libgvpr2/copyright`, `/usr/share/doc/libpathplan4/copyright`, `/usr/share/doc/libxdot4/copyright`)

- `EPL-1.0`
- `MIT`
- `X/MIT`
- `zlib-style`

Source:

```console
$ apt-get source -qq --print-uris graphviz=2.38.0-18
'http://deb.debian.org/debian/pool/main/g/graphviz/graphviz_2.38.0-18.dsc' graphviz_2.38.0-18.dsc 3254 SHA256:5edef7a53ef60b4476a62f07c9dd9e4de42653e17464927aacdf1a93c98c7126
'http://deb.debian.org/debian/pool/main/g/graphviz/graphviz_2.38.0.orig.tar.gz' graphviz_2.38.0.orig.tar.gz 25848858 SHA256:81aa238d9d4a010afa73a9d2a704fc3221c731e1e06577c2ab3496bdef67859e
'http://deb.debian.org/debian/pool/main/g/graphviz/graphviz_2.38.0-18.debian.tar.xz' graphviz_2.38.0-18.debian.tar.xz 43448 SHA256:ea65f4aa6b661e1026a18118bc2fa517af398629699b17fccccc7e685b2ec619
```

Other potentially useful URLs:

- https://sources.debian.net/src/graphviz/2.38.0-18/ (for browsing the source)
- https://sources.debian.net/src/graphviz/2.38.0-18/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/graphviz/2.38.0-18/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.1-2/ (for browsing the source)
- https://sources.debian.net/src/grep/3.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gtk+2.0=2.24.31-2`

Binary Packages:

- `libgtk2.0-0:amd64=2.24.31-2`
- `libgtk2.0-common=2.24.31-2`

Licenses: (parsed from: `/usr/share/doc/libgtk2.0-0/copyright`, `/usr/share/doc/libgtk2.0-common/copyright`)

- `LGPL-2`
- `other`

Source:

```console
$ apt-get source -qq --print-uris gtk+2.0=2.24.31-2
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.31-2.dsc' gtk+2.0_2.24.31-2.dsc 3839 SHA256:1588a80a0f8ef6b1ddeb92c629fc9da1930e13e5bba5cb0f7bbbee335e161d09
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.31.orig.tar.xz' gtk+2.0_2.24.31.orig.tar.xz 12805344 SHA256:68c1922732c7efc08df4656a5366dcc3afdc8791513400dac276009b40954658
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.31-2.debian.tar.xz' gtk+2.0_2.24.31-2.debian.tar.xz 87400 SHA256:56f1296c0f6fc3c319abee130fbd6c776b502ee53d8c8709ea42cd0f98b9d130
```

Other potentially useful URLs:

- https://sources.debian.net/src/gtk+2.0/2.24.31-2/ (for browsing the source)
- https://sources.debian.net/src/gtk+2.0/2.24.31-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gtk+2.0/2.24.31-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gtk+3.0=3.22.24-3`

Binary Packages:

- `gtk-update-icon-cache=3.22.24-3`

Licenses: (parsed from: `/usr/share/doc/gtk-update-icon-cache/copyright`)

- `Apache-2.0`
- `Expat`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `SWL`
- `other`

Source:

```console
$ apt-get source -qq --print-uris gtk+3.0=3.22.24-3
'http://deb.debian.org/debian/pool/main/g/gtk+3.0/gtk+3.0_3.22.24-3.dsc' gtk+3.0_3.22.24-3.dsc 3893 SHA256:19305930a8b17be2b1558c4b6ff018696d9a912bed51c776a29b1fecbc2bdf36
'http://deb.debian.org/debian/pool/main/g/gtk+3.0/gtk+3.0_3.22.24.orig.tar.xz' gtk+3.0_3.22.24.orig.tar.xz 18866048 SHA256:cbb16e4cfc928ab8f5f22f7290616f95f6ebc8c97cc724a2007b07ced833592b
'http://deb.debian.org/debian/pool/main/g/gtk+3.0/gtk+3.0_3.22.24-3.debian.tar.xz' gtk+3.0_3.22.24-3.debian.tar.xz 146880 SHA256:edef2954c6332d55554a53789d7c732e45b6650f6d11f3b6ed616b08a2814efa
```

Other potentially useful URLs:

- https://sources.debian.net/src/gtk+3.0/3.22.24-3/ (for browsing the source)
- https://sources.debian.net/src/gtk+3.0/3.22.24-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gtk+3.0/3.22.24-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gts=0.7.6+darcs121130-4`

Binary Packages:

- `libgts-0.7-5:amd64=0.7.6+darcs121130-4`

Licenses: (parsed from: `/usr/share/doc/libgts-0.7-5/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gts=0.7.6+darcs121130-4
'http://deb.debian.org/debian/pool/main/g/gts/gts_0.7.6+darcs121130-4.dsc' gts_0.7.6+darcs121130-4.dsc 2170 SHA256:3d7dbf72a2194891a485d03f8a002e8d149dc59a915a7bbf36b42c53408ef733
'http://deb.debian.org/debian/pool/main/g/gts/gts_0.7.6+darcs121130.orig.tar.gz' gts_0.7.6+darcs121130.orig.tar.gz 880569 SHA256:c23f72ab74bbf65599f8c0b599d6336fabe1ec2a09c19b70544eeefdc069b73b
'http://deb.debian.org/debian/pool/main/g/gts/gts_0.7.6+darcs121130-4.debian.tar.bz2' gts_0.7.6+darcs121130-4.debian.tar.bz2 13837 SHA256:1fcf9c79ca0b4fc3662de645ba4e65564ea974566a3ecd730e9908f1adc425cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/gts/0.7.6+darcs121130-4/ (for browsing the source)
- https://sources.debian.net/src/gts/0.7.6+darcs121130-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gts/0.7.6+darcs121130-4/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.6-5/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.6-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.6-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `harfbuzz=1.6.2-1`

Binary Packages:

- `libharfbuzz0b:amd64=1.6.2-1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.6.2-1
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.6.2-1.dsc' harfbuzz_1.6.2-1.dsc 2658 SHA256:b195d0ba924f34d94cee1570c3c7f8c178f5157b24eb4ac3c5aaaeb25a2aae81
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.6.2.orig.tar.bz2' harfbuzz_1.6.2.orig.tar.bz2 1639114 SHA256:ceb8cbd652829b5fa680a71d89cb79cac7afa104e9484fbd23a24e71c0d6e80e
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.6.2-1.debian.tar.xz' harfbuzz_1.6.2-1.debian.tar.xz 8760 SHA256:eff304c291cc55fc70b243a8993ea5dc0987b1b14c060c8203de6dddadb585e5
```

Other potentially useful URLs:

- https://sources.debian.net/src/harfbuzz/1.6.2-1/ (for browsing the source)
- https://sources.debian.net/src/harfbuzz/1.6.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/harfbuzz/1.6.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hicolor-icon-theme=0.17-1`

Binary Packages:

- `hicolor-icon-theme=0.17-1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.17-1
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-1.dsc' hicolor-icon-theme_0.17-1.dsc 1592 SHA256:c60867c2937f943439da5b567bf7344dbef4834ed5af85ead84c091a17f1312c
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17.orig.tar.xz' hicolor-icon-theme_0.17.orig.tar.xz 53016 SHA256:317484352271d18cbbcfac3868eab798d67fff1b8402e740baa6ff41d588a9d8
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-1.debian.tar.xz' hicolor-icon-theme_0.17-1.debian.tar.xz 3408 SHA256:3318c99b4a7dda3bc7b6a912c951ce5366cc46773c41dddd2ea0599f47357c56
```

Other potentially useful URLs:

- https://sources.debian.net/src/hicolor-icon-theme/0.17-1/ (for browsing the source)
- https://sources.debian.net/src/hicolor-icon-theme/0.17-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hicolor-icon-theme/0.17-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.18/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.18/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.18/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icu=57.1-8`

Binary Packages:

- `icu-devtools=57.1-8`
- `libicu-dev=57.1-8`
- `libicu57:amd64=57.1-8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=57.1-8
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1-8.dsc' icu_57.1-8.dsc 2085 SHA256:1c2b2f330ef095ad875a56b453c1f00bf560a04e8e9c9dce093024ee81908598
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1.orig.tar.gz' icu_57.1.orig.tar.gz 22360664 SHA256:ff8c67cb65949b1e7808f2359f2b80f722697048e90e7cfc382ec1fe229e9581
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1-8.debian.tar.xz' icu_57.1-8.debian.tar.xz 33076 SHA256:ec594621cea01f69457cea01b4c19715f9952778bd217ea6cd0099975031fb4f
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/57.1-8/ (for browsing the source)
- https://sources.debian.net/src/icu/57.1-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/57.1-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ilmbase=2.2.0-12`

Binary Packages:

- `libilmbase-dev=2.2.0-12`
- `libilmbase12:amd64=2.2.0-12`

Licenses: (parsed from: `/usr/share/doc/libilmbase-dev/copyright`, `/usr/share/doc/libilmbase12/copyright`)

- `boost`
- `ilmbase`

Source:

```console
$ apt-get source -qq --print-uris ilmbase=2.2.0-12
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.0-12.dsc' ilmbase_2.2.0-12.dsc 2240 SHA256:0c78cab5f253e016346c7c02b46a8b13c7394d9b0f74ac85d1f544674ceafa31
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.0.orig.tar.gz' ilmbase_2.2.0.orig.tar.gz 525289 SHA256:ecf815b60695555c1fbc73679e84c7c9902f4e8faa6e8000d2f905b8b86cedc7
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.0-12.debian.tar.xz' ilmbase_2.2.0-12.debian.tar.xz 10332 SHA256:0ff9997216660e6312bc52504a8feba1cb62b8eae789e8bb324a1cbc6f49f62c
```

Other potentially useful URLs:

- https://sources.debian.net/src/ilmbase/2.2.0-12/ (for browsing the source)
- https://sources.debian.net/src/ilmbase/2.2.0-12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ilmbase/2.2.0-12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `imagemagick=8:6.9.7.4+dfsg-16`

Binary Packages:

- `imagemagick=8:6.9.7.4+dfsg-16`
- `imagemagick-6-common=8:6.9.7.4+dfsg-16`
- `imagemagick-6.q16=8:6.9.7.4+dfsg-16`
- `libmagickcore-6-arch-config:amd64=8:6.9.7.4+dfsg-16`
- `libmagickcore-6-headers=8:6.9.7.4+dfsg-16`
- `libmagickcore-6.q16-3:amd64=8:6.9.7.4+dfsg-16`
- `libmagickcore-6.q16-3-extra:amd64=8:6.9.7.4+dfsg-16`
- `libmagickcore-6.q16-dev:amd64=8:6.9.7.4+dfsg-16`
- `libmagickcore-dev=8:6.9.7.4+dfsg-16`
- `libmagickwand-6-headers=8:6.9.7.4+dfsg-16`
- `libmagickwand-6.q16-3:amd64=8:6.9.7.4+dfsg-16`
- `libmagickwand-6.q16-dev:amd64=8:6.9.7.4+dfsg-16`
- `libmagickwand-dev=8:6.9.7.4+dfsg-16`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-6-common/copyright`, `/usr/share/doc/imagemagick-6.q16/copyright`, `/usr/share/doc/libmagickcore-6-arch-config/copyright`, `/usr/share/doc/libmagickcore-6-headers/copyright`, `/usr/share/doc/libmagickcore-6.q16-3/copyright`, `/usr/share/doc/libmagickcore-6.q16-3-extra/copyright`, `/usr/share/doc/libmagickcore-6.q16-dev/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickwand-6-headers/copyright`, `/usr/share/doc/libmagickwand-6.q16-3/copyright`, `/usr/share/doc/libmagickwand-6.q16-dev/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`)

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
$ apt-get source -qq --print-uris imagemagick=8:6.9.7.4+dfsg-16
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.7.4+dfsg-16.dsc' imagemagick_6.9.7.4+dfsg-16.dsc 5137 SHA256:9f0ba413ed44e3e94e018194d740b1f07ec03a69e6e52b2089aff2732257025c
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.7.4+dfsg.orig.tar.xz' imagemagick_6.9.7.4+dfsg.orig.tar.xz 8929800 SHA256:47fb2cdd26f5913318c4504f16ea363e04d1f400dda9ec52e461ab661d724026
'http://deb.debian.org/debian/pool/main/i/imagemagick/imagemagick_6.9.7.4+dfsg-16.debian.tar.xz' imagemagick_6.9.7.4+dfsg-16.debian.tar.xz 255120 SHA256:40c5f950416eb74487115ac21a4abd52277183b44b0b95254521c068bc4edbd2
```

Other potentially useful URLs:

- https://sources.debian.net/src/imagemagick/8:6.9.7.4+dfsg-16/ (for browsing the source)
- https://sources.debian.net/src/imagemagick/8:6.9.7.4+dfsg-16/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/imagemagick/8:6.9.7.4+dfsg-16/ (for access to the source package after it no longer exists in the archive)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/inetutils/2:1.9.4-2/


### `dpkg` source package: `init-system-helpers=1.49`

Binary Packages:

- `init-system-helpers=1.49`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/init-system-helpers/1.49/


### `dpkg` source package: `iproute2=4.9.0-2`

Binary Packages:

- `iproute2=4.9.0-2`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/iproute2/4.9.0-2/


### `dpkg` source package: `isl=0.18-1`

Binary Packages:

- `libisl15:amd64=0.18-1`

Licenses: (parsed from: `/usr/share/doc/libisl15/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.18-1
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.18-1.dsc' isl_0.18-1.dsc 1882 SHA256:aed8295d019805686fd795652d930b1440bc0ae3be4373332d97784645d7c583
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.18.orig.tar.xz' isl_0.18.orig.tar.xz 1475708 SHA256:0f35051cc030b87c673ac1f187de40e386a1482a0cfdf2c552dd6031b307ddc4
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.18-1.debian.tar.xz' isl_0.18-1.debian.tar.xz 21860 SHA256:eac951311a871bb6d7886c98068290f771aaf78616516855b472d2500b84f53c
```

Other potentially useful URLs:

- https://sources.debian.net/src/isl/0.18-1/ (for browsing the source)
- https://sources.debian.net/src/isl/0.18-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/isl/0.18-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbigkit=2.1-3.1`

Binary Packages:

- `libjbig-dev:amd64=2.1-3.1+b2`
- `libjbig0:amd64=2.1-3.1+b2`

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

Other potentially useful URLs:

- https://sources.debian.net/src/jbigkit/2.1-3.1/ (for browsing the source)
- https://sources.debian.net/src/jbigkit/2.1-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jbigkit/2.1-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jquery=3.2.1-1`

Binary Packages:

- `libjs-jquery=3.2.1-1`

Licenses: (parsed from: `/usr/share/doc/libjs-jquery/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris jquery=3.2.1-1
'http://deb.debian.org/debian/pool/main/j/jquery/jquery_3.2.1-1.dsc' jquery_3.2.1-1.dsc 2066 SHA256:b529818a547bc3f1ca70743b75e4772199e1ef61f3cc67366de25cc4e112410a
'http://deb.debian.org/debian/pool/main/j/jquery/jquery_3.2.1.orig.tar.xz' jquery_3.2.1.orig.tar.xz 298688 SHA256:3b645c4dcea9b22ee7ed09c6f391a1b5d23f7556cf0ae8f3afd43002491a597d
'http://deb.debian.org/debian/pool/main/j/jquery/jquery_3.2.1-1.debian.tar.xz' jquery_3.2.1-1.debian.tar.xz 9068 SHA256:f4c84ab960c21ecd46aa694a5abc397e84178e7185e78a1f546d064ed65d9ab5
```

Other potentially useful URLs:

- https://sources.debian.net/src/jquery/3.2.1-1/ (for browsing the source)
- https://sources.debian.net/src/jquery/3.2.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jquery/3.2.1-1/ (for access to the source package after it no longer exists in the archive)

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
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-9.2.dsc' keyutils_1.5.9-9.2.dsc 2093 SHA256:41496f40742131ecb8ff0bb51df26989f58dc1c0698b85e04e9e30938e583709
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-9.2.debian.tar.xz' keyutils_1.5.9-9.2.debian.tar.xz 17848 SHA256:c137f4a426819253a9416177ffb1cf943691210b6910239779b82aa4c4714337
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.5.9-9/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.5.9-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.5.9-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.15.2-2`

Binary Packages:

- `krb5-multidev=1.15.2-2`
- `libgssapi-krb5-2:amd64=1.15.2-2`
- `libgssrpc4:amd64=1.15.2-2`
- `libk5crypto3:amd64=1.15.2-2`
- `libkadm5clnt-mit11:amd64=1.15.2-2`
- `libkadm5srv-mit11:amd64=1.15.2-2`
- `libkdb5-8:amd64=1.15.2-2`
- `libkrb5-3:amd64=1.15.2-2`
- `libkrb5-dev=1.15.2-2`
- `libkrb5support0:amd64=1.15.2-2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit11/copyright`, `/usr/share/doc/libkadm5srv-mit11/copyright`, `/usr/share/doc/libkdb5-8/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.15.2-2
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.15.2-2.dsc' krb5_1.15.2-2.dsc 3359 SHA256:a2eef83c02667ef7d70d2a9f010eefa08a8f0a60160bee32c325c90f106348a1
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.15.2.orig.tar.gz' krb5_1.15.2.orig.tar.gz 9380755 SHA256:1639e392edf25e3b6cfec2ae68f97eb53e07c2dbe74bfeede0108465d5d1c87e
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.15.2-2.debian.tar.xz' krb5_1.15.2-2.debian.tar.xz 143632 SHA256:aab7c3c58e6851e143c740ecf4bcd84654edaa938db81f2df1667bff978ac5be
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.15.2-2/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.15.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.15.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lcms2=2.8-4`

Binary Packages:

- `liblcms2-2:amd64=2.8-4`
- `liblcms2-dev:amd64=2.8-4`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

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

Other potentially useful URLs:

- https://sources.debian.net/src/lcms2/2.8-4/ (for browsing the source)
- https://sources.debian.net/src/lcms2/2.8-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lcms2/2.8-4/ (for access to the source package after it no longer exists in the archive)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libassuan/2.4.3-3/


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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libbsd/0.8.6-2/


### `dpkg` source package: `libcap-ng=0.7.7-3`

Binary Packages:

- `libcap-ng0:amd64=0.7.7-3+b1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libcap-ng/0.7.7-3/


### `dpkg` source package: `libcroco=0.6.12-1`

Binary Packages:

- `libcroco3:amd64=0.6.12-1`

Licenses: (parsed from: `/usr/share/doc/libcroco3/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcroco=0.6.12-1
'http://deb.debian.org/debian/pool/main/libc/libcroco/libcroco_0.6.12-1.dsc' libcroco_0.6.12-1.dsc 2289 SHA256:963f0f4235d7fa3ba79bb9675ec836bcb2430e6adb1072e0f66ba17a1ba06994
'http://deb.debian.org/debian/pool/main/libc/libcroco/libcroco_0.6.12.orig.tar.xz' libcroco_0.6.12.orig.tar.xz 482028 SHA256:ddc4b5546c9fb4280a5017e2707fbd4839034ed1aba5b7d4372212f34f84f860
'http://deb.debian.org/debian/pool/main/libc/libcroco/libcroco_0.6.12-1.debian.tar.xz' libcroco_0.6.12-1.debian.tar.xz 7988 SHA256:179700f1a51ebdb786e071d4f189e3725ac818a9105cfad896659a71c71751b0
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcroco/0.6.12-1/ (for browsing the source)
- https://sources.debian.net/src/libcroco/0.6.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcroco/0.6.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdatrie=0.2.10-5`

Binary Packages:

- `libdatrie1:amd64=0.2.10-5`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.10-5
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.10-5.dsc' libdatrie_0.2.10-5.dsc 2214 SHA256:b81e48b6393d1d7a69d149cfa152990c840d62241c76ed9ca5cb07c588f714eb
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.10.orig.tar.xz' libdatrie_0.2.10.orig.tar.xz 294380 SHA256:180eff7b0309ca19a02d5864e744185d715f021398a096fec6cf960f8ebfaa2b
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.10-5.debian.tar.xz' libdatrie_0.2.10-5.debian.tar.xz 7608 SHA256:24031d8a2c1003ba1895cc1179c4d30563d90555a39a3a4cdb4b1290d4a1a4bf
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdatrie/0.2.10-5/ (for browsing the source)
- https://sources.debian.net/src/libdatrie/0.2.10-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdatrie/0.2.10-5/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libedit/3.1-20170329-1/ (for browsing the source)
- https://sources.debian.net/src/libedit/3.1-20170329-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libedit/3.1-20170329-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liberror-perl=0.17025-1`

Binary Packages:

- `liberror-perl=0.17025-1`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17025-1
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17025-1.dsc' liberror-perl_0.17025-1.dsc 2077 SHA256:994800c0123fe452ca1f1019e5bf71755c3200231d84999a31dd19be16ada41b
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17025.orig.tar.gz' liberror-perl_0.17025.orig.tar.gz 32013 SHA256:6c9f474ad3d4fe0cabff6b6be532cb1dd348245986d4a6b600ad921d5cfdefaf
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17025-1.debian.tar.xz' liberror-perl_0.17025-1.debian.tar.xz 4108 SHA256:0288dcf7eeff5cddfaf8c6bdfbe9fc170a1d333bb6d88489ca8158c929a44f76
```

Other potentially useful URLs:

- https://sources.debian.net/src/liberror-perl/0.17025-1/ (for browsing the source)
- https://sources.debian.net/src/liberror-perl/0.17025-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liberror-perl/0.17025-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libevent=2.1.8-stable-4`

Binary Packages:

- `libevent-2.1-6:amd64=2.1.8-stable-4`
- `libevent-core-2.1-6:amd64=2.1.8-stable-4`
- `libevent-dev=2.1.8-stable-4`
- `libevent-extra-2.1-6:amd64=2.1.8-stable-4`
- `libevent-openssl-2.1-6:amd64=2.1.8-stable-4`
- `libevent-pthreads-2.1-6:amd64=2.1.8-stable-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libevent=2.1.8-stable-4
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.8-stable-4.dsc' libevent_2.1.8-stable-4.dsc 2328 SHA256:4d2c3f7943219dd13ae711c6d3e8589c6211d2cec15c18ccfd1d1426542519b0
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.8-stable.orig.tar.gz' libevent_2.1.8-stable.orig.tar.gz 1026485 SHA256:965cc5a8bb46ce4199a47e9b2c9e1cae3b137e8356ffdad6d94d3b9069b71dc2
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.8-stable-4.debian.tar.xz' libevent_2.1.8-stable-4.debian.tar.xz 12060 SHA256:c1334029455256b62e201ba333a8616a1709e0f3caada753d35376b88aca2d5e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libevent/2.1.8-stable-4/ (for browsing the source)
- https://sources.debian.net/src/libevent/2.1.8-stable-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libevent/2.1.8-stable-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libexif=0.6.21-2.1`

Binary Packages:

- `libexif-dev:amd64=0.6.21-2.1`
- `libexif12:amd64=0.6.21-2.1`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libexif/0.6.21-2.1/


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

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.2.1-6/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.2.1-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.2.1-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.7.9-1`

Binary Packages:

- `libgcrypt20:amd64=1.7.9-1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libgcrypt20/1.7.9-1/


### `dpkg` source package: `libgd2=2.2.5-4`

Binary Packages:

- `libgd3:amd64=2.2.5-4`

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
$ apt-get source -qq --print-uris libgd2=2.2.5-4
'http://deb.debian.org/debian/pool/main/libg/libgd2/libgd2_2.2.5-4.dsc' libgd2_2.2.5-4.dsc 2364 SHA256:b76b58ce9eb596198a36eed9538d421ae7828c2f9f9bb063307f945e8c2ba40b
'http://deb.debian.org/debian/pool/main/libg/libgd2/libgd2_2.2.5.orig.tar.gz' libgd2_2.2.5.orig.tar.gz 3326856 SHA256:150e6952af874bbccb33cf0f87288b41a8fd54f0ce4cff914ef90a80ef9d0162
'http://deb.debian.org/debian/pool/main/libg/libgd2/libgd2_2.2.5-4.debian.tar.xz' libgd2_2.2.5-4.debian.tar.xz 31848 SHA256:7bccfea19f47ecfb095f3f11343e3f607e60c0731fd28d4cc23d63c177e06119
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgd2/2.2.5-4/ (for browsing the source)
- https://sources.debian.net/src/libgd2/2.2.5-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgd2/2.2.5-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.27-3`

Binary Packages:

- `libgpg-error0:amd64=1.27-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libgpg-error/1.27-3/


### `dpkg` source package: `libice=2:1.0.9-2`

Binary Packages:

- `libice-dev:amd64=2:1.0.9-2`
- `libice6:amd64=2:1.0.9-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.9-2
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.9-2.dsc' libice_1.0.9-2.dsc 2130 SHA256:116595cd54be23edad0b55e1cd4bc1929f277fa5c2d00d8f187b0bc5dd39ad6c
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.9.orig.tar.gz' libice_1.0.9.orig.tar.gz 455871 SHA256:7812a824a66dd654c830d21982749b3b563d9c2dfe0b88b203cefc14a891edc0
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.9-2.diff.gz' libice_1.0.9-2.diff.gz 6384 SHA256:777f13e08aada3103c32a0b93a26782ca959027bcd98c2c1ddaade8f944fa40a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libice/2:1.0.9-2/ (for browsing the source)
- https://sources.debian.net/src/libice/2:1.0.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libice/2:1.0.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn2-0=2.0.2-5`

Binary Packages:

- `libidn2-0:amd64=2.0.2-5`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`)

- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-3+`
- `Unicode`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libidn2-0/2.0.2-5/


### `dpkg` source package: `libjpeg-turbo=1:1.5.2-2`

Binary Packages:

- `libjpeg-dev=1:1.5.2-2`
- `libjpeg62-turbo:amd64=1:1.5.2-2`
- `libjpeg62-turbo-dev:amd64=1:1.5.2-2`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg62-turbo/copyright`, `/usr/share/doc/libjpeg62-turbo-dev/copyright`)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libjpeg-turbo/1:1.5.2-2/ (for browsing the source)
- https://sources.debian.net/src/libjpeg-turbo/1:1.5.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjpeg-turbo/1:1.5.2-2/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libksba/1.3.5-2/ (for browsing the source)
- https://sources.debian.net/src/libksba/1.3.5-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libksba/1.3.5-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liblqr=0.4.2-2`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2+b2`
- `liblqr-1-0-dev=0.4.2-2+b2`

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

Other potentially useful URLs:

- https://sources.debian.net/src/liblqr/0.4.2-2/ (for browsing the source)
- https://sources.debian.net/src/liblqr/0.4.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liblqr/0.4.2-2/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libmnl/1.0.4-2/ (for browsing the source)
- https://sources.debian.net/src/libmnl/1.0.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libmnl/1.0.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpng1.6=1.6.34-1`

Binary Packages:

- `libpng-dev:amd64=1.6.34-1`
- `libpng16-16:amd64=1.6.34-1`

Licenses: (parsed from: `/usr/share/doc/libpng-dev/copyright`, `/usr/share/doc/libpng16-16/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `BSD-like-with-advertising-clause`
- `GPL-2`
- `GPL-2+`
- `expat`
- `libpng`
- `libpng OR Apache-2.0 OR BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libpng1.6=1.6.34-1
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1.dsc' libpng1.6_1.6.34-1.dsc 2191 SHA256:e491569d9015036d43c7a9dfcf2d835abde8c9817b057d55d929cb78501d5a30
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.34.orig.tar.xz' libpng1.6_1.6.34.orig.tar.xz 997968 SHA256:2f1e960d92ce3b3abd03d06dfec9637dfbd22febf107a536b44f7a47c60659f6
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1.debian.tar.xz' libpng1.6_1.6.34-1.debian.tar.xz 23568 SHA256:8ca33d2930b340412f04d76cac3159f6b3b823cff33b35b72426a75f3f02a8a0
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng1.6/1.6.34-1/ (for browsing the source)
- https://sources.debian.net/src/libpng1.6/1.6.34-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng1.6/1.6.34-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.18.0-4`

Binary Packages:

- `libpsl5:amd64=0.18.0-4`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libpsl/0.18.0-4/


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

Other potentially useful URLs:

- https://sources.debian.net/src/libpthread-stubs/0.3-4/ (for browsing the source)
- https://sources.debian.net/src/libpthread-stubs/0.3-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpthread-stubs/0.3-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `librsvg=2.40.18-2`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.40.18-2`
- `librsvg2-2:amd64=2.40.18-2`
- `librsvg2-common:amd64=2.40.18-2`
- `librsvg2-dev:amd64=2.40.18-2`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.40.18-2
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.18-2.dsc' librsvg_2.40.18-2.dsc 2742 SHA256:0acf1936ef3c45b99f4af1726c4cc1cd2f1a9f3aefc5000c37d1a70a15d540c5
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.18.orig.tar.xz' librsvg_2.40.18.orig.tar.xz 574384 SHA256:bfc8c488c89c1e7212c478beb95c41b44701636125a3e6dab41187f1485b564c
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.18-2.debian.tar.xz' librsvg_2.40.18-2.debian.tar.xz 15220 SHA256:60244d1ee0cf243cb6a5f44d98214a35ac52661f82f45f70b2b81763c9465baf
```

Other potentially useful URLs:

- https://sources.debian.net/src/librsvg/2.40.18-2/ (for browsing the source)
- https://sources.debian.net/src/librsvg/2.40.18-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/librsvg/2.40.18-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=2.7-2`

Binary Packages:

- `libselinux1:amd64=2.7-2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.7-2
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.7-2.dsc' libselinux_2.7-2.dsc 2369 SHA256:09e23dce37d309751db1b5a411a330c6fac9f392a67e56ce943bad88757af1df
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.7.orig.tar.gz' libselinux_2.7.orig.tar.gz 187574 SHA256:d0fec0769b3ad60aa7baf9b9a4b7a056827769dc2dadda0dc0eb59b3d1c18c57
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.7-2.debian.tar.xz' libselinux_2.7-2.debian.tar.xz 23044 SHA256:acd5c8f6607a5b10aeaa705214ea4924939cbe2de7cce174eccf5973c6f92771
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/2.7-2/ (for browsing the source)
- https://sources.debian.net/src/libselinux/2.7-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/2.7-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=2.7-2`

Binary Packages:

- `libsemanage-common=2.7-2`
- `libsemanage1:amd64=2.7-2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.7-2
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.7-2.dsc' libsemanage_2.7-2.dsc 2456 SHA256:7054ef9c206cac2e698627040df04dd159ff7aa982348e25c315dd817fb8926b
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.7.orig.tar.gz' libsemanage_2.7.orig.tar.gz 153465 SHA256:07e9477714ce6a4557a1fe924ea4cb06501b62d0fa0e3c0dc32a2cf47cb8d476
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.7-2.debian.tar.xz' libsemanage_2.7-2.debian.tar.xz 16968 SHA256:6679667dc2ceafbe214eddfe84c3f6a18d457a4c78d6ae63165bc65e71b174e7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/2.7-2/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/2.7-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/2.7-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=2.7-1`

Binary Packages:

- `libsepol1:amd64=2.7-1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.7-1
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.7-1.dsc' libsepol_2.7-1.dsc 1814 SHA256:7de809477acd60d256eca160d5fc6986e5e65227706b1cdb23f8139bb49d2782
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.7.orig.tar.gz' libsepol_2.7.orig.tar.gz 471147 SHA256:d69d3bd8ec901a3bd5adf2be2fb47fb1a685ed73066ab482e7e505371a48f9e7
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.7-1.debian.tar.xz' libsepol_2.7-1.debian.tar.xz 13944 SHA256:56b1c2b0e492b2089f23a0d7a95a260377a0e3adefc60e90c0ff6eff6be08450
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/2.7-1/ (for browsing the source)
- https://sources.debian.net/src/libsepol/2.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/2.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsigsegv=2.11-1`

Binary Packages:

- `libsigsegv2:amd64=2.11-1`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.11-1
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.11-1.dsc' libsigsegv_2.11-1.dsc 2365 SHA256:b2b5064cee7730302ccdda9788709b8fbb270ebbad6899be1a8bb7e491ff14dd
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.11.orig.tar.gz' libsigsegv_2.11.orig.tar.gz 256573 SHA256:b8eadcfa513f9127f672082b5348a834299760e3d17ef99cf9c712fb8c068c73
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.11-1.debian.tar.xz' libsigsegv_2.11-1.debian.tar.xz 10212 SHA256:d253b4314b3348c000ecfa260c467c27135c80c5cd2597b9920fef5379ac70cb
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsigsegv/2.11-1/ (for browsing the source)
- https://sources.debian.net/src/libsigsegv/2.11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsigsegv/2.11-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsm=2:1.2.2-1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.2-1+b3`
- `libsm6:amd64=2:1.2.2-1+b3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.2-1
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.2-1.dsc' libsm_1.2.2-1.dsc 2107 SHA256:1347efa550751179c0a3f1042a9f8ae43ee0c22cf0c2283921fa83e52a68433f
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.2.orig.tar.gz' libsm_1.2.2.orig.tar.gz 415990 SHA256:14bb7c669ce2b8ff712fbdbf48120e3742a77edcd5e025d6b3325ed30cf120f4
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.2-1.diff.gz' libsm_1.2.2-1.diff.gz 6183 SHA256:9848714292ead15fcc48ab2d337f2cc5fc08910abbdfaf69d3ef1b89d3fdb2d5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsm/2:1.2.2-1/ (for browsing the source)
- https://sources.debian.net/src/libsm/2:1.2.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsm/2:1.2.2-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.8.0-1/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.8.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.8.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.12-2.1`

Binary Packages:

- `libtasn1-6:amd64=4.12-2.1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libtasn1-6/4.12-2.1/


### `dpkg` source package: `libthai=0.1.27-1`

Binary Packages:

- `libthai-data=0.1.27-1`
- `libthai0:amd64=0.1.27-1`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.27-1
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.27-1.dsc' libthai_0.1.27-1.dsc 2371 SHA256:df7d639eab614ebb04ee4c9ca3df400e43e04d419f77fe268b33ba4dc02b80b0
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.27.orig.tar.xz' libthai_0.1.27.orig.tar.xz 410360 SHA256:1659fa1b7b1d6562102d7feb8c8c3fd94bb2dc5761ed7dbaae4f300e1c03eff6
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.27-1.debian.tar.xz' libthai_0.1.27-1.debian.tar.xz 11572 SHA256:cef56b2a4c7dad215de0ce222dfab1b723a5a2becc630d58c21763861a7a8289
```

Other potentially useful URLs:

- https://sources.debian.net/src/libthai/0.1.27-1/ (for browsing the source)
- https://sources.debian.net/src/libthai/0.1.27-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libthai/0.1.27-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libtool/2.4.6-2/ (for browsing the source)
- https://sources.debian.net/src/libtool/2.4.6-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtool/2.4.6-2/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libunistring/0.9.7-2/ (for browsing the source)
- https://sources.debian.net/src/libunistring/0.9.7-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libunistring/0.9.7-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libwebp=0.6.0-3`

Binary Packages:

- `libwebp-dev:amd64=0.6.0-3`
- `libwebp6:amd64=0.6.0-3`
- `libwebpdemux2:amd64=0.6.0-3`
- `libwebpmux3:amd64=0.6.0-3`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp6/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libwebp/0.6.0-3/


### `dpkg` source package: `libwmf=0.2.8.4-12`

Binary Packages:

- `libwmf-dev=0.2.8.4-12`
- `libwmf0.2-7:amd64=0.2.8.4-12`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.8.4-12
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.8.4-12.dsc' libwmf_0.2.8.4-12.dsc 2134 SHA256:cc438ea4b9f9b93d06428989e3920f6e9f1fb317e451aeecbd2b3f608dd82826
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.8.4.orig.tar.gz' libwmf_0.2.8.4.orig.tar.gz 2169375 SHA256:5b345c69220545d003ad52bfd035d5d6f4f075e65204114a9e875e84895a7cf8
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.8.4-12.debian.tar.xz' libwmf_0.2.8.4-12.debian.tar.xz 11952 SHA256:579cc19e9199e30b1097559f031a9814f4990206487cb4c402defb68f55be1cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwmf/0.2.8.4-12/ (for browsing the source)
- https://sources.debian.net/src/libwmf/0.2.8.4-12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwmf/0.2.8.4-12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libx11=2:1.6.4-3`

Binary Packages:

- `libx11-6:amd64=2:1.6.4-3`
- `libx11-data=2:1.6.4-3`
- `libx11-dev:amd64=2:1.6.4-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.4-3
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4-3.dsc' libx11_1.6.4-3.dsc 2397 SHA256:4c5d6add2ba969067ca111c827ae94264e4c22776e22f318d264545dc1c6a300
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4.orig.tar.gz' libx11_1.6.4.orig.tar.gz 3095115 SHA256:5d7fbb9e15c27900ea8963218a59750b674a8d7c94161b66e96fcfbdaa1c6263
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4-3.diff.gz' libx11_1.6.4-3.diff.gz 41366 SHA256:2c936827bca63eaf5b66683bdcd0ecf013d152c35439f792475db85c5c2338fd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.6.4-3/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.6.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.6.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.8-1+b2`
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

Other potentially useful URLs:

- https://sources.debian.net/src/libxau/1:1.0.8-1/ (for browsing the source)
- https://sources.debian.net/src/libxau/1:1.0.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxau/1:1.0.8-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libxcb/1.12-1/ (for browsing the source)
- https://sources.debian.net/src/libxcb/1.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcb/1.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcomposite=1:0.4.4-2`

Binary Packages:

- `libxcomposite1:amd64=1:0.4.4-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcomposite=1:0.4.4-2
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.4-2.dsc' libxcomposite_0.4.4-2.dsc 2178 SHA256:4124027ad4b4598a61c45cbc345988010a2a5ba6e7c80259917f59414be69861
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.4.orig.tar.gz' libxcomposite_0.4.4.orig.tar.gz 354584 SHA256:83c04649819c6f52cda1b0ce8bcdcc48ad8618428ad803fb07f20b802f1bdad1
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.4-2.diff.gz' libxcomposite_0.4.4-2.diff.gz 15755 SHA256:9689ae3fcc76054fe09909692e71a1a4fe356e84f3adfa2be668e173d0369ebc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcomposite/1:0.4.4-2/ (for browsing the source)
- https://sources.debian.net/src/libxcomposite/1:0.4.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcomposite/1:0.4.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcursor=1:1.1.14-3`

Binary Packages:

- `libxcursor1:amd64=1:1.1.14-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcursor=1:1.1.14-3
'http://deb.debian.org/debian/pool/main/libx/libxcursor/libxcursor_1.1.14-3.dsc' libxcursor_1.1.14-3.dsc 2288 SHA256:c5324154d4232bae10c11222199960e7b1b194eb5da331807f6f048fc6fa74b9
'http://deb.debian.org/debian/pool/main/libx/libxcursor/libxcursor_1.1.14.orig.tar.gz' libxcursor_1.1.14.orig.tar.gz 374910 SHA256:be0954faf274969ffa6d95b9606b9c0cfee28c13b6fc014f15606a0c8b05c17b
'http://deb.debian.org/debian/pool/main/libx/libxcursor/libxcursor_1.1.14-3.debian.tar.xz' libxcursor_1.1.14-3.debian.tar.xz 8688 SHA256:1f80cf47326cf05eafe5ac7215103be6cac3369eccffbe2b254828330f47cbdd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcursor/1:1.1.14-3/ (for browsing the source)
- https://sources.debian.net/src/libxcursor/1:1.1.14-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcursor/1:1.1.14-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdamage=1:1.1.4-3`

Binary Packages:

- `libxdamage1:amd64=1:1.1.4-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdamage=1:1.1.4-3
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.4-3.dsc' libxdamage_1.1.4-3.dsc 2161 SHA256:f1207d4fca942d2cddfe40abc818046e282ceeb0e0b565a44c2908fd03c41368
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.4.orig.tar.gz' libxdamage_1.1.4.orig.tar.gz 339060 SHA256:4bb3e9d917f5f593df2277d452926ee6ad96de7b7cd1017cbcf4579fe5d3442b
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.4-3.debian.tar.xz' libxdamage_1.1.4-3.debian.tar.xz 5904 SHA256:94dcf3997a92f5e1b4681dcbe555af4469607ae7af2d0dc643a7a1be7b94e64a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxdamage/1:1.1.4-3/ (for browsing the source)
- https://sources.debian.net/src/libxdamage/1:1.1.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdamage/1:1.1.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.2-3`
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

Other potentially useful URLs:

- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/ (for browsing the source)
- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdmcp/1:1.1.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxext=2:1.3.3-1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.3-1+b2`
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

Other potentially useful URLs:

- https://sources.debian.net/src/libxext/2:1.3.3-1/ (for browsing the source)
- https://sources.debian.net/src/libxext/2:1.3.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxext/2:1.3.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxfixes=1:5.0.3-1`

Binary Packages:

- `libxfixes3:amd64=1:5.0.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxfixes=1:5.0.3-1
'http://deb.debian.org/debian/pool/main/libx/libxfixes/libxfixes_5.0.3-1.dsc' libxfixes_5.0.3-1.dsc 2040 SHA256:87c1c491d8ff261b5a723c6c6aa974f315ff6f25f47425285a62065cbf944025
'http://deb.debian.org/debian/pool/main/libx/libxfixes/libxfixes_5.0.3.orig.tar.gz' libxfixes_5.0.3.orig.tar.gz 360412 SHA256:9ab6c13590658501ce4bd965a8a5d32ba4d8b3bb39a5a5bc9901edffc5666570
'http://deb.debian.org/debian/pool/main/libx/libxfixes/libxfixes_5.0.3-1.diff.gz' libxfixes_5.0.3-1.diff.gz 15140 SHA256:95b9688465531c60ff372bf8a2eb5fdd456970cbbb679ba13e54d24af44fb904
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxfixes/1:5.0.3-1/ (for browsing the source)
- https://sources.debian.net/src/libxfixes/1:5.0.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxfixes/1:5.0.3-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libxi/2:1.7.9-1/ (for browsing the source)
- https://sources.debian.net/src/libxi/2:1.7.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxi/2:1.7.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxinerama=2:1.1.3-1`

Binary Packages:

- `libxinerama1:amd64=2:1.1.3-1+b3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxinerama=2:1.1.3-1
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.3-1.dsc' libxinerama_1.1.3-1.dsc 2198 SHA256:4cf9a3558bd7ce1b4f55a581175c05e4b4a172364458a21ff4b657b714688fbb
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.3.orig.tar.gz' libxinerama_1.1.3.orig.tar.gz 350141 SHA256:0ba243222ae5aba4c6a3d7a394c32c8b69220a6872dbb00b7abae8753aca9a44
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.3-1.diff.gz' libxinerama_1.1.3-1.diff.gz 15738 SHA256:2b1487e3511ddabfec666a62f6e5e8ac4f97536b0d53c51f7bf4cbe07508a130
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxinerama/2:1.1.3-1/ (for browsing the source)
- https://sources.debian.net/src/libxinerama/2:1.1.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxinerama/2:1.1.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxml2=2.9.4+dfsg1-5`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-5+b1`
- `libxml2-dev:amd64=2.9.4+dfsg1-5+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-5
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-5.1.dsc' libxml2_2.9.4+dfsg1-5.1.dsc 3131 SHA256:7a43531fcb67956df3973605720b02c09044594c9e7434edb80d336449557826
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA256:a74ad55e346aa0b2b41903e66d21f8f3d2a736b3f41e32496376861ab484184e
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-5.1.debian.tar.xz' libxml2_2.9.4+dfsg1-5.1.debian.tar.xz 35444 SHA256:0a900d807f5de69cb27ddca74db8d6bb83d37abcdfee1c9b2f8a8ddb7ea028f4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-5/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.9.4+dfsg1-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxpm=1:3.5.12-1`

Binary Packages:

- `libxpm4:amd64=1:3.5.12-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.12-1
'http://deb.debian.org/debian/pool/main/libx/libxpm/libxpm_3.5.12-1.dsc' libxpm_3.5.12-1.dsc 2061 SHA256:1b5d07d820d656030d0f79a15a0652f258c9d2be0cd6064ec37c40853906f7e8
'http://deb.debian.org/debian/pool/main/libx/libxpm/libxpm_3.5.12.orig.tar.gz' libxpm_3.5.12.orig.tar.gz 529302 SHA256:2523acc780eac01db5163267b36f5b94374bfb0de26fc0b5a7bee76649fd8501
'http://deb.debian.org/debian/pool/main/libx/libxpm/libxpm_3.5.12-1.diff.gz' libxpm_3.5.12-1.diff.gz 9458 SHA256:4103400f8d73d0ec567f87e8aa9824c4a07d068e81da6efe54fb535ec897e326
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxpm/1:3.5.12-1/ (for browsing the source)
- https://sources.debian.net/src/libxpm/1:3.5.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxpm/1:3.5.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxrandr=2:1.5.1-1`

Binary Packages:

- `libxrandr2:amd64=2:1.5.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.5.1-1
'http://deb.debian.org/debian/pool/main/libx/libxrandr/libxrandr_1.5.1-1.dsc' libxrandr_1.5.1-1.dsc 2046 SHA256:0d7102ab75fdfe06534e842d5dcac8430614c61a061ab12794e2285712b0b103
'http://deb.debian.org/debian/pool/main/libx/libxrandr/libxrandr_1.5.1.orig.tar.gz' libxrandr_1.5.1.orig.tar.gz 388607 SHA256:2baa7fb3eca78fe7e11a09b373ba898b717f7eeba4a4bfd68187e04b4789b0d3
'http://deb.debian.org/debian/pool/main/libx/libxrandr/libxrandr_1.5.1-1.diff.gz' libxrandr_1.5.1-1.diff.gz 16386 SHA256:42262cbc2117ea559a4e16a02c6ea6478554aa2128d9fe1e141da07006612a1d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxrandr/2:1.5.1-1/ (for browsing the source)
- https://sources.debian.net/src/libxrandr/2:1.5.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxrandr/2:1.5.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxrender=1:0.9.10-1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.10-1`
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

Other potentially useful URLs:

- https://sources.debian.net/src/libxrender/1:0.9.10-1/ (for browsing the source)
- https://sources.debian.net/src/libxrender/1:0.9.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxrender/1:0.9.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxslt=1.1.29-2.2`

Binary Packages:

- `libxslt1-dev:amd64=1.1.29-2.2`
- `libxslt1.1:amd64=1.1.29-2.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libxslt/1.1.29-2.2/


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

Other potentially useful URLs:

- https://sources.debian.net/src/libxt/1:1.1.5-1/ (for browsing the source)
- https://sources.debian.net/src/libxt/1:1.1.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxt/1:1.1.5-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/libyaml/0.1.7-2/ (for browsing the source)
- https://sources.debian.net/src/libyaml/0.1.7-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libyaml/0.1.7-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=4.13.4-2`

Binary Packages:

- `linux-libc-dev:amd64=4.13.4-2`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `CRYPTOGAMS`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `Unicode-data`
- `X11 Dual License`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=4.13.4-2
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.13.4-2.dsc' linux_4.13.4-2.dsc 133845 SHA256:81415db90624cab4d1a452a110da6211d727c8650f6d5f3ba2578ae59dc919bc
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.13.4.orig.tar.xz' linux_4.13.4.orig.tar.xz 102091796 SHA256:d8c2c9b33cf86a9910ffac58cebd4db2a36710813f51505d652995400b260d98
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.13.4-2.debian.tar.xz' linux_4.13.4-2.debian.tar.xz 964004 SHA256:21cc1558667c367567a17754fc7243275afc912bc34be6b912c7b90921002b32
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/4.13.4-2/ (for browsing the source)
- https://sources.debian.net/src/linux/4.13.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/4.13.4-2/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/lsb/9.20170808/ (for browsing the source)
- https://sources.debian.net/src/lsb/9.20170808/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lsb/9.20170808/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/0.0~r131-2/ (for browsing the source)
- https://sources.debian.net/src/lz4/0.0~r131-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/0.0~r131-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lzo2=2.08-1.2`

Binary Packages:

- `liblzo2-2:amd64=2.08-1.2+b2`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.08-1.2
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.08-1.2.dsc' lzo2_2.08-1.2.dsc 1804 SHA256:09eabe81d6f631a29cc603843b27ab914704726a1400a2219cf83b1da4e72892
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.08.orig.tar.gz' lzo2_2.08.orig.tar.gz 589045 SHA256:ac1b3e4dee46febe9fd28737eb7f5692d3232ef1a01da10444394c3d47536614
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.08-1.2.debian.tar.xz' lzo2_2.08-1.2.debian.tar.xz 5996 SHA256:5a9aa3a2432f5d4f689b24c64ea3daec7646e736da37721388ae88b670dd99bc
```

Other potentially useful URLs:

- https://sources.debian.net/src/lzo2/2.08-1.2/ (for browsing the source)
- https://sources.debian.net/src/lzo2/2.08-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lzo2/2.08-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `m4=1.4.18-1`

Binary Packages:

- `m4=1.4.18-1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.18-1
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18-1.dsc' m4_1.4.18-1.dsc 1426 SHA256:83a6c5e4b94aa47634b7c988fa485155c01120c17682865e6f032de9adf1090c
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18.orig.tar.xz' m4_1.4.18.orig.tar.xz 1207688 SHA256:f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18-1.debian.tar.xz' m4_1.4.18-1.debian.tar.xz 15784 SHA256:55de78acb0272fd6e2637ab933114e64eefa58ba1e97b063629453ae1e163fff
```

Other potentially useful URLs:

- https://sources.debian.net/src/m4/1.4.18-1/ (for browsing the source)
- https://sources.debian.net/src/m4/1.4.18-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/m4/1.4.18-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `make-dfsg=4.1-9.1`

Binary Packages:

- `make=4.1-9.1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-9.1
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.1-9.1.dsc' make-dfsg_4.1-9.1.dsc 2037 SHA256:3527e91633b0d2830a52f3b85229b2f8bdec5e1e5b77bbff95b20317757ab3a3
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.1-9.1.diff.gz' make-dfsg_4.1-9.1.diff.gz 45452 SHA256:ec9d39ed253808378aeb91bb2c34bbd177637ed197682e093c3aadfb97b338a3
```

Other potentially useful URLs:

- https://sources.debian.net/src/make-dfsg/4.1-9.1/ (for browsing the source)
- https://sources.debian.net/src/make-dfsg/4.1-9.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/make-dfsg/4.1-9.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mariadb-10.1=10.1.26-1`

Binary Packages:

- `libmariadbclient-dev=10.1.26-1`
- `libmariadbclient-dev-compat:amd64=10.1.26-1`
- `libmariadbclient18:amd64=10.1.26-1`

Licenses: (parsed from: `/usr/share/doc/libmariadbclient-dev/copyright`, `/usr/share/doc/libmariadbclient-dev-compat/copyright`, `/usr/share/doc/libmariadbclient18/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+-with-bison-exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+-with-bison-exception`
- `GPL-verbatim`
- `LGPL`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT/X11`
- `SWsoft`
- `public-domain`
- `unlimited-free-doc`
- `zlib/libpng`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/mariadb-10.1/10.1.26-1/


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

Other potentially useful URLs:

- https://sources.debian.net/src/mawk/1.3.3-17/ (for browsing the source)
- https://sources.debian.net/src/mawk/1.3.3-17/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mawk/1.3.3-17/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/mercurial/4.3.1-3/ (for browsing the source)
- https://sources.debian.net/src/mercurial/4.3.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mercurial/4.3.1-3/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/mime-support/3.60/ (for browsing the source)
- https://sources.debian.net/src/mime-support/3.60/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mime-support/3.60/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpclib3=1.0.3-2`

Binary Packages:

- `libmpc3:amd64=1.0.3-2`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.0.3-2
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.3-2.dsc' mpclib3_1.0.3-2.dsc 1940 SHA256:057957da4e1ac52bc42410f9ff3f2c15374735086bb1c3843068a0f4201821aa
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.3.orig.tar.gz' mpclib3_1.0.3.orig.tar.gz 669925 SHA256:617decc6ea09889fb08ede330917a00b16809b8db88c29c31bfbb49cbf88ecc3
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.3-2.diff.gz' mpclib3_1.0.3-2.diff.gz 3759 SHA256:abcc38cf102660a9061c187ba2ed07153bb0089e2067e17f20c43c910120ace7
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpclib3/1.0.3-2/ (for browsing the source)
- https://sources.debian.net/src/mpclib3/1.0.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpclib3/1.0.3-2/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/mpdecimal/2.4.2-1/ (for browsing the source)
- https://sources.debian.net/src/mpdecimal/2.4.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpdecimal/2.4.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpfr4=3.1.6-1`

Binary Packages:

- `libmpfr4:amd64=3.1.6-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr4/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=3.1.6-1
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.6-1.dsc' mpfr4_3.1.6-1.dsc 2004 SHA256:449a287fa9448826c591d87fe92b702e11e6e1cb7be88ef50f36dc7769c92c33
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.6.orig.tar.xz' mpfr4_3.1.6.orig.tar.xz 1133672 SHA256:7a62ac1a04408614fccdc506e4844b10cf0ad2c2b1677097f8f35d3a1344a950
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.6-1.debian.tar.xz' mpfr4_3.1.6-1.debian.tar.xz 9724 SHA256:1ce306a388ab312eb1c62f4c52dc468ae55d8205e124d19eb231ef7d42fc836a
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpfr4/3.1.6-1/ (for browsing the source)
- https://sources.debian.net/src/mpfr4/3.1.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpfr4/3.1.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mysql-defaults=1.0.3`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.0.3`
- `mysql-common=5.8+1.0.3`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.0.3
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.3.dsc' mysql-defaults_1.0.3.dsc 2231 SHA256:8cf20b019808e0dba0e83a59718449d4e16f732b4e7971ba9198d4e6efb79c72
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.3.tar.xz' mysql-defaults_1.0.3.tar.xz 5824 SHA256:2b396003583dea51ff451d59dab3a72bfd818bd99fa15feac384e4d978d1ae0e
```

Other potentially useful URLs:

- https://sources.debian.net/src/mysql-defaults/1.0.3/ (for browsing the source)
- https://sources.debian.net/src/mysql-defaults/1.0.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mysql-defaults/1.0.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.0+20170902-1`

Binary Packages:

- `libncurses5:amd64=6.0+20170902-1`
- `libncurses5-dev:amd64=6.0+20170902-1`
- `libncursesw5:amd64=6.0+20170902-1`
- `libncursesw5-dev:amd64=6.0+20170902-1`
- `libtinfo-dev:amd64=6.0+20170902-1`
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

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.0+20170902-1/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.0+20170902-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.0+20170902-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/netbase/5.4/ (for browsing the source)
- https://sources.debian.net/src/netbase/5.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/netbase/5.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.3-2`

Binary Packages:

- `libhogweed4:amd64=3.3-2`
- `libnettle6:amd64=3.3-2`

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
$ apt-get source -qq --print-uris nettle=3.3-2
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.3-2.dsc' nettle_3.3-2.dsc 2022 SHA256:502530701faa5bcebc73c55aafd53096d650f55c77dec996fab96796a60ac78d
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.3.orig.tar.gz' nettle_3.3.orig.tar.gz 1887927 SHA256:46942627d5d0ca11720fec18d81fc38f7ef837ea4197c1f630e71ce0d470b11e
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.3-2.debian.tar.xz' nettle_3.3-2.debian.tar.xz 19812 SHA256:91b1e04d3d0cc188f3490fe8bc7f2ad9ec60b1c6f6b29f53b6a72dbedb40dc0e
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.3-2/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.27.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.27.0-1`

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
$ apt-get source -qq --print-uris nghttp2=1.27.0-1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.27.0-1.dsc' nghttp2_1.27.0-1.dsc 2311 SHA256:de36f3508ed53e3b090cf06b1b3efe1080907229a5e0192367ca92e9fc651c3a
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.27.0.orig.tar.bz2' nghttp2_1.27.0.orig.tar.bz2 1840935 SHA256:d3c9542e26c3819c50963e02d285973b38ec1dd2816133c852a224f0bd911952
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.27.0-1.debian.tar.xz' nghttp2_1.27.0-1.debian.tar.xz 12024 SHA256:cc34f00f32a7022dc26b158328dfd72de69e079efd47468bd2c8b3cb40ad65f3
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.27.0-1/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.27.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.27.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `npth=1.5-2`

Binary Packages:

- `libnpth0:amd64=1.5-2`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/npth/1.5-2/


### `dpkg` source package: `openexr=2.2.0-11.1`

Binary Packages:

- `libopenexr-dev=2.2.0-11.1`
- `libopenexr22:amd64=2.2.0-11.1`

Licenses: (parsed from: `/usr/share/doc/libopenexr-dev/copyright`, `/usr/share/doc/libopenexr22/copyright`)

- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.2.0-11.1
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.0-11.1.dsc' openexr_2.2.0-11.1.dsc 2439 SHA256:8d987878d616cf3c089042b2becedeb06b5d599936194ab92e5a5b44d663bf0f
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.0.orig.tar.gz' openexr_2.2.0.orig.tar.gz 14489661 SHA256:36a012f6c43213f840ce29a8b182700f6cf6b214bea0d5735594136b44914231
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.0-11.1.debian.tar.xz' openexr_2.2.0-11.1.debian.tar.xz 17344 SHA256:d0499a25e6307dea5f985cb11a00045b7f22b71f4b86bca00b133be4acfa8a4e
```

Other potentially useful URLs:

- https://sources.debian.net/src/openexr/2.2.0-11.1/ (for browsing the source)
- https://sources.debian.net/src/openexr/2.2.0-11.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openexr/2.2.0-11.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjpeg2=2.3.0-1`

Binary Packages:

- `libopenjp2-7:amd64=2.3.0-1`
- `libopenjp2-7-dev=2.3.0-1`

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
$ apt-get source -qq --print-uris openjpeg2=2.3.0-1
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.3.0-1.dsc' openjpeg2_2.3.0-1.dsc 2725 SHA256:bd59d04084ca51ac063d1920b2615879c7eba172d7eecea61765a0cc2c2fe7cb
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.3.0.orig.tar.gz' openjpeg2_2.3.0.orig.tar.gz 2074456 SHA256:fd5ca8cf3f195b0a54c56193c5897bb423c00db577afda4033318006769a5833
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.3.0-1.debian.tar.xz' openjpeg2_2.3.0-1.debian.tar.xz 17744 SHA256:a7036deea45045b7bf46acbe50ba0dc648d56058534f673bc6d4add1f052184a
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjpeg2/2.3.0-1/ (for browsing the source)
- https://sources.debian.net/src/openjpeg2/2.3.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjpeg2/2.3.0-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.4.45+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.4.45+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.4.45+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssh=1:7.6p1-2`

Binary Packages:

- `openssh-client=1:7.6p1-2`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Beer-ware`
- `Expat-with-advertising-restriction`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openssh=1:7.6p1-2
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.6p1-2.dsc' openssh_7.6p1-2.dsc 3090 SHA256:6f67d575bb11c09ab97dd5119b1835901b2ea08095f5f4c4d0c08e0949621ff0
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.6p1.orig.tar.gz' openssh_7.6p1.orig.tar.gz 1489788 SHA256:a323caeeddfe145baaa0db16e98d784b1fbc7dd436a6bf1f479dfd5cd1d21723
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.6p1.orig.tar.gz.asc' openssh_7.6p1.orig.tar.gz.asc 683 SHA256:14e5097d68c73d42afe6314a510e7056b1748ac1d1e19518057b270d19656ad6
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.6p1-2.debian.tar.xz' openssh_7.6p1-2.debian.tar.xz 159500 SHA256:84dee2fc11fbda5dc0ac912d14c06433f83cacdb565997b126c0d31b23201569
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssh/1:7.6p1-2/ (for browsing the source)
- https://sources.debian.net/src/openssh/1:7.6p1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssh/1:7.6p1-2/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/openssl1.0/1.0.2l-2/ (for browsing the source)
- https://sources.debian.net/src/openssl1.0/1.0.2l-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl1.0/1.0.2l-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.0f-5`

Binary Packages:

- `libssl-dev:amd64=1.1.0f-5`
- `libssl1.1:amd64=1.1.0f-5`
- `openssl=1.1.0f-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/openssl/1.1.0f-5/


### `dpkg` source package: `p11-kit=0.23.7-3`

Binary Packages:

- `libp11-kit0:amd64=0.23.7-3`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/p11-kit/0.23.7-3/


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

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.1.8-3.6/ (for browsing the source)
- https://sources.debian.net/src/pam/1.1.8-3.6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.1.8-3.6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pango1.0=1.40.12-1`

Binary Packages:

- `libpango-1.0-0:amd64=1.40.12-1`
- `libpangocairo-1.0-0:amd64=1.40.12-1`
- `libpangoft2-1.0-0:amd64=1.40.12-1`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `LGPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.40.12-1
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.40.12-1.dsc' pango1.0_1.40.12-1.dsc 3315 SHA256:21e17cb046cc0823eda025b5be6e88cb8acf00c2e5230699e3456f55e745265d
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.40.12.orig.tar.xz' pango1.0_1.40.12.orig.tar.xz 856228 SHA256:75f1a9a8e4e2b28cbc078b50c1fa927ee4ded994d1ade97c5603e2d1f3161cfc
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.40.12-1.debian.tar.xz' pango1.0_1.40.12-1.debian.tar.xz 27520 SHA256:54a1093a552551e5ae215c2664a4bf80e2b6d9646887d7384184974d72c469d1
```

Other potentially useful URLs:

- https://sources.debian.net/src/pango1.0/1.40.12-1/ (for browsing the source)
- https://sources.debian.net/src/pango1.0/1.40.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pango1.0/1.40.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `patch=2.7.5-1`

Binary Packages:

- `patch=2.7.5-1+b2`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.5-1
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.5-1.dsc' patch_2.7.5-1.dsc 1795 SHA256:909ac12aa395f8b32a4524dcea67207567e99d2560e2a833ba577ec64c4cc1bd
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.5.orig.tar.xz' patch_2.7.5.orig.tar.xz 727704 SHA256:fd95153655d6b95567e623843a0e77b81612d502ecf78a489a4aed7867caa299
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.5-1.debian.tar.xz' patch_2.7.5-1.debian.tar.xz 8116 SHA256:c5b9797658fdc1c150072fc9568279bd62c591b2fc43fa6d33750a9a4e8f0ddd
```

Other potentially useful URLs:

- https://sources.debian.net/src/patch/2.7.5-1/ (for browsing the source)
- https://sources.debian.net/src/patch/2.7.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/patch/2.7.5-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.22-3/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.22-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.22-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=2:8.39-4`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-4`
- `libpcre3:amd64=2:8.39-4`
- `libpcre3-dev:amd64=2:8.39-4`
- `libpcre32-3:amd64=2:8.39-4`
- `libpcrecpp0v5:amd64=2:8.39-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-4
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-4.dsc' pcre3_8.39-4.dsc 2224 SHA256:d79722717c869fce3343423d479e3cc0dfe5a31e392f9946a7054a11d395a544
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-4.debian.tar.gz' pcre3_8.39-4.debian.tar.gz 25456 SHA256:4b1f803c48e0d09bd4d8740c267ded7896afeb3a7ba0fc24326caf51044cf768
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre3/2:8.39-4/ (for browsing the source)
- https://sources.debian.net/src/pcre3/2:8.39-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre3/2:8.39-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.26.1-2`

Binary Packages:

- `libperl5.26:amd64=5.26.1-2`
- `perl=5.26.1-2`
- `perl-base=5.26.1-2`
- `perl-modules-5.26=5.26.1-2`

Licenses: (parsed from: `/usr/share/doc/libperl5.26/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.26/copyright`)

- `Artist | GPL-1+ | Artistic-dist`
- `Artistic`
- `Artistic,`
- `Artistic-2`
- `Artistic-dist`
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
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/perl/5.26.1-2/


### `dpkg` source package: `pinentry=1.0.0-3`

Binary Packages:

- `pinentry-curses=1.0.0-3`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.0.0-3
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.0.0-3.dsc' pinentry_1.0.0-3.dsc 2608 SHA256:c296bb85066d7a4b0ba33f9fc344b2cf86426d93ad2ff0b2df52c76cef1ca610
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.0.0.orig.tar.bz2' pinentry_1.0.0.orig.tar.bz2 436930 SHA256:1672c2edc1feb036075b187c0773787b2afd0544f55025c645a71b4c2f79275a
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.0.0-3.debian.tar.xz' pinentry_1.0.0-3.debian.tar.xz 30148 SHA256:da66b517e0f2d2d6dcad80db7b53dfa052b6771ce598443c61529b7bf4143cde
```

Other potentially useful URLs:

- https://sources.debian.net/src/pinentry/1.0.0-3/ (for browsing the source)
- https://sources.debian.net/src/pinentry/1.0.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pinentry/1.0.0-3/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/pixman/0.34.0-1/ (for browsing the source)
- https://sources.debian.net/src/pixman/0.34.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pixman/0.34.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkg-config=0.29-4`

Binary Packages:

- `pkg-config=0.29-4+b1`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29-4
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-4.dsc' pkg-config_0.29-4.dsc 1718 SHA256:6a00ca4f4813c9d531b7f99072e1b6b443a8eea045c97e7d2b9d34f9a960deb5
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29.orig.tar.gz' pkg-config_0.29.orig.tar.gz 1973875 SHA256:c8507705d2a10c67f385d66ca2aae31e81770cc0734b4191eb8c489e864a006b
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-4.diff.gz' pkg-config_0.29-4.diff.gz 7560 SHA256:0c1253e3755942d3bf407d5c6465568e97ee960c8d9829c53cbae8ff26dc3762
```

Other potentially useful URLs:

- https://sources.debian.net/src/pkg-config/0.29-4/ (for browsing the source)
- https://sources.debian.net/src/pkg-config/0.29-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pkg-config/0.29-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `postgresql-10=10.0-1`

Binary Packages:

- `libpq-dev=10.0-1+b1`
- `libpq5:amd64=10.0-1+b1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/postgresql-10/10.0-1/


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

Other potentially useful URLs:

- https://sources.debian.net/src/procps/2:3.3.12-3/ (for browsing the source)
- https://sources.debian.net/src/procps/2:3.3.12-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/procps/2:3.3.12-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-defaults=2.7.14-1`

Binary Packages:

- `libpython-stdlib:amd64=2.7.14-1`
- `python=2.7.14-1`
- `python-minimal=2.7.14-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.14-1
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.14-1.dsc' python-defaults_2.7.14-1.dsc 2663 SHA256:ec101082736bce4137bce3b6d68fbc80099612cfd9456715e4f5540689022ec7
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.14-1.tar.gz' python-defaults_2.7.14-1.tar.gz 274978 SHA256:2afd1a578f1415231d9d08cd8e969d54cdb49ff9c015d61f392aa0a9a515a665
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-defaults/2.7.14-1/ (for browsing the source)
- https://sources.debian.net/src/python-defaults/2.7.14-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-defaults/2.7.14-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python2.7=2.7.14-2`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.14-2`
- `libpython2.7-stdlib:amd64=2.7.14-2`
- `python2.7=2.7.14-2`
- `python2.7-minimal=2.7.14-2`

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
$ apt-get source -qq --print-uris python2.7=2.7.14-2
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.14-2.dsc' python2.7_2.7.14-2.dsc 3312 SHA256:8c61b0f2ff28ceb5b42b16f180033355231089d2dab7434fde3abb63526a4e90
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.14.orig.tar.gz' python2.7_2.7.14.orig.tar.gz 17176758 SHA256:304c9b202ea6fbd0a4a8e0ad3733715fbd4749f2204a9173a58ec53c32ea73e8
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.14-2.diff.gz' python2.7_2.7.14-2.diff.gz 286150 SHA256:3a35d872751a66f0ec880d4ad5b5c70f5d7b1bfeee817724701d5c4988f54943
```

Other potentially useful URLs:

- https://sources.debian.net/src/python2.7/2.7.14-2/ (for browsing the source)
- https://sources.debian.net/src/python2.7/2.7.14-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python2.7/2.7.14-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-defaults=3.6.3-2`

Binary Packages:

- `libpython3-stdlib:amd64=3.6.3-2`
- `python3=3.6.3-2`
- `python3-minimal=3.6.3-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.6.3-2
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.6.3-2.dsc' python3-defaults_3.6.3-2.dsc 2784 SHA256:df91831a9a307f5e7f3fabdda52f21eeffd2f683cbeca5a581c37c1c0912549d
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.6.3-2.tar.gz' python3-defaults_3.6.3-2.tar.gz 131122 SHA256:1bb48cb17db5e2a39006c44c8ad6d9c832b1a2a3ac0021122e6d8879b5ee9fba
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3-defaults/3.6.3-2/ (for browsing the source)
- https://sources.debian.net/src/python3-defaults/3.6.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3-defaults/3.6.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3.6=3.6.3-1`

Binary Packages:

- `libpython3.6-minimal:amd64=3.6.3-1`
- `libpython3.6-stdlib:amd64=3.6.3-1`
- `python3.6=3.6.3-1`
- `python3.6-minimal=3.6.3-1`

Licenses: (parsed from: `/usr/share/doc/libpython3.6-minimal/copyright`, `/usr/share/doc/libpython3.6-stdlib/copyright`, `/usr/share/doc/python3.6/copyright`, `/usr/share/doc/python3.6-minimal/copyright`)

- `* Permission to use this software in any way is granted without`
- `By obtaining, using, and/or copying this software and/or its`
- `GPL-2`
- `Permission  is  hereby granted,  free  of charge,  to  any person`
- `Permission is hereby granted, free of charge, to any person obtaining`
- `Permission to use, copy, modify,`
- `Redistribution`
- `This software is provided 'as-is', without any express`
- `This software is provided as-is, without express`
- `binary forms, with`
- `distribute this software`
- `distribute this software and`
- `distribute this software for any`
- `implied`
- `its`
- `use in source`
- `without`

Source:

```console
$ apt-get source -qq --print-uris python3.6=3.6.3-1
'http://deb.debian.org/debian/pool/main/p/python3.6/python3.6_3.6.3-1.dsc' python3.6_3.6.3-1.dsc 3318 SHA256:4e17390244f7bf310a68f007199dbc0ec4fcb3ae36eaa88831f51d46cff98374
'http://deb.debian.org/debian/pool/main/p/python3.6/python3.6_3.6.3.orig.tar.xz' python3.6_3.6.3.orig.tar.xz 16974296 SHA256:cda7d967c9a4bfa52337cdf551bcc5cff026b6ac50a8834e568ce4a794ca81da
'http://deb.debian.org/debian/pool/main/p/python3.6/python3.6_3.6.3-1.debian.tar.xz' python3.6_3.6.3-1.debian.tar.xz 205080 SHA256:c5df2f42f6e1dc69cba9cfa7bbe5c95b4016a8203e5367208b54b1387c6c963a
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3.6/3.6.3-1/ (for browsing the source)
- https://sources.debian.net/src/python3.6/3.6.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3.6/3.6.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=7.0-3`

Binary Packages:

- `libreadline-dev:amd64=7.0-3`
- `libreadline7:amd64=7.0-3`
- `readline-common=7.0-3`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=7.0-3
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-3.dsc' readline_7.0-3.dsc 2538 SHA256:f27a5dc9053b88641e3effc6c03b7840cbbbd887e8dcaf05d9e336c7bc7c6a53
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-3.debian.tar.xz' readline_7.0-3.debian.tar.xz 30012 SHA256:bf166310d6ca7716f2bd0e9e06cee2458b0157f7989d028730fc305643560175
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline/7.0-3/ (for browsing the source)
- https://sources.debian.net/src/readline/7.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline/7.0-3/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-1/ (for browsing the source)
- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rtmpdump/2.4+20151223.gitfa8646d.1-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.4-1/ (for browsing the source)
- https://sources.debian.net/src/sed/4.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sensible-utils=0.0.10`

Binary Packages:

- `sensible-utils=0.0.10`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sensible-utils/0.0.10/


### `dpkg` source package: `serf=1.3.9-3`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-3`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.9-3/


### `dpkg` source package: `shadow=1:4.5-1`

Binary Packages:

- `login=1:4.5-1`
- `passwd=1:4.5-1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.5-1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5-1.dsc' shadow_4.5-1.dsc 2282 SHA256:1e93b2e4cb3f0f14a52dd9603bf8153f31a3117c580c0b46fd94822437516ff6
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5.orig.tar.xz' shadow_4.5.orig.tar.xz 1344524 SHA256:22b0952dc944b163e2370bb911b11ca275fc80ad024267cf21e496b28c23d500
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5-1.debian.tar.xz' shadow_4.5-1.debian.tar.xz 462752 SHA256:0aa8980eddef9159ee6532d40bda92237ad2163dcc2bb6601aecc415ab9662ee
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.5-1/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shared-mime-info=1.9-2`

Binary Packages:

- `shared-mime-info=1.9-2`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.9-2
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.9-2.dsc' shared-mime-info_1.9-2.dsc 2203 SHA256:0592a6550b9bee8895d4a4fe577a15a28a5a911135765ae74b310abaea5c5b66
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.9.orig.tar.xz' shared-mime-info_1.9.orig.tar.xz 607648 SHA256:5c0133ec4e228e41bdf52f726d271a2d821499c2ab97afd3aa3d6cf43efcdc83
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.9-2.debian.tar.xz' shared-mime-info_1.9-2.debian.tar.xz 9992 SHA256:18cb7e2c0f2a3daa2d55abc87c4619d68f537f268a3bad8510e1fcf0d6b0cd76
```

Other potentially useful URLs:

- https://sources.debian.net/src/shared-mime-info/1.9-2/ (for browsing the source)
- https://sources.debian.net/src/shared-mime-info/1.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shared-mime-info/1.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.20.1-2`

Binary Packages:

- `libsqlite3-0:amd64=3.20.1-2`
- `libsqlite3-dev:amd64=3.20.1-2`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sqlite3/3.20.1-2/


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

Other potentially useful URLs:

- https://sources.debian.net/src/subversion/1.9.7-2/ (for browsing the source)
- https://sources.debian.net/src/subversion/1.9.7-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/subversion/1.9.7-2/ (for access to the source package after it no longer exists in the archive)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/systemd/234-3/


### `dpkg` source package: `sysvinit=2.88dsf-59.10`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.10`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.10
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10.dsc' sysvinit_2.88dsf-59.10.dsc 2353 SHA256:b25f6800b2c0f1cfd978979f25371a79493c81c6ad0815b541d12deaae75e319
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10.debian.tar.xz' sysvinit_2.88dsf-59.10.debian.tar.xz 132504 SHA256:3dd24f403de4565abe55181fbde15ac013e520bf65f159b875637f6c41972519
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/2.88dsf-59.10/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/2.88dsf-59.10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/2.88dsf-59.10/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.29b-2/ (for browsing the source)
- https://sources.debian.net/src/tar/1.29b-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.29b-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tiff=4.0.8-6`

Binary Packages:

- `libtiff5:amd64=4.0.8-6`
- `libtiff5-dev:amd64=4.0.8-6`
- `libtiffxx5:amd64=4.0.8-6`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiff5-dev/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.8-6
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.8-6.dsc' tiff_4.0.8-6.dsc 2157 SHA256:710a29a4cbd29583170b294cb1c574cc8bc27b3d4af8b00b47d0c688642b0a92
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.8.orig.tar.gz' tiff_4.0.8.orig.tar.gz 2065574 SHA256:59d7a5a8ccd92059913f246877db95a2918e6c04fb9d43fd74e5c3390dac2910
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.8-6.debian.tar.xz' tiff_4.0.8-6.debian.tar.xz 27344 SHA256:9307f5343882fa0d8229d20f35cd03cf113dc88881bf697b0ee2b3969ffdbe72
```

Other potentially useful URLs:

- https://sources.debian.net/src/tiff/4.0.8-6/ (for browsing the source)
- https://sources.debian.net/src/tiff/4.0.8-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tiff/4.0.8-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2017b-2`

Binary Packages:

- `tzdata=2017b-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tzdata/2017b-2/


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

Other potentially useful URLs:

- https://sources.debian.net/src/ucf/3.0036/ (for browsing the source)
- https://sources.debian.net/src/ucf/3.0036/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ucf/3.0036/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.29.2-5`

Binary Packages:

- `bsdutils=1:2.29.2-5+b1`
- `fdisk=2.29.2-5+b1`
- `libblkid1:amd64=2.29.2-5+b1`
- `libfdisk1:amd64=2.29.2-5+b1`
- `libmount1:amd64=2.29.2-5+b1`
- `libsmartcols1:amd64=2.29.2-5+b1`
- `libuuid1:amd64=2.29.2-5+b1`
- `mount=2.29.2-5+b1`
- `util-linux=2.29.2-5+b1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/util-linux/2.29.2-5/


### `dpkg` source package: `wget=1.19.2-1`

Binary Packages:

- `wget=1.19.2-1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.19.2-1
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.2-1.dsc' wget_1.19.2-1.dsc 2170 SHA256:1df31cab2aac1492bffc768fe50e83052b55e7ff40e890fc3c34a0b16a8fbe24
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.2.orig.tar.gz' wget_1.19.2.orig.tar.gz 4349267 SHA256:4f4a673b6d466efa50fbfba796bd84a46ae24e370fa562ede5b21ab53c11a920
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.2.orig.tar.gz.asc' wget_1.19.2.orig.tar.gz.asc 566 SHA256:094777a894b05397024fad497ef723bd5d9e607bbd0c8c62f8ddef1b4fbce7ff
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.2-1.debian.tar.xz' wget_1.19.2-1.debian.tar.xz 27876 SHA256:a9506f344c88e09b5ea02ac5cd5e571d407c59e1b559889d90722aff5e26235d
```

Other potentially useful URLs:

- https://sources.debian.net/src/wget/1.19.2-1/ (for browsing the source)
- https://sources.debian.net/src/wget/1.19.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/wget/1.19.2-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-core/7.0.31-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-core/7.0.31-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-core/7.0.31-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-input/2.3.2-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-input/2.3.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-input/2.3.2-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-kb/1.0.7-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-kb/1.0.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-kb/1.0.7-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-render/2:0.11.1-2/ (for browsing the source)
- https://sources.debian.net/src/x11proto-render/2:0.11.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-render/2:0.11.1-2/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-xext/7.3.0-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-xext/7.3.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-xext/7.3.0-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/xorg-sgml-doctools/1:1.11-1/ (for browsing the source)
- https://sources.debian.net/src/xorg-sgml-doctools/1:1.11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg-sgml-doctools/1:1.11-1/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/xorg/1:7.7+19/ (for browsing the source)
- https://sources.debian.net/src/xorg/1:7.7+19/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg/1:7.7+19/ (for access to the source package after it no longer exists in the archive)

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

Other potentially useful URLs:

- https://sources.debian.net/src/xtrans/1.3.5-1/ (for browsing the source)
- https://sources.debian.net/src/xtrans/1.3.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xtrans/1.3.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.2.2-1.3`

Binary Packages:

- `liblzma-dev:amd64=5.2.2-1.3`
- `liblzma5:amd64=5.2.2-1.3`
- `xz-utils=5.2.2-1.3`

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
$ apt-get source -qq --print-uris xz-utils=5.2.2-1.3
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.dsc' xz-utils_5.2.2-1.3.dsc 2575 SHA256:3ea4e6a32f6265b152f89ceafe78c8839e5f4bb1cad137b159fe2013817f9342
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA256:f341b1906ebcdde291dd619399ae944600edc9193619dd0c0110a5f05bfcc89e
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA256:2cc0575556e1331b3f468e6e7dca5969ce86efcc315d62672279b4e68b2e449f
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.debian.tar.xz' xz-utils_5.2.2-1.3.debian.tar.xz 108680 SHA256:d76c3acf39d0999c14384695394970e8f98853fd6736ba91972d3e67106bc6f6
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.2.2-1.3/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.2.2-1.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.2.2-1.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.2.8.dfsg-5`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-5`
- `zlib1g-dev:amd64=1:1.2.8.dfsg-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.8.dfsg-5
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-5.dsc' zlib_1.2.8.dfsg-5.dsc 2259 SHA256:35ebfdbb74b3563d344b2bb946909f5d3221cdf971876549ea7ccec01fabcbec
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz' zlib_1.2.8.dfsg.orig.tar.gz 361943 SHA256:2caecc2c3f1ef8b87b8f72b128a03e61c307e8c14f5ec9b422ef7914ba75cf9f
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-5.debian.tar.xz' zlib_1.2.8.dfsg-5.debian.tar.xz 18500 SHA256:7b88f58d1bfe8e873b8362ede3d0bc569793decc60094189fad1a110599cdd95
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-5/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.8.dfsg-5/ (for access to the source package after it no longer exists in the archive)
