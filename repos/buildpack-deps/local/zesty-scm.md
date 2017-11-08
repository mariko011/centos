# `buildpack-deps:zesty-scm`

## Docker Metadata

- Image ID: `sha256:ba7c99550a5ecc335effc28f0553cb46f1101d4222100ce62c25428868db9e10`
- Created: `2017-11-04T15:39:20.515776047Z`
- Virtual Size: ~ 240.69 Mb  
  (total size of all layers on-disk)
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
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3.dsc' acl_2.2.52-3.dsc 2025 SHA256:82e344b9ab176559a85630b74ee5a68d678d7f24b6fe8139f2fd9fcf38a48095
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3.debian.tar.xz' acl_2.2.52-3.debian.tar.xz 8740 SHA256:fc3f1178d18288993fc4ce4853b7f9dcdf0bd1fd26e4f69349a4e4e5916d1fa8
```

### `dpkg` source package: `adduser=3.113+nmu3ubuntu5`

Binary Packages:

- `adduser=3.113+nmu3ubuntu5`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.113+nmu3ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113+nmu3ubuntu5.dsc' adduser_3.113+nmu3ubuntu5.dsc 1856 SHA256:8ee45bcc264fbeaf8bf0ac56c7f79d60f4aed922acd622c5497809e66961d6a5
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113+nmu3ubuntu5.tar.gz' adduser_3.113+nmu3ubuntu5.tar.gz 362722 SHA256:03221563714d853cda454deabbd6eb87c41fbc87509e929828f8b670560f129f
```

### `dpkg` source package: `apr-util=1.5.4-3`

Binary Packages:

- `libaprutil1:amd64=1.5.4-3`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.5.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.4-3.dsc' apr-util_1.5.4-3.dsc 2646 SHA256:352bbbdf8d4e18014614d5a92da11b599cd04bb30ee03d9f04f26a75626371c7
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.4.orig.tar.bz2' apr-util_1.5.4.orig.tar.bz2 694427 SHA256:a6cf327189ca0df2fb9d5633d7326c460fe2b61684745fd7963e79a6dd0dc82e
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.4-3.debian.tar.xz' apr-util_1.5.4-3.debian.tar.xz 212220 SHA256:c5e7bfcdafb16104e324ddb6825b94577a57a5b77b809dc0330e38ecab030efa
```

### `dpkg` source package: `apr=1.5.2-5`

Binary Packages:

- `libapr1:amd64=1.5.2-5`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.5.2-5
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.2-5.dsc' apr_1.5.2-5.dsc 2115 SHA256:b58bb3209c8a28bff47666de6a9bf32292303fdc2433c9fafb15f2a9e6c16ca6
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.2.orig.tar.bz2' apr_1.5.2.orig.tar.bz2 826885 SHA256:7d03ed29c22a7152be45b8e50431063736df9e1daa1ddf93f6a547ba7a28f67a
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.2-5.debian.tar.xz' apr_1.5.2-5.debian.tar.xz 212856 SHA256:5b253cd3acc284241c3cb4a84d9d16f9c5c7775c8f7a26b3a0068ff174bacf76
```

### `dpkg` source package: `apt=1.4.6~17.04.1`

Binary Packages:

- `apt=1.4.6~17.04.1`
- `libapt-pkg5.0:amd64=1.4.6~17.04.1`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.4.6~17.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.4.6~17.04.1.dsc' apt_1.4.6~17.04.1.dsc 2581 SHA256:968a0b69e28dcabdaf592e74d7588f66f3b63fe33a641e037552a1a346607026
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.4.6~17.04.1.tar.xz' apt_1.4.6~17.04.1.tar.xz 2084592 SHA256:033527cfbf583576117e03f5c36e77746e09334e9cd38efb06117b45cc2b9626
```

### `dpkg` source package: `attr=1:2.4.47-2`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.dsc' attr_2.4.47-2.dsc 2027 SHA256:ee842d6d62d473acf02b494c432cf33128fa46455a09d3172c77c252449fa1a6
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.debian.tar.xz' attr_2.4.47-2.debian.tar.xz 8096 SHA256:f65909562def601b1556393f5656032c058dc574ba622414ad3eb80c7b05a42a
```

### `dpkg` source package: `audit=1:2.6.6-1ubuntu1`

Binary Packages:

- `libaudit-common=1:2.6.6-1ubuntu1`
- `libaudit1:amd64=1:2.6.6-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.6.6-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.6.6-1ubuntu1.dsc' audit_2.6.6-1ubuntu1.dsc 2748 SHA256:9b080441478f3ec833d2d2650cbc52c94e9ee4d1b0ce8e3b193d6e8062bffd29
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.6.6.orig.tar.gz' audit_2.6.6.orig.tar.gz 1080510 SHA256:61d8dc61e882fdbb75153a1316817a8f8c8fca25de588256edd81fbb03e7994b
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.6.6-1ubuntu1.debian.tar.xz' audit_2.6.6-1ubuntu1.debian.tar.xz 19856 SHA256:242f5d01e042dbe0e178d0f0c6fd0ad07f008898962b0f28e8c9e74f91c11e27
```

### `dpkg` source package: `base-files=9.6ubuntu13`

Binary Packages:

- `base-files=9.6ubuntu13`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=9.6ubuntu13
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.6ubuntu13.dsc' base-files_9.6ubuntu13.dsc 1580 SHA256:feb612af23635b8ff5428b6632d981069404539a4cca415179b5dd1807144da4
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.6ubuntu13.tar.xz' base-files_9.6ubuntu13.tar.xz 65712 SHA256:93f382c0c8e6119545cae76da8a640a9f3980067b2801e293553f1307118cc6a
```

### `dpkg` source package: `base-passwd=3.5.43`

Binary Packages:

- `base-passwd=3.5.43`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.43
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.43.dsc' base-passwd_3.5.43.dsc 1749 SHA256:174a03d0df0d0f36cc186592e36472339632de094d60f9fcab370e1101a2430d
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.43.tar.xz' base-passwd_3.5.43.tar.xz 52596 SHA256:7768d10e2c08469cc81342e391e059f0426afdb6eb74a3102beef59ac45ab994
```

### `dpkg` source package: `bash=4.4-2ubuntu1.1`

Binary Packages:

- `bash=4.4-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4-2ubuntu1.1.dsc' bash_4.4-2ubuntu1.1.dsc 2305 SHA256:10309410dfbcf825b4c777753add3698ae529e1d8118748bf21cd2e1e568e839
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.orig.tar.xz' bash_4.4.orig.tar.xz 4878580 SHA256:819ebb6a23799e9e4ca56ac579778c46902005bd5ade4f131ed293d9f77108e7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4-2ubuntu1.1.debian.tar.xz' bash_4.4-2ubuntu1.1.debian.tar.xz 68360 SHA256:32daf2faf8db10982f4567ff13bd353821570c73ffdf4916610a1898a179b819
```

### `dpkg` source package: `bzip2=1.0.6-8.1`

Binary Packages:

- `libbz2-1.0:amd64=1.0.6-8.1`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1.dsc' bzip2_1.0.6-8.1.dsc 2082 SHA256:d80deed11a1419ad090cb486dd2335850fd8719b809c32002dea04b485f55dbd
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1.debian.tar.bz2' bzip2_1.0.6-8.1.debian.tar.bz2 59875 SHA256:bdbe7bf29e014e44d79bb7c733fe63cae990ab50882a4a07867cf69c61ad72b7
```

### `dpkg` source package: `bzr=2.7.0+bzr6619-7ubuntu0.1`

Binary Packages:

- `bzr=2.7.0+bzr6619-7ubuntu0.1`
- `python-bzrlib=2.7.0+bzr6619-7ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0+bzr6619-7ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0+bzr6619-7ubuntu0.1.dsc' bzr_2.7.0+bzr6619-7ubuntu0.1.dsc 2951 SHA256:819f3c5314628bc0e84c5b8b071c8de6d8c55a50cf5d1a6c53ece0c2fb875e34
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0+bzr6619.orig.tar.gz' bzr_2.7.0+bzr6619.orig.tar.gz 10945598 SHA256:a0192999245457fbd564702518bc96453ac0f9b38ea031a466679839b346fa14
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0+bzr6619-7ubuntu0.1.debian.tar.xz' bzr_2.7.0+bzr6619-7ubuntu0.1.debian.tar.xz 69708 SHA256:99d39f6f53815737419c9cd9549423149c495a84008fa1e6f4d28a54d8d7a543
```

### `dpkg` source package: `ca-certificates=20170717~17.04.1`

Binary Packages:

- `ca-certificates=20170717~17.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20170717~17.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20170717~17.04.1.dsc' ca-certificates_20170717~17.04.1.dsc 1884 SHA256:471a1f027707a7004b54149b183a17ecf1ab2d1f611907947634a1258d942149
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20170717~17.04.1.tar.xz' ca-certificates_20170717~17.04.1.tar.xz 293036 SHA256:4fe943a96d3d1590017712041ca7af4edfe1c69fd7108e5983d12ea7d53ad890
```

### `dpkg` source package: `cdebconf=0.213ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.213ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.213ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.213ubuntu1.dsc' cdebconf_0.213ubuntu1.dsc 2769 SHA256:76cb3f0b1685629220b0e4c3105757b95714f7350df4e7863d5310f1f581fee0
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.213ubuntu1.tar.xz' cdebconf_0.213ubuntu1.tar.xz 272596 SHA256:624feaf9e7e5f407271f99e06e54d5002fcce51345553a626caf7b4a65f0afd1
```

### `dpkg` source package: `configobj=5.0.6-2`

Binary Packages:

- `python-configobj=5.0.6-2`

Licenses: (parsed from: `/usr/share/doc/python-configobj/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris configobj=5.0.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-2.dsc' configobj_5.0.6-2.dsc 2381 SHA256:9bb8577128460ff33326d3d90b8454376c83f4d41b1da61aeabdbfcbfb5e0087
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6.orig.tar.gz' configobj_5.0.6.orig.tar.gz 143664 SHA256:2e140354efcca6f558ff9ee941b435ae09a617bc071797bef62c8d6ed2033d5e
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-2.debian.tar.xz' configobj_5.0.6-2.debian.tar.xz 7436 SHA256:dc677cd329b4a3aacebe10c5a169d9d092cc27888c3f3f9203930cacd6a0eab8
```

### `dpkg` source package: `coreutils=8.26-3ubuntu3`

Binary Packages:

- `coreutils=8.26-3ubuntu3`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.26-3ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.26-3ubuntu3.dsc' coreutils_8.26-3ubuntu3.dsc 2109 SHA256:a5dbe5422bd617ec7c05cf048a6e555888ffefe58f3ad9953f6b4d62099e60f7
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.26.orig.tar.xz' coreutils_8.26.orig.tar.xz 5810244 SHA256:155e94d748f8e2bc327c66e0cbebdb8d6ab265d2f37c3c928f7bf6c3beba9a8e
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.26-3ubuntu3.debian.tar.xz' coreutils_8.26-3ubuntu3.debian.tar.xz 28908 SHA256:db8351c04ae0a4b6093490353a7dcdcea932e5a07fc85da9a6e0cf781b01e713
```

### `dpkg` source package: `curl=7.52.1-4ubuntu1.3`

Binary Packages:

- `curl=7.52.1-4ubuntu1.3`
- `libcurl3:amd64=7.52.1-4ubuntu1.3`
- `libcurl3-gnutls:amd64=7.52.1-4ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.52.1-4ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.52.1-4ubuntu1.3.dsc' curl_7.52.1-4ubuntu1.3.dsc 2835 SHA256:a002dce096a87b9e1c21ee5aa6e487366a478a4a0ef0a823b6195897e728d922
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.52.1.orig.tar.gz' curl_7.52.1.orig.tar.gz 3504621 SHA256:a8984e8b20880b621f61a62d95ff3c0763a3152093a9f9ce4287cfd614add6ae
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.52.1-4ubuntu1.3.debian.tar.xz' curl_7.52.1-4ubuntu1.3.debian.tar.xz 40532 SHA256:0797ee5aa1aa244bf80eff8f267ddd26117e9aad295b3225d70468729049a12e
```

### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-2ubuntu1`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-2ubuntu1`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27~101-g0780600+dfsg-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-2ubuntu1.dsc' cyrus-sasl2_2.1.27~101-g0780600+dfsg-2ubuntu1.dsc 2927 SHA256:2dfd6d5587f4508aec944e569a77c2e78293ec017b7879430d354122ad85d18b
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz 1143888 SHA256:69f34971f768e7ee6a6b647ec2d16a5a72a854ecd4602b019d5f79ba61063fdc
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-2ubuntu1.debian.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg-2ubuntu1.debian.tar.xz 94876 SHA256:1d43d9cce1a632bd81b478a9ef08c27610b5e289ec58667d3fb766ffba7d6225
```

### `dpkg` source package: `dash=0.5.8-2.3ubuntu1`

Binary Packages:

- `dash=0.5.8-2.3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.3ubuntu1.dsc' dash_0.5.8-2.3ubuntu1.dsc 1882 SHA256:97c31601cd0cd910dbe95127c3abd6e43b09c9bffbaba18165166929a0545f82
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.3ubuntu1.diff.gz' dash_0.5.8-2.3ubuntu1.diff.gz 73758 SHA256:9c09d7737ff18f084335ffcd9e8c2a106a2c8ad512d4a9967f2912be1dfa2aee
```

### `dpkg` source package: `db5.3=5.3.28-12`

Binary Packages:

- `libdb5.3:amd64=5.3.28-12`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-12
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-12.dsc' db5.3_5.3.28-12.dsc 3199 SHA256:1c4d6149f83a798e69f6d8e7444711d963c31d649284357135ea33b319c71bba
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-12.debian.tar.xz' db5.3_5.3.28-12.debian.tar.xz 27812 SHA256:7907d8ad4c408857a71782436283a7ab67d7fe0f38ae15782f08077bdfd55c03
```

### `dpkg` source package: `debconf=1.5.59ubuntu1`

Binary Packages:

- `debconf=1.5.59ubuntu1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.59ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.59ubuntu1.dsc' debconf_1.5.59ubuntu1.dsc 2002 SHA256:38e2a4c8567eb9b6d1e499b61ff474b1f484709e4060a4808552406a0a86b19c
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.59ubuntu1.tar.xz' debconf_1.5.59ubuntu1.tar.xz 574620 SHA256:000d80d932b871eca0534fa0d7463da5f0c99f1a9e0dc4f07c1d44f045d3e618
```

### `dpkg` source package: `debianutils=4.8.1`

Binary Packages:

- `debianutils=4.8.1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.1.dsc' debianutils_4.8.1.dsc 1693 SHA256:0f187e087a9c96a70e672f58fa324d4b65f60f1e13ee8219de7e58f061ae7c9e
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.1.tar.xz' debianutils_4.8.1.tar.xz 156072 SHA256:2c395c0bdcfe89de30828b1d25cc5549ded5225a6d3625fbcb2cc0881ef5f026
```

### `dpkg` source package: `diffutils=1:3.5-3`

Binary Packages:

- `diffutils=1:3.5-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.5-3
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.5-3.dsc' diffutils_3.5-3.dsc 1453 SHA256:8b8e4d9d48ab35fd2c5759a3d0854e7d85c33b3fa09a185c20865793090feff9
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.5.orig.tar.xz' diffutils_3.5.orig.tar.xz 1360996 SHA256:dad398ccd5b9faca6b0ab219a036453f62a602a56203ac659b43e889bec35533
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.5-3.debian.tar.xz' diffutils_3.5-3.debian.tar.xz 10796 SHA256:5c8464482951de1dcf3c1c53643cd7d0939cd8f7568a7ef84982d368c5cb6695
```

### `dpkg` source package: `dpkg=1.18.10ubuntu2`

Binary Packages:

- `dpkg=1.18.10ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.18.10ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.10ubuntu2.dsc' dpkg_1.18.10ubuntu2.dsc 2119 SHA256:76b2c0868b7558f2557b60939bbf63fa0bb17b5588cdbd85a83435da92f3ff98
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.10ubuntu2.tar.xz' dpkg_1.18.10ubuntu2.tar.xz 4590800 SHA256:c0e164393ead892d81fb60d055d8f03d81bc4a0997f9459e0f85833552a9518d
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.43.4-2.dsc' e2fsprogs_1.43.4-2.dsc 2043 SHA256:e6f6b8dddeb97cc81c3aa7aa826305e1f9c9cd1c3066b2b916e558682fdc7f70
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.43.4.orig.tar.gz' e2fsprogs_1.43.4.orig.tar.gz 7552218 SHA256:484ab0bc1bc07c64267b18cfe7871b6b975bf0a705c5a4563001f035071cdc7c
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.43.4-2.debian.tar.xz' e2fsprogs_1.43.4-2.debian.tar.xz 76444 SHA256:e1713f9e686a71a9d6f119cd178c4ebea502a7c2b43901cc41bcdb61b142b1c8
```

### `dpkg` source package: `expat=2.2.0-2ubuntu0.1`

Binary Packages:

- `libexpat1:amd64=2.2.0-2ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.2.0-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.0-2ubuntu0.1.dsc' expat_2.2.0-2ubuntu0.1.dsc 2368 SHA256:c8794eeb4d57aa90db6e3d2da3f25627ea90e42446e361f9f6f48c8193ce26d4
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.0.orig.tar.bz2' expat_2.2.0.orig.tar.bz2 414352 SHA256:d9e50ff2d19b3538bd2127902a89987474e1a4db8e43a66a4d1a712ab9a504ff
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.0-2ubuntu0.1.debian.tar.xz' expat_2.2.0-2ubuntu0.1.debian.tar.xz 11300 SHA256:475337b1e04d525043e02076dd0d94484a112fb6d318bf82fe1ddb2483c043cf
```

### `dpkg` source package: `explorercanvas=0.r3-4`

Binary Packages:

- `libjs-excanvas=0.r3-4`

Licenses: (parsed from: `/usr/share/doc/libjs-excanvas/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris explorercanvas=0.r3-4
'http://archive.ubuntu.com/ubuntu/pool/universe/e/explorercanvas/explorercanvas_0.r3-4.dsc' explorercanvas_0.r3-4.dsc 2000 SHA256:d168011ed1f110f82b5039a6b070167f1f262d2a35d7fa25a6b5462f73761637
'http://archive.ubuntu.com/ubuntu/pool/universe/e/explorercanvas/explorercanvas_0.r3.orig.tar.gz' explorercanvas_0.r3.orig.tar.gz 50748 SHA256:687af8084781b8eb3451fc55c88f6dfddc2b84428d197daf2c4c33fd5c55fed8
'http://archive.ubuntu.com/ubuntu/pool/universe/e/explorercanvas/explorercanvas_0.r3-4.debian.tar.xz' explorercanvas_0.r3-4.debian.tar.xz 2040 SHA256:afcaa3e229d9b423988fc30439aeee1599c9dac8ad94430309404f9cf9f0c11f
```

### `dpkg` source package: `findutils=4.6.0+git+20161106-2`

Binary Packages:

- `findutils=4.6.0+git+20161106-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20161106-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20161106-2.dsc' findutils_4.6.0+git+20161106-2.dsc 2220 SHA256:f92d95f03e56357bb72e897f4d8b363995f280cfdf6dedfabdec3164f3a7651a
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20161106.orig.tar.xz' findutils_4.6.0+git+20161106.orig.tar.xz 1828956 SHA256:96a3aa120d7300863f39fe56ccb6674d8cde4730b485f4f81083c1a6d33097e3
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20161106-2.debian.tar.xz' findutils_4.6.0+git+20161106-2.debian.tar.xz 26812 SHA256:aca885ac24582f5c393dbbfa362264712ee4922da0ff7aa1fc602e629c89b71b
```

### `dpkg` source package: `gcc-6=6.3.0-12ubuntu2`

Binary Packages:

- `gcc-6-base:amd64=6.3.0-12ubuntu2`
- `libgcc1:amd64=1:6.3.0-12ubuntu2`
- `libstdc++6:amd64=6.3.0-12ubuntu2`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-6=6.3.0-12ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-6/gcc-6_6.3.0-12ubuntu2.dsc' gcc-6_6.3.0-12ubuntu2.dsc 31001 SHA256:6be6167b60434c33f50e0513e07b530ea3c118cb3bc17b62f428b2d525c19a87
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-6/gcc-6_6.3.0.orig.tar.gz' gcc-6_6.3.0.orig.tar.gz 77161407 SHA256:067c2840b1a52ebab9232fa3c70f1422ff3f7b1be98ffb335807c9817491817e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-6/gcc-6_6.3.0-12ubuntu2.diff.gz' gcc-6_6.3.0-12ubuntu2.diff.gz 1846831 SHA256:6224eb9a94fab79477d2eb83c646a1dc313c21b715f07c97605de77502364d13
```

### `dpkg` source package: `gdbm=1.8.3-14`

Binary Packages:

- `libgdbm3:amd64=1.8.3-14`

Licenses: (parsed from: `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-14
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-14.dsc' gdbm_1.8.3-14.dsc 1841 SHA256:312d3d28e287d287ee66e8ae3f25769676b1680ec1adc8c0815b5e9808405b13
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-14.debian.tar.xz' gdbm_1.8.3-14.debian.tar.xz 15308 SHA256:1c0570dd53947ea5980111f51b67356d647c4f21c502443b02397041dde0bf31
```

### `dpkg` source package: `git=1:2.11.0-2ubuntu0.3`

Binary Packages:

- `git=1:2.11.0-2ubuntu0.3`
- `git-man=1:2.11.0-2ubuntu0.3`

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
$ apt-get source -qq --print-uris git=1:2.11.0-2ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.11.0-2ubuntu0.3.dsc' git_2.11.0-2ubuntu0.3.dsc 2988 SHA256:51802153404c1d629615fd9813f2467d586df6e354eb3784396869747fdf7aae
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.11.0.orig.tar.xz' git_2.11.0.orig.tar.xz 4197984 SHA256:7e7e8d69d494892373b87007674be5820a4bc1ef596a0117d03ea3169119fd0b
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.11.0-2ubuntu0.3.debian.tar.xz' git_2.11.0-2ubuntu0.3.debian.tar.xz 527824 SHA256:cb62e5e1b8d250ba5d7e900423bbb557d7e685bb25d8696d8b6a001935a5a35e
```

### `dpkg` source package: `glibc=2.24-9ubuntu2.2`

Binary Packages:

- `libc-bin=2.24-9ubuntu2.2`
- `libc6:amd64=2.24-9ubuntu2.2`
- `multiarch-support=2.24-9ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.24-9ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.24-9ubuntu2.2.dsc' glibc_2.24-9ubuntu2.2.dsc 8830 SHA256:27d3017ec9ed2ad211e59efbd64ed9f282164cb4b398173be0bbe024a53015b7
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.24.orig.tar.xz' glibc_2.24.orig.tar.xz 13921912 SHA256:ed71e8afd2b270f7947a2cea2457a31e1ca4fac08e2731d80edd7ec1730ec84f
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.24-9ubuntu2.2.debian.tar.xz' glibc_2.24-9ubuntu2.2.debian.tar.xz 1022036 SHA256:b178f17651a79c2823ae88e28ee61fbfa744efeb505b54f4c2698cfae6a593fe
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg-1.dsc' gmp_6.1.2+dfsg-1.dsc 2183 SHA256:3a53f6c74c9b2465c1c61446aa9bdc6182fdec8b04075849d4cbf224a73b6fbe
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg-1.debian.tar.xz' gmp_6.1.2+dfsg-1.debian.tar.xz 20652 SHA256:79e73f74197e7628b2f0c02edf01b6eea3716c13152044ed8e0e0ee4178394df
```

### `dpkg` source package: `gnupg2=2.1.15-1ubuntu7`

Binary Packages:

- `gnupg=2.1.15-1ubuntu7`
- `gnupg-agent=2.1.15-1ubuntu7`
- `gpgv=2.1.15-1ubuntu7`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-agent/copyright`, `/usr/share/doc/gpgv/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.1.15-1ubuntu7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.15-1ubuntu7.dsc' gnupg2_2.1.15-1ubuntu7.dsc 2808 SHA256:70083c7aba643ea6812f1cd19b3d35dcc586934b361c7b6199195e2fe07b2835
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.15.orig.tar.bz2' gnupg2_2.1.15.orig.tar.bz2 5723689 SHA256:c28c1a208f1b8ad63bdb6b88d252f6734ff4d33de6b54e38494b11d49e00ffdd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.15-1ubuntu7.debian.tar.bz2' gnupg2_2.1.15-1ubuntu7.debian.tar.bz2 42251 SHA256:7dcf650aae0f890a60f4bb5fc2b39cbaee5633d6a10bcf3147ce78d8d76727f6
```

### `dpkg` source package: `gnutls28=3.5.6-4ubuntu4.3`

Binary Packages:

- `libgnutls30:amd64=3.5.6-4ubuntu4.3`

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
$ apt-get source -qq --print-uris gnutls28=3.5.6-4ubuntu4.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.6-4ubuntu4.3.dsc' gnutls28_3.5.6-4ubuntu4.3.dsc 3059 SHA256:8e7b7fcc96528479b840f1f887940d856d95014fdea5f2357cf8a21945d9cb0d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.6.orig.tar.xz' gnutls28_3.5.6.orig.tar.xz 7087388 SHA256:6338b715bf31c758606ffa489c7f87ee1beab947114fbd2ffefd73170a8c6b9a
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.6-4ubuntu4.3.debian.tar.xz' gnutls28_3.5.6-4ubuntu4.3.debian.tar.xz 123328 SHA256:a5af8110e787dea56b6b3e2eb2a59951faf92b45d4d8942e3abe94b23f0d5266
```

### `dpkg` source package: `grep=2.27-2`

Binary Packages:

- `grep=2.27-2`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.27-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.27-2.dsc' grep_2.27-2.dsc 2053 SHA256:c048a1ad8c39877c2fb0279887c8ea93e59591788fdb08e2f75249ebdcecdea7
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.27.orig.tar.xz' grep_2.27.orig.tar.xz 1360388 SHA256:ad4cc44d23074a1c3a8baae8fbafff2a8c60f38a9a6108f985eef6fbee6dcaeb
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.27-2.debian.tar.bz2' grep_2.27-2.debian.tar.bz2 112728 SHA256:445eaf71811df5ca18242fb5adc417d35e349e49810201977bf7086746b967f4
```

### `dpkg` source package: `gzip=1.6-4ubuntu1`

Binary Packages:

- `gzip=1.6-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-4ubuntu1.dsc' gzip_1.6-4ubuntu1.dsc 1907 SHA256:77c1d15c52947d50656365597802c586249d26a4f56c8075f5d94b4634d11465
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-4ubuntu1.debian.tar.xz' gzip_1.6-4ubuntu1.debian.tar.xz 14932 SHA256:9a3e558c87a78bf65f9b9c48d718b3ef0bb69e0cf07617f44e37f41ba5f7b006
```

### `dpkg` source package: `heimdal=7.1.0+dfsg-9ubuntu1.1`

Binary Packages:

- `libasn1-8-heimdal:amd64=7.1.0+dfsg-9ubuntu1.1`
- `libgssapi3-heimdal:amd64=7.1.0+dfsg-9ubuntu1.1`
- `libhcrypto4-heimdal:amd64=7.1.0+dfsg-9ubuntu1.1`
- `libheimbase1-heimdal:amd64=7.1.0+dfsg-9ubuntu1.1`
- `libheimntlm0-heimdal:amd64=7.1.0+dfsg-9ubuntu1.1`
- `libhx509-5-heimdal:amd64=7.1.0+dfsg-9ubuntu1.1`
- `libkrb5-26-heimdal:amd64=7.1.0+dfsg-9ubuntu1.1`
- `libroken18-heimdal:amd64=7.1.0+dfsg-9ubuntu1.1`
- `libwind0-heimdal:amd64=7.1.0+dfsg-9ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris heimdal=7.1.0+dfsg-9ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.1.0+dfsg-9ubuntu1.1.dsc' heimdal_7.1.0+dfsg-9ubuntu1.1.dsc 3736 SHA256:708085a96a0876665275ded97e66e4e2966fd635d756b4121110e0e15477f2d9
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.1.0+dfsg.orig.tar.gz' heimdal_7.1.0+dfsg.orig.tar.gz 8959650 SHA256:47a1439910d05ea884ad254646e7c48a9400a2c30f087ed8e8e0854697a480f9
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.1.0+dfsg-9ubuntu1.1.debian.tar.xz' heimdal_7.1.0+dfsg-9ubuntu1.1.debian.tar.xz 69128 SHA256:ec0ae1864400497c4b022a962b8d720f6132c1cce3fd2ec22b5025a62033ba85
```

### `dpkg` source package: `hostname=3.18`

Binary Packages:

- `hostname=3.18`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.18
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.18.dsc' hostname_3.18.dsc 1446 SHA256:4d3d5c8ded08ffc2ebfb39817ba1994b5fc1966652b132ff3e16389b70af28d7
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.18.tar.gz' hostname_3.18.tar.gz 13732 SHA256:5cc3ec120967b8f911e86b9561b53977bcc77191c84fe9c607177ccd09f8d207
```

### `dpkg` source package: `init-system-helpers=1.47`

Binary Packages:

- `init-system-helpers=1.47`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.47
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.47.dsc' init-system-helpers_1.47.dsc 1945 SHA256:7ebd4ca047297c0487b7aaf647efef8940ed60ba88f92c48d3c5a0050882d874
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.47.tar.xz' init-system-helpers_1.47.tar.xz 43244 SHA256:215a48dcd8346e3ec87b26e7898961cca212c37cd0f07a36251cbd2965211802
```

### `dpkg` source package: `keyutils=1.5.9-9ubuntu1`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-9ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-9ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9ubuntu1.dsc' keyutils_1.5.9-9ubuntu1.dsc 2178 SHA256:3b023a7933535abae794c250be7dcd1bf39d9afaae5633e66fb394f3f048200c
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9ubuntu1.debian.tar.xz' keyutils_1.5.9-9ubuntu1.debian.tar.xz 17812 SHA256:7dc31901696b2afa98f1984c464e93f9c9a562158ba79ed7a84890109b319f42
```

### `dpkg` source package: `krb5=1.15-1ubuntu0.1`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.15-1ubuntu0.1`
- `libk5crypto3:amd64=1.15-1ubuntu0.1`
- `libkrb5-3:amd64=1.15-1ubuntu0.1`
- `libkrb5support0:amd64=1.15-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.15-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.15-1ubuntu0.1.dsc' krb5_1.15-1ubuntu0.1.dsc 3206 SHA256:435990a7ecd9625aa00aa8c5dde47dc41f4416f0dc03522ce937badff49019fe
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.15.orig.tar.gz' krb5_1.15.orig.tar.gz 9327157 SHA256:fd34752774c808ab4f6f864f935c49945f5a56b62240b1ad4ab1af7b4ded127c
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.15-1ubuntu0.1.debian.tar.xz' krb5_1.15-1ubuntu0.1.debian.tar.xz 144492 SHA256:019a7e7c0fe68159d7af836286eb56c1710f559ceb88682322dc3f0f47948184
```

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

Source:

```console
$ apt-get source -qq --print-uris libassuan=2.4.3-2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.4.3-2.dsc' libassuan_2.4.3-2.dsc 2412 SHA256:fc057ff6bd548161cd978f7847682928222d31db96bd94d7ec0fc84b176bbcc7
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.4.3.orig.tar.bz2' libassuan_2.4.3.orig.tar.bz2 559867 SHA256:22843a3bdb256f59be49842abf24da76700354293a066d82ade8134bb5aa2b71
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.4.3-2.debian.tar.xz' libassuan_2.4.3-2.debian.tar.xz 15076 SHA256:16dd66909cf3b79c71d5169f35d94be64d079d882f027577c00c23bff3148012
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.dsc' libcap-ng_0.7.7-3.dsc 1722 SHA256:6f5262f0ed2792c135e9b6bf7d30461cc3015249832f381505d21b9217a67685
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7.orig.tar.gz' libcap-ng_0.7.7.orig.tar.gz 420178 SHA256:615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.debian.tar.xz' libcap-ng_0.7.7-3.debian.tar.xz 5248 SHA256:b7a0846dbd0451903bcbbe3a2696341f4e6000ebd64bed259c7fbf9dfc818363
```

### `dpkg` source package: `libedit=3.1-20160903-3`

Binary Packages:

- `libedit2:amd64=3.1-20160903-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20160903-3
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20160903-3.dsc' libedit_3.1-20160903-3.dsc 2240 SHA256:d143cac52af230cce5ee3d8f181f5b496da675dd6abc1d30a14d5bbb0926a71a
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20160903.orig.tar.gz' libedit_3.1-20160903.orig.tar.gz 508108 SHA256:0ccbd2e7d46097f136fcb1aaa0d5bc24e23bb73f57d25bee5a852a683eaa7567
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20160903-3.debian.tar.bz2' libedit_3.1-20160903-3.debian.tar.bz2 11290 SHA256:6508b14c90bd756b6a5b3d3e7183b167276958e445a78ca753e460482da774f4
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17024-1.dsc' liberror-perl_0.17024-1.dsc 2193 SHA256:3d269abc34facfde4e4caf5d2eac38dbce07739d3fe2167ff982140af513d17e
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17024.orig.tar.gz' liberror-perl_0.17024.orig.tar.gz 31269 SHA256:074db7c783a67b0667eca64a4f6a0c3de94998afc92c01d6453163eb04b9150d
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17024-1.debian.tar.xz' liberror-perl_0.17024-1.debian.tar.xz 4028 SHA256:7b490f3655df007a1153883608161822036837eaf49f7d6014d3a096be4a65cb
```

### `dpkg` source package: `libffi=3.2.1-6`

Binary Packages:

- `libffi6:amd64=3.2.1-6`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-6.dsc' libffi_3.2.1-6.dsc 1923 SHA256:f901298b078c7d7f3f75459b5ff74cc804f6f2cfd65ed619d2082d5f77089954
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-6.debian.tar.xz' libffi_3.2.1-6.debian.tar.xz 11252 SHA256:477709fa90f8c7631fa226a48cdf38737c9f195f3686f62aa76714bcffaee512
```

### `dpkg` source package: `libgcrypt20=1.7.6-1ubuntu0.2`

Binary Packages:

- `libgcrypt20:amd64=1.7.6-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.7.6-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.7.6-1ubuntu0.2.dsc' libgcrypt20_1.7.6-1ubuntu0.2.dsc 3015 SHA256:490fcb30c0fa9745db4e5ffb8389092d1122569c2a5c015ad40740bf16185cb6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.7.6.orig.tar.bz2' libgcrypt20_1.7.6.orig.tar.bz2 2897695 SHA256:626aafee84af9d2ce253d2c143dc1c0902dda045780cc241f39970fc60be05bc
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.7.6.orig.tar.bz2.asc' libgcrypt20_1.7.6.orig.tar.bz2.asc 310 SHA256:91ad5a0efafb0edc63c083f733ce476b2a0da663aea5118126aa63825d314e00
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.7.6-1ubuntu0.2.debian.tar.xz' libgcrypt20_1.7.6-1ubuntu0.2.debian.tar.xz 36820 SHA256:0846e36c67571bcad19cc5c4aa54ac1fae668f5d7d1e56fe667afb20dce2bf6e
```

### `dpkg` source package: `libgpg-error=1.26-2`

Binary Packages:

- `libgpg-error0:amd64=1.26-2`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `GPL-2.1+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.26-2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.26-2.dsc' libgpg-error_1.26-2.dsc 2454 SHA256:ea53df72d922f224cf0bb69df5a20100a2a5826e890741277425269d70eade20
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.26.orig.tar.bz2' libgpg-error_1.26.orig.tar.bz2 798096 SHA256:4c4bcbc90116932e3acd37b37812d8653b1b189c1904985898e860af818aee69
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.26-2.debian.tar.xz' libgpg-error_1.26-2.debian.tar.xz 12740 SHA256:20a73d5bcc4f523ae16b9279698c01b37dd5cffd2b7dc317c65923aa115ca46c
```

### `dpkg` source package: `libidn2-0=0.16-1ubuntu0.1`

Binary Packages:

- `libidn2-0:amd64=0.16-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`)

- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-3+`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris libidn2-0=0.16-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2-0/libidn2-0_0.16-1ubuntu0.1.dsc' libidn2-0_0.16-1ubuntu0.1.dsc 2245 SHA256:4c4dfab4b3786cdc934003862fb1bf8135f387989c70eab5e6579fe18a96c247
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2-0/libidn2-0_0.16.orig.tar.gz' libidn2-0_0.16.orig.tar.gz 1494295 SHA256:2fad9efff4082ae2143f69df76339ca99379e0e0f4231455f5d3d9d2089c688f
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2-0/libidn2-0_0.16-1ubuntu0.1.debian.tar.xz' libidn2-0_0.16-1ubuntu0.1.debian.tar.xz 58136 SHA256:f2a80035fd7e20c5c48e1fd65ec5163331b591eb7508d6d267a7737990cd3869
```

### `dpkg` source package: `libidn=1.33-1ubuntu0.1`

Binary Packages:

- `libidn11:amd64=1.33-1ubuntu0.1`

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
$ apt-get source -qq --print-uris libidn=1.33-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.33-1ubuntu0.1.dsc' libidn_1.33-1ubuntu0.1.dsc 2328 SHA256:fd5410aeaff9d51c6a5c0a83245d296a653290f11416ca9b3fde8a0ae657dcee
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.33.orig.tar.gz' libidn_1.33.orig.tar.gz 3501056 SHA256:44a7aab635bb721ceef6beecc4d49dfd19478325e1b47f3196f7d2acc4930e19
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.33-1ubuntu0.1.debian.tar.xz' libidn_1.33-1ubuntu0.1.debian.tar.xz 63100 SHA256:31fbbdf04d0ee0258edeb391aae30774cd9fe79716d4de5517d97dcd6fc06cf2
```

### `dpkg` source package: `libksba=1.3.5-2`

Binary Packages:

- `libksba8:amd64=1.3.5-2`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.3.5-2
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.5-2.dsc' libksba_1.3.5-2.dsc 2526 SHA256:4fd08fd129f97ab1df86c220b88b7b2c6e4e04aa90bfd3ae364d18022256bef8
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.5.orig.tar.bz2' libksba_1.3.5.orig.tar.bz2 620649 SHA256:41444fd7a6ff73a79ad9728f985e71c9ba8cd3e5e53358e70d5f066d35c1a340
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.5.orig.tar.bz2.asc' libksba_1.3.5.orig.tar.bz2.asc 287 SHA256:a954b03144ee882c838853da24fd7b6868b78df72a18c71079217d968698a76f
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.5-2.debian.tar.xz' libksba_1.3.5-2.debian.tar.xz 13852 SHA256:98c985bff973be1aecc702fa15887ff1e5b8de481d1dc3e99423a587754eaabd
```

### `dpkg` source package: `libpsl=0.17.0-4`

Binary Packages:

- `libpsl5:amd64=0.17.0-4`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.17.0-4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.17.0-4.dsc' libpsl_0.17.0-4.dsc 2224 SHA256:9673d706681725621efae09ea96331684f737415f6cf595ed01dc8fb7c3e61e8
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.17.0.orig.tar.gz' libpsl_0.17.0.orig.tar.gz 49087 SHA256:7731e28393e1b4ca363eaffecd6c7570023a7c18c017b45d683ac7d2ba1f0bd1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.17.0-4.debian.tar.xz' libpsl_0.17.0-4.debian.tar.xz 9052 SHA256:521d6eba91754b80f3e5c430a81e2054b83c0dbeda1972ee0c62bdb6d9203ccb
```

### `dpkg` source package: `libselinux=2.6-3`

Binary Packages:

- `libselinux1:amd64=2.6-3`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.6-3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.6-3.dsc' libselinux_2.6-3.dsc 2217 SHA256:91bb53feba8031bfc7b0110fc4e0e1dae4a8e2906f4a524f83252a95ae0e639c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.6.orig.tar.gz' libselinux_2.6.orig.tar.gz 203119 SHA256:4ea2dde50665c202253ba5caac7738370ea0337c47b251ba981c60d24e1a118a
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.6-3.debian.tar.xz' libselinux_2.6-3.debian.tar.xz 24396 SHA256:5a06841565e7907bc0dae9f8ed5940d040316192bd9662df59c79af7c212a171
```

### `dpkg` source package: `libsemanage=2.6-2`

Binary Packages:

- `libsemanage-common=2.6-2`
- `libsemanage1:amd64=2.6-2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.6-2.dsc' libsemanage_2.6-2.dsc 2338 SHA256:2806bf3591dc7eb4c80d647a9e65df13d03657cfa6e049de1035165e0d8484d0
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.6.orig.tar.gz' libsemanage_2.6.orig.tar.gz 155897 SHA256:4f81541047290b751f2ffb926fcd381c186f22db18d9fe671b0b4a6a54e8cfce
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.6-2.debian.tar.xz' libsemanage_2.6-2.debian.tar.xz 17088 SHA256:3d1c4c5ea5d4f27a521b64ba3fc499c8b662257ffec773706501f466032db8cf
```

### `dpkg` source package: `libsepol=2.6-2`

Binary Packages:

- `libsepol1:amd64=2.6-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.6-2.dsc' libsepol_2.6-2.dsc 1814 SHA256:197ddaf44a5139d7ca6c12ce6b29fca0589f72c59ac588a7fa39d11b2e65778a
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.6.orig.tar.gz' libsepol_2.6.orig.tar.gz 442549 SHA256:d856d6506054f52abeaa3543ea2f2344595a3dc05d0d873ed7f724f7a16b1874
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.6-2.debian.tar.xz' libsepol_2.6-2.debian.tar.xz 14320 SHA256:d7a1022d03eb53a8d30262e06f14f691e553b3db684ca0f3549cd17b93fb7465
```

### `dpkg` source package: `libtasn1-6=4.10-1ubuntu0.1`

Binary Packages:

- `libtasn1-6:amd64=4.10-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.10-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.10-1ubuntu0.1.dsc' libtasn1-6_4.10-1ubuntu0.1.dsc 2774 SHA256:f0d6489cb92d08fac20b84c582a65b1a7205f199cf5cd9f39190fc04dc4ac60f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.10.orig.tar.gz' libtasn1-6_4.10.orig.tar.gz 1887057 SHA256:681a4d9a0d259f2125713f2e5766c5809f151b3a1392fd91390f780b4b8f5a02
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.10.orig.tar.gz.asc' libtasn1-6_4.10.orig.tar.gz.asc 455 SHA256:bdf4ba66cfc97a2b712c6ad9a4c0940519fbe2b18fa5b4b003a6343d28a120fe
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.10-1ubuntu0.1.debian.tar.xz' libtasn1-6_4.10-1ubuntu0.1.debian.tar.xz 58564 SHA256:02ebacaeeb124a7b4531c1d34eede21be374da2e0f3f6914d4c637112c0a29b7
```

### `dpkg` source package: `libunistring=0.9.3-5.2ubuntu1`

Binary Packages:

- `libunistring0:amd64=0.9.3-5.2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libunistring0/copyright`)

- `GFDL-1.2`
- `GFDL-1.2+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libunistring=0.9.3-5.2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.3-5.2ubuntu1.dsc' libunistring_0.9.3-5.2ubuntu1.dsc 2166 SHA256:2c0ed2e6d2f55951888ced9edd78cfb7b437d235f89b725c13ea68e479b6a910
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.3.orig.tar.gz' libunistring_0.9.3.orig.tar.gz 2555215 SHA256:610d3ec724fbdaa654afe3cff20b9f4d504be3fd296fded2e0f7f764041006a3
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.3-5.2ubuntu1.debian.tar.xz' libunistring_0.9.3-5.2ubuntu1.debian.tar.xz 5640 SHA256:30624eb1a6627f7e2dde66700a99fdd79487d1585c5dd0fa75eb5ab03f84840b
```

### `dpkg` source package: `lsb=9.20160110ubuntu5`

Binary Packages:

- `lsb-base=9.20160110ubuntu5`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20160110ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu5.dsc' lsb_9.20160110ubuntu5.dsc 2152 SHA256:eb7501d14d4aefb878b1a924d8f94b405f08084d43210d3c188e7dc586bf5efa
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu5.tar.xz' lsb_9.20160110ubuntu5.tar.xz 58608 SHA256:e33aa59a709a1d278cf503f151ef46a39477e93a4519f4c90e01a1095444a724
```

### `dpkg` source package: `lz4=0.0~r131-2ubuntu2`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=0.0~r131-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0~r131-2ubuntu2.dsc' lz4_0.0~r131-2ubuntu2.dsc 2007 SHA256:123f23834f83a4dca6d74a611cc0294491bd339d2e0be04d65783d6debbccc02
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0~r131.orig.tar.gz' lz4_0.0~r131.orig.tar.gz 133784 SHA256:9d4d00614d6b9dec3114b33d1224b6262b99ace24434c53487a0c8fd0b18cfed
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0~r131-2ubuntu2.debian.tar.xz' lz4_0.0~r131-2ubuntu2.debian.tar.xz 5224 SHA256:c0afb4a440b1e7b803e2d9dcf616be539c1d16baebc681cdf837000e4c5077b7
```

### `dpkg` source package: `mawk=1.3.3-17ubuntu2`

Binary Packages:

- `mawk=1.3.3-17ubuntu2`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu2.dsc' mawk_1.3.3-17ubuntu2.dsc 1843 SHA256:d9058945d45b0e9ee5dd1c9c2e16d8f28b96d5c2e777f743594096fa2a5e277b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu2.diff.gz' mawk_1.3.3-17ubuntu2.diff.gz 63882 SHA256:670103046767474be29e80f2143dc67e3d0b958972f5942c3df94883f978eded
```

### `dpkg` source package: `mercurial=3.9.1-1`

Binary Packages:

- `mercurial=3.9.1-1`
- `mercurial-common=3.9.1-1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=3.9.1-1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_3.9.1-1.dsc' mercurial_3.9.1-1.dsc 2378 SHA256:bd9e31db3a3b9a7803b2227d43ace6e7130a58bbfc9a5d749bd85e7b13addde6
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_3.9.1.orig.tar.gz' mercurial_3.9.1.orig.tar.gz 4797967 SHA256:625e4fc7e85ec2278c2828bdc547fce74091b3bbe4d9eeeba2d61af51195df74
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_3.9.1-1.debian.tar.xz' mercurial_3.9.1-1.debian.tar.xz 95404 SHA256:baf6e83cc8918b0842d52fad6ac85d2f261b19aa4521a539cd275949d02b98b9
```

### `dpkg` source package: `mime-support=3.60ubuntu1`

Binary Packages:

- `mime-support=3.60ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.60ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.60ubuntu1.dsc' mime-support_3.60ubuntu1.dsc 1712 SHA256:1e58e26d0f87f25ebe6c08007e9d354a24457ab73d40a1eb3b9ab62ea0d366d5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.60ubuntu1.tar.gz' mime-support_3.60ubuntu1.tar.gz 37743 SHA256:cb1bc122ac2dc7046f6c0c06146ac0897a3c1c02e7e5e53cdd30817db2c62d33
```

### `dpkg` source package: `ncurses=6.0+20160625-1ubuntu1`

Binary Packages:

- `libncurses5:amd64=6.0+20160625-1ubuntu1`
- `libncursesw5:amd64=6.0+20160625-1ubuntu1`
- `libtinfo5:amd64=6.0+20160625-1ubuntu1`
- `ncurses-base=6.0+20160625-1ubuntu1`
- `ncurses-bin=6.0+20160625-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20160625-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0+20160625-1ubuntu1.dsc' ncurses_6.0+20160625-1ubuntu1.dsc 4448 SHA256:8d60a8e3edaf5911d654e9bbc435647571cb398beb9030e9addbf093f9701d32
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0+20160625.orig.tar.gz' ncurses_6.0+20160625.orig.tar.gz 3167182 SHA256:aaccc026de6f2f112dd56085ec7f38923429edc91a010ae1c8e68b5c53c60acd
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0+20160625-1ubuntu1.debian.tar.xz' ncurses_6.0+20160625-1ubuntu1.debian.tar.xz 54936 SHA256:85bc1d5ff61390da5ebaf7d4674494ccaaa9d3ad0fa93b6b77f45cc75a2ba8ca
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.3-1.dsc' nettle_3.3-1.dsc 2043 SHA256:3336bc6e8e5b1acad66afa97a05f934e4d758c614fd468d5650b5a38049f1161
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.3.orig.tar.gz' nettle_3.3.orig.tar.gz 1887927 SHA256:46942627d5d0ca11720fec18d81fc38f7ef837ea4197c1f630e71ce0d470b11e
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.3-1.debian.tar.xz' nettle_3.3-1.debian.tar.xz 19428 SHA256:42fef549318af6cfdf76336eb348501d09454a1d873a84f66440b9a791a0ff1b
```

### `dpkg` source package: `npth=1.3-1`

Binary Packages:

- `libnpth0:amd64=1.3-1`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.3-1.dsc' npth_1.3-1.dsc 1949 SHA256:63e2598a3aebe21ef7969a601906a719e923673e04a4d157b6dde605566079be
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.3.orig.tar.bz2' npth_1.3.orig.tar.bz2 295998 SHA256:bca81940436aed0734eb8d0ff8b179e04cc8c087f5625204419f5f45d736a82a
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.3-1.debian.tar.xz' npth_1.3-1.debian.tar.xz 10324 SHA256:4910e19597aea46841eaffc6df58ecf91d5d059130ecb1442fee9f5f963b229c
```

### `dpkg` source package: `openldap=2.4.44+dfsg-3ubuntu2.1`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.44+dfsg-3ubuntu2.1`
- `libldap-common=2.4.44+dfsg-3ubuntu2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.44+dfsg-3ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.44+dfsg-3ubuntu2.1.dsc' openldap_2.4.44+dfsg-3ubuntu2.1.dsc 3082 SHA256:9ab942618f61796f962c4ecfb7a255f9aa990fb26bb72ba518b540ca95b4d426
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.44+dfsg.orig.tar.gz' openldap_2.4.44+dfsg.orig.tar.gz 4826590 SHA256:d5187c229bec163c5d97845846e1b87917755f85b04f444c08836384f4bd7ffe
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.44+dfsg-3ubuntu2.1.debian.tar.xz' openldap_2.4.44+dfsg-3ubuntu2.1.debian.tar.xz 169424 SHA256:72505cf389dc995b7bb14a6cf258227f7791f7b4d3e61809c23a5e9308d36b1c
```

### `dpkg` source package: `openssh=1:7.4p1-10`

Binary Packages:

- `openssh-client=1:7.4p1-10`

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
$ apt-get source -qq --print-uris openssh=1:7.4p1-10
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.4p1-10.dsc' openssh_7.4p1-10.dsc 2960 SHA256:06c0e53e2a5e2027abd0ad0d94a6b4e689cd66d48716760355ff740d51860b3f
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.4p1.orig.tar.gz' openssh_7.4p1.orig.tar.gz 1511780 SHA256:1b1fc4a14e2024293181924ed24872e6f2e06293f3e8926a376b8aec481f19d1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.4p1-10.debian.tar.xz' openssh_7.4p1-10.debian.tar.xz 160804 SHA256:e6f5dd27d051f34b642439ddd03fc12d371168e7ea5afedcb2ee2f9fd436fe7c
```

### `dpkg` source package: `openssl=1.0.2g-1ubuntu11.2`

Binary Packages:

- `libssl1.0.0:amd64=1.0.2g-1ubuntu11.2`
- `openssl=1.0.2g-1ubuntu11.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `p11-kit=0.23.3-5`

Binary Packages:

- `libp11-kit0:amd64=0.23.3-5`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.3-5
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.3-5.dsc' p11-kit_0.23.3-5.dsc 2452 SHA256:552fdbc06608a9a2b79a1d74a8a6274eaff01688cb564505fcbfdf3304a45740
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.3.orig.tar.gz' p11-kit_0.23.3.orig.tar.gz 1047441 SHA256:d487f04dba3f9e8256f53034c59c944ca45fd7b8434c095da6a74079644dcd82
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.3.orig.tar.gz.asc' p11-kit_0.23.3.orig.tar.gz.asc 543 SHA256:a9268313ad8e6c3dae5f4cf9006d8a773861e567c98786482304b3cc91883647
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.3-5.debian.tar.xz' p11-kit_0.23.3-5.debian.tar.xz 19964 SHA256:cd18db7e247b562f6cea84f8a047703cfde734c034ebdd0851a3fde4b9ffa4c0
```

### `dpkg` source package: `pam=1.1.8-3.2ubuntu2`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.2ubuntu2`
- `libpam-modules-bin=1.1.8-3.2ubuntu2`
- `libpam-runtime=1.1.8-3.2ubuntu2`
- `libpam0g:amd64=1.1.8-3.2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu2.dsc' pam_1.1.8-3.2ubuntu2.dsc 2589 SHA256:b9ab28d75594ece90f12987b8926d5897fb994f1ea25a2ee03b09e2570785142
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu2.diff.gz' pam_1.1.8-3.2ubuntu2.diff.gz 198851 SHA256:5b999640be4f2ffd0e200e7785d04089375635d2d0f2033b7668462f6207a35f
```

### `dpkg` source package: `pcre3=2:8.39-3`

Binary Packages:

- `libpcre3:amd64=2:8.39-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-3.dsc' pcre3_8.39-3.dsc 2133 SHA256:3180a023c33b5eb7f0a853bec887be867d00a68da8d119d989909e40c6168fd7
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-3.debian.tar.gz' pcre3_8.39-3.debian.tar.gz 25025 SHA256:a9f0e1a96b6a017965fe69233e267682c289f2cfeb33b46fb78aedcb8cf2c16a
```

### `dpkg` source package: `perl=5.24.1-2ubuntu1`

Binary Packages:

- `libperl5.24:amd64=5.24.1-2ubuntu1`
- `perl=5.24.1-2ubuntu1`
- `perl-base=5.24.1-2ubuntu1`
- `perl-modules-5.24=5.24.1-2ubuntu1`

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
$ apt-get source -qq --print-uris perl=5.24.1-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.24.1-2ubuntu1.dsc' perl_5.24.1-2ubuntu1.dsc 2437 SHA256:938ee8f0ee7710bd9d783ff207ce72150a948a7ff4b623555c468d5b4add211b
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.24.1.orig.tar.xz' perl_5.24.1.orig.tar.xz 11569284 SHA256:03a77bac4505c270f1890ece75afc7d4b555090b41aa41ea478747e23b2afb3f
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.24.1-2ubuntu1.debian.tar.xz' perl_5.24.1-2ubuntu1.debian.tar.xz 167592 SHA256:49573499fb822910e83bf8b1a38d8824fdde5c7d6b6a7fe100c35d061a6c4b00
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.0.0-2.dsc' pinentry_1.0.0-2.dsc 2591 SHA256:01349d75a92435037a4f4ad252a42cabe7bef774cb8ac6e8c6e24a4107f06e13
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.0.0.orig.tar.bz2' pinentry_1.0.0.orig.tar.bz2 436930 SHA256:1672c2edc1feb036075b187c0773787b2afd0544f55025c645a71b4c2f79275a
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.0.0-2.debian.tar.xz' pinentry_1.0.0-2.debian.tar.xz 16672 SHA256:85e0b03d74a64a08b51f6ffac58a1a07a42499615aa993f367675ef12d0b47fb
```

### `dpkg` source package: `procps=2:3.3.12-1ubuntu2`

Binary Packages:

- `libprocps6:amd64=2:3.3.12-1ubuntu2`
- `procps=2:3.3.12-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libprocps6/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.12-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12-1ubuntu2.dsc' procps_3.3.12-1ubuntu2.dsc 2243 SHA256:c8e72f65fdcadb40b13f35ce322b820eb3fec082fef153387cae78a33d8f144b
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12.orig.tar.xz' procps_3.3.12.orig.tar.xz 840540 SHA256:042fcc93e1850aee4c193c51c03f369293fb64fe47e37b38852be6693d12a3af
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12-1ubuntu2.debian.tar.xz' procps_3.3.12-1ubuntu2.debian.tar.xz 30724 SHA256:1b40d1519e0dd9965aa3faed306dfdb44a113e39a14a404ba5fd28ff3d6e42b8
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.13-2.dsc' python-defaults_2.7.13-2.dsc 2677 SHA256:80d5452cde16052caa5b9c3880ed067c3d4f2e60485a56947531a6650f6e7d94
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.13-2.tar.gz' python-defaults_2.7.13-2.tar.gz 273915 SHA256:aa376f54a9b2ca59b6f051ce0b4320d95ef60f114f90d98a90e510c3968b416a
```

### `dpkg` source package: `python2.7=2.7.13-2`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.13-2`
- `libpython2.7-stdlib:amd64=2.7.13-2`
- `python2.7=2.7.13-2`
- `python2.7-minimal=2.7.13-2`

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
$ apt-get source -qq --print-uris python2.7=2.7.13-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.13-2.dsc' python2.7_2.7.13-2.dsc 3367 SHA256:ad16150dbf67feb79f2d7a866afe9f072dabedcebdb5e341f3f28228223d4559
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.13.orig.tar.gz' python2.7_2.7.13.orig.tar.gz 17076672 SHA256:a4f05a0720ce0fd92626f0278b6b433eee9a6173ddf2bced7957dfb599a5ece1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.13-2.diff.gz' python2.7_2.7.13-2.diff.gz 279975 SHA256:a6afffb70b37e56505dad9f5875c6b6fddb19ddfef61330e567e96228da5009b
```

### `dpkg` source package: `readline=7.0-0ubuntu2`

Binary Packages:

- `libreadline7:amd64=7.0-0ubuntu2`
- `readline-common=7.0-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=7.0-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-0ubuntu2.dsc' readline_7.0-0ubuntu2.dsc 2533 SHA256:80cf79ab8bd7a3847d505b6efc4c97d6f3e4dcc4247c54ecc2d8cec8b2e6d7c6
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-0ubuntu2.debian.tar.xz' readline_7.0-0ubuntu2.debian.tar.xz 28524 SHA256:61334a69abb593401d775386f7616df20e7aaf8c571e91d5158c71546123ffa7
```

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc 2315 SHA256:e56822b88625bf6a51f06652fc36fa2a1348b4325ac76541800cd078192aa3d2
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz 8044 SHA256:675847f5cddb860256cbf2e7d5b85918aa53b59b0fd97a466b39a5c77a399537
```

### `dpkg` source package: `sed=4.4-1`

Binary Packages:

- `sed=4.4-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4-1.dsc' sed_4.4-1.dsc 2048 SHA256:bb2a11d04f3aeba73cc994e097219fde8c5e0fd1bcf42e0ecc8a4f2282c00fc9
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4.orig.tar.xz' sed_4.4.orig.tar.xz 1181664 SHA256:cbd6ebc5aaf080ed60d0162d7f6aeae58211a1ee9ba9bb25623daa6cd942683b
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4-1.debian.tar.xz' sed_4.4-1.debian.tar.xz 59552 SHA256:56dd1f91c5e33b419f38cde93afc90d6fad9064ef4594a877424a0ab2ac9a4bf
```

### `dpkg` source package: `sensible-utils=0.0.9`

Binary Packages:

- `sensible-utils=0.0.9`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.9
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.9.dsc' sensible-utils_0.0.9.dsc 1405 SHA256:390c29b31a09ab7f31f8b5fc0fd82e47c25f15b22b17c614fb87f12d3b091070
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.9.tar.gz' sensible-utils_0.0.9.tar.gz 74331 SHA256:6fcb5cc0f7f1cf80421840cfa17b1b3fa5afaf3fe852dc984a789023af2f70c6
```

### `dpkg` source package: `serf=1.3.9-1`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-1`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.9-1/


### `dpkg` source package: `shadow=1:4.2-3.2ubuntu1.17.04.2`

Binary Packages:

- `login=1:4.2-3.2ubuntu1.17.04.2`
- `passwd=1:4.2-3.2ubuntu1.17.04.2`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.2-3.2ubuntu1.17.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.2ubuntu1.17.04.2.dsc' shadow_4.2-3.2ubuntu1.17.04.2.dsc 2112 SHA256:9775d2f032111d39d659de081309bed0d4d6281b4c683070392f7d10189d91b0
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2.orig.tar.xz' shadow_4.2.orig.tar.xz 1088696 SHA256:c5bd72c4ecb438b99289e4630b22ea0626987a378d084910dbe59eceaa34be1d
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.2ubuntu1.17.04.2.debian.tar.xz' shadow_4.2-3.2ubuntu1.17.04.2.debian.tar.xz 506324 SHA256:587022e1045a5e5150b77d74c02bd31634c235039360c22a91e8b1b60ce60587
```

### `dpkg` source package: `six=1.10.0-3`

Binary Packages:

- `python-six=1.10.0-3`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.10.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0-3.dsc' six_1.10.0-3.dsc 2158 SHA256:71f2d5ff8b999c471cc2e92712befe482351a5ae226321e0e795bc683c8729cb
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0.orig.tar.gz' six_1.10.0.orig.tar.gz 29630 SHA256:105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0-3.debian.tar.xz' six_1.10.0-3.debian.tar.xz 3668 SHA256:860cc57244ea4e69eb4ee3ad1b823472c20d868c1cc25745b236ba6c9e1f3563
```

### `dpkg` source package: `sqlite3=3.16.2-3`

Binary Packages:

- `libsqlite3-0:amd64=3.16.2-3`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.16.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.16.2-3.dsc' sqlite3_3.16.2-3.dsc 2510 SHA256:ced9236f4d25decf7e8ce4857d3d41d760ecda195ecbc5ae11d9a431a9e5d221
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.16.2.orig-www.tar.xz' sqlite3_3.16.2.orig-www.tar.xz 3383968 SHA256:d5dd3de405c55c63c9f99fbfcf3defc91a54a81b5656c510cd46544aaed134fa
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.16.2.orig.tar.xz' sqlite3_3.16.2.orig.tar.xz 5634120 SHA256:bf7b1e8ea7577253b7f8a8287d111d542d1792cf1768edc66541ac851ff92453
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.16.2-3.debian.tar.xz' sqlite3_3.16.2-3.debian.tar.xz 17668 SHA256:8c026dda1ee62b4f4d0ba34ce1e63d91e15a6b5447f187e9a958142e2017c089
```

### `dpkg` source package: `subversion=1.9.5-1ubuntu1.1`

Binary Packages:

- `libsvn1:amd64=1.9.5-1ubuntu1.1`
- `subversion=1.9.5-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.9.5-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/subversion/subversion_1.9.5-1ubuntu1.1.dsc' subversion_1.9.5-1ubuntu1.1.dsc 3108 SHA256:2dab42b2cafc0fc824fb4e142abd5287a0c0b1455279c414066924a175f11ea1
'http://archive.ubuntu.com/ubuntu/pool/main/s/subversion/subversion_1.9.5.orig.tar.gz' subversion_1.9.5.orig.tar.gz 10615674 SHA256:280ba586c5d51d7b976b65d22d5e8e42f3908ed1c968d71120dcf534ce857a83
'http://archive.ubuntu.com/ubuntu/pool/main/s/subversion/subversion_1.9.5-1ubuntu1.1.diff.gz' subversion_1.9.5-1ubuntu1.1.diff.gz 2543226 SHA256:9673c7ff07c377123b14ed4bbd0f9e6ca60318fe6e8c4842f942c81dc6dffb4a
```

### `dpkg` source package: `systemd=232-21ubuntu5`

Binary Packages:

- `libsystemd0:amd64=232-21ubuntu5`
- `libudev1:amd64=232-21ubuntu5`

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


### `dpkg` source package: `sysvinit=2.88dsf-59.8git1`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.8git1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.8git1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.8git1.dsc' sysvinit_2.88dsf-59.8git1.dsc 2264 SHA256:51ee31d15f05db999da562c0c26ea43075938c4d40eea42f878361c990526767
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.8git1.debian.tar.xz' sysvinit_2.88dsf-59.8git1.debian.tar.xz 132992 SHA256:46fdc9f8212692e75c6a3ef76c5acd1eb0f8d55779f98f05b57bbe41b98c4c66
```

### `dpkg` source package: `tar=1.29b-1.1`

Binary Packages:

- `tar=1.29b-1.1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.29b-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-1.1.dsc' tar_1.29b-1.1.dsc 2057 SHA256:9474ed422017e23e8208785c071b9f7765d73d704b9bb19da22699c6581d73ef
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b.orig.tar.xz' tar_1.29b.orig.tar.xz 1822008 SHA256:6a59706ebee384a6cd2fb3ee1dbfbfc20c5c66c7efd7cedb28edc054fca8ba00
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-1.1.debian.tar.xz' tar_1.29b-1.1.debian.tar.xz 28484 SHA256:380f80af0e87446796f05ba384c5d130ea2ad5978b8cfdcf315503966333ebb9
```

### `dpkg` source package: `ubuntu-keyring=2016.10.27`

Binary Packages:

- `ubuntu-keyring=2016.10.27`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2016.10.27
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2016.10.27.dsc' ubuntu-keyring_2016.10.27.dsc 1174 SHA256:21538f4cea9fb0f7faa13277778b4548f9cc359ceaa5fa3fed36d8a75f5530b4
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2016.10.27.tar.gz' ubuntu-keyring_2016.10.27.tar.gz 19182 SHA256:dc0b83433b28e5acedf39330bedec2cd102547570d1ae135497b15bd6ac85abe
```

### `dpkg` source package: `ucf=3.0036`

Binary Packages:

- `ucf=3.0036`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0036
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0036.dsc' ucf_3.0036.dsc 1343 SHA256:e67a8a3012ac357c7759dabd93d258422b1003bad8c3f17f25fc2a289eeda3bb
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0036.tar.xz' ucf_3.0036.tar.xz 65020 SHA256:34aa44416106f1205376918386b2896edf21dd42b633133b5f8fedecae17fca8
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-6.dsc' ustr_1.0.4-6.dsc 2029 SHA256:87a854fc03dc059d5d4f135dfd36353c8c09f88a6eb216c6dcea8adadbe6ba59
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-6.debian.tar.xz' ustr_1.0.4-6.debian.tar.xz 25608 SHA256:75aa6be2c70eba632ac63078e55ecb4b5a45e6624501a8ed6d81b9a2014d149e
```

### `dpkg` source package: `util-linux=2.29-1ubuntu2.1`

Binary Packages:

- `bsdutils=1:2.29-1ubuntu2.1`
- `libblkid1:amd64=2.29-1ubuntu2.1`
- `libfdisk1:amd64=2.29-1ubuntu2.1`
- `libmount1:amd64=2.29-1ubuntu2.1`
- `libsmartcols1:amd64=2.29-1ubuntu2.1`
- `libuuid1:amd64=2.29-1ubuntu2.1`
- `mount=2.29-1ubuntu2.1`
- `util-linux=2.29-1ubuntu2.1`

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
$ apt-get source -qq --print-uris util-linux=2.29-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.29-1ubuntu2.1.dsc' util-linux_2.29-1ubuntu2.1.dsc 4044 SHA256:76e1f09873bbf14ec087dcaab2f29b237ebafe9fefbae58106f348fdc55d3d96
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.29.orig.tar.xz' util-linux_2.29.orig.tar.xz 4249020 SHA256:2c59ea67cc7b564104f60532f6e0a95fe17a91acb870ba8fd7e986f273abf9e7
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.29-1ubuntu2.1.debian.tar.xz' util-linux_2.29-1ubuntu2.1.debian.tar.xz 75108 SHA256:642e520addfd9d144b60357acc7f71757ceb9369d31ab362451e18d0064ba58c
```

### `dpkg` source package: `wget=1.18-2ubuntu1.1`

Binary Packages:

- `wget=1.18-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.18-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.18-2ubuntu1.1.dsc' wget_1.18-2ubuntu1.1.dsc 1935 SHA256:5ca6e93cda5b56d1c8f702a54444eddefc2a478359f2c17499ab1942acd0e7ea
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.18.orig.tar.gz' wget_1.18.orig.tar.gz 3865525 SHA256:a00a65fab84cc46e24c53ce88c45604668a7a479276e037dc2f558e34717fb2d
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.18-2ubuntu1.1.debian.tar.xz' wget_1.18-2ubuntu1.1.debian.tar.xz 25488 SHA256:0ccfc77de9c602b31bb8f6a517e3ad403ad341ce372e773759c7c68ad7a404a9
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.2.dsc' xz-utils_5.2.2-1.2.dsc 2550 SHA256:13c8d8d0c243af78dc89b6e2cd670c8d8a2522379e1fcd196957c95d988d5961
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA256:f341b1906ebcdde291dd619399ae944600edc9193619dd0c0110a5f05bfcc89e
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA256:2cc0575556e1331b3f468e6e7dca5969ce86efcc315d62672279b4e68b2e449f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.2.debian.tar.xz' xz-utils_5.2.2-1.2.debian.tar.xz 108632 SHA256:231c08d5c2c4e5c8ef5d6d58cac91aaeb2e4fcddc35e1ed3c69d730a2375c948
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-0ubuntu1`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu1.dsc' zlib_1.2.11.dfsg-0ubuntu1.dsc 2348 SHA256:ee88025f50ea299744d260a617c5a3d0e27c88de6c5d7000cc88c7c015de5a55
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.xz' zlib_1.2.11.dfsg.orig.tar.xz 287216 SHA256:881c8a90f488def83488aa91fd68563c023013a4b9b07a040f6da2727d76ad60
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu1.debian.tar.xz' zlib_1.2.11.dfsg-0ubuntu1.debian.tar.xz 17212 SHA256:06a41bd634264cd8081b6934057f026420ef5ad919e1ed877596e2485458865f
```
