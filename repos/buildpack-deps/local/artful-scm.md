# `buildpack-deps:artful-scm`

## Docker Metadata

- Image ID: `sha256:2959f484a026cc089117f467213d595602d748b661cfa0a7d0ccf1774e2cfde9`
- Created: `2017-08-10T20:39:31.180040908Z`
- Virtual Size: ~ 243.61 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3build1`

Binary Packages:

- `libacl1:amd64=2.2.52-3build1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3build1.dsc' acl_2.2.52-3build1.dsc 2031 SHA256:864215f3e68d6b169a044bd952e78be9b0b1cf527a2cbf25866cab919e78e64b
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3build1.debian.tar.xz' acl_2.2.52-3build1.debian.tar.xz 8788 SHA256:0729d8c850aa26bc9f1b22ce632efb1616a3f97dc5fca1d9edfda45b582b7f37
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

### `dpkg` source package: `apr-util=1.6.0-1`

Binary Packages:

- `libaprutil1:amd64=1.6.0-1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.0-1.dsc' apr-util_1.6.0-1.dsc 2862 SHA256:6f39279de0fc7660cad24d847076e327722fbd180dfe06edfc7931f8db537f1f
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.0.orig.tar.bz2' apr-util_1.6.0.orig.tar.bz2 428750 SHA256:8474c93fa74b56ac6ca87449abe3e155723d5f534727f3f33283f6631a48ca4c
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.0.orig.tar.bz2.asc' apr-util_1.6.0.orig.tar.bz2.asc 859 SHA256:c89a3c69e82678ab28ca72d5c658a5556ed52dd092c11421649a08b048191086
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.0-1.debian.tar.xz' apr-util_1.6.0-1.debian.tar.xz 210576 SHA256:ddca2904dcc621a49ed6a36dd8f6413cec6baaf3119f5bcd798ea8b006687f60
```

### `dpkg` source package: `apr=1.6.2-1`

Binary Packages:

- `libapr1:amd64=1.6.2-1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.2-1.dsc' apr_1.6.2-1.dsc 2316 SHA256:c7e14c7a36c02fc416586808637b6797f6e1c7a697abeda63db04989a101fcd2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.2.orig.tar.bz2' apr_1.6.2.orig.tar.bz2 853363 SHA256:09109cea377bab0028bba19a92b5b0e89603df9eab05c0f7dbd4dd83d48dcebd
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.2.orig.tar.bz2.asc' apr_1.6.2.orig.tar.bz2.asc 801 SHA256:026e3086d6ebdd1fb5b0c82953447b4d1946fdf2a621d4e4a607be2f4131f27c
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.2-1.debian.tar.xz' apr_1.6.2-1.debian.tar.xz 212900 SHA256:d1fdfd94fce25be17e6bb84ef6ef694db5b7bad4be964b39b0195c9926dd0510
```

### `dpkg` source package: `apt=1.5~beta1`

Binary Packages:

- `apt=1.5~beta1`
- `libapt-pkg5.0:amd64=1.5~beta1`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.5~beta1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.5~beta1.dsc' apt_1.5~beta1.dsc 2584 SHA256:e74cb480326235eb61bd2967e82f34c534f14b9711eac51329f86619ba281c60
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.5~beta1.tar.xz' apt_1.5~beta1.tar.xz 2089648 SHA256:6977a4a9f85da1c76af2cdbc4c33478812ae5ea3c14af61321d19a7b032915fe
```

### `dpkg` source package: `attr=1:2.4.47-2build1`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2build1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2build1.dsc' attr_2.4.47-2build1.dsc 2033 SHA256:b78dbf07b789010caabc12c1ab0b2a944072058fe47ac6b5d345209c16f4e1f5
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2build1.debian.tar.xz' attr_2.4.47-2build1.debian.tar.xz 8168 SHA256:6732a8874190a1f792c7f9cb95fadc1dc852baf2e164b0d7b4bcea525f5c0882
```

### `dpkg` source package: `audit=1:2.7.7-1ubuntu1`

Binary Packages:

- `libaudit-common=1:2.7.7-1ubuntu1`
- `libaudit1:amd64=1:2.7.7-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.7.7-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.7.7-1ubuntu1.dsc' audit_2.7.7-1ubuntu1.dsc 2917 SHA256:c9961e093fec6ea467f618d3b1f8382d8660201381a3c1e8afefafdaa83f8ba3
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.7.7.orig.tar.gz' audit_2.7.7.orig.tar.gz 1110512 SHA256:98e22549444c313187dc98c2e137f36a9882efa0874b559b0457e5f87ae178ef
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.7.7-1ubuntu1.debian.tar.xz' audit_2.7.7-1ubuntu1.debian.tar.xz 20788 SHA256:ccc4ebe154e9eb0bbf5e15c95c086cf8553436d31fe1a94d99a7f68eabf8f224
```

### `dpkg` source package: `base-files=9.6ubuntu101`

Binary Packages:

- `base-files=9.6ubuntu101`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=9.6ubuntu101
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.6ubuntu101.dsc' base-files_9.6ubuntu101.dsc 1602 SHA256:156527ac9632fb3b835c46cd63d8c766ee7b50ea3b41ccd2ccdbcd281788319b
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.6ubuntu101.tar.xz' base-files_9.6ubuntu101.tar.xz 65776 SHA256:e1e7ff5a8141a8dbcccd15089674823d5840df3a38e0da8b3acc3c0d6152db85
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

### `dpkg` source package: `bash=4.4-5ubuntu1`

Binary Packages:

- `bash=4.4-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4-5ubuntu1.dsc' bash_4.4-5ubuntu1.dsc 2319 SHA256:ca55dd1450d860bb1e9810b314133d7bd84afdb0b2c4c2c0900fa41004df4c07
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.orig.tar.xz' bash_4.4.orig.tar.xz 4878580 SHA256:819ebb6a23799e9e4ca56ac579778c46902005bd5ade4f131ed293d9f77108e7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4-5ubuntu1.debian.tar.xz' bash_4.4-5ubuntu1.debian.tar.xz 71084 SHA256:b902f0c2168e16d54f004e0f903933a08b8471cd3a12ad7556bafc6156484ec1
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

### `dpkg` source package: `bzr=2.7.0+bzr6622-3`

Binary Packages:

- `bzr=2.7.0+bzr6622-3`
- `python-bzrlib=2.7.0+bzr6622-3`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0+bzr6622-3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0+bzr6622-3.dsc' bzr_2.7.0+bzr6622-3.dsc 2509 SHA256:4a4a89683b653dc7f32817b0175347eb10f8315fe55bb5d1dc67fda6f49add90
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0+bzr6622.orig.tar.gz' bzr_2.7.0+bzr6622.orig.tar.gz 10948360 SHA256:08bba3e76cba9beb6b686e71253045beeab9db94753ddbcafa0f8ed1cba377ff
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0+bzr6622-3.debian.tar.xz' bzr_2.7.0+bzr6622-3.debian.tar.xz 67880 SHA256:7ab6472f3ebed23f1fadce73c863e35ad5b12f4b59b8efe769572d8afdb8e13c
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20161130+nmu1.dsc' ca-certificates_20161130+nmu1.dsc 1886 SHA256:09e8d33c479827b070719170a9a98de7c1d4e9c7973ed8556321d08d8ae27494
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20161130+nmu1.tar.xz' ca-certificates_20161130+nmu1.tar.xz 298648 SHA256:77f9aca431e3122bf04aa0ffd989b723d906db4d1c106e3290e463d73c177f0e
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

### `dpkg` source package: `curl=7.52.1-5ubuntu1`

Binary Packages:

- `curl=7.52.1-5ubuntu1`
- `libcurl3:amd64=7.52.1-5ubuntu1`
- `libcurl3-gnutls:amd64=7.52.1-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.52.1-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.52.1-5ubuntu1.dsc' curl_7.52.1-5ubuntu1.dsc 2827 SHA256:e724bc9b9bef4a3d6a7437c40b520bbf6c2602837e58d20cdbfd006968c8f178
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.52.1.orig.tar.gz' curl_7.52.1.orig.tar.gz 3504621 SHA256:a8984e8b20880b621f61a62d95ff3c0763a3152093a9f9ce4287cfd614add6ae
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.52.1-5ubuntu1.debian.tar.xz' curl_7.52.1-5ubuntu1.debian.tar.xz 36408 SHA256:f0e9b856da5958b43507ebaeaa21a82f4720e395c9aca04e259785d6a967a1ca
```

### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-2ubuntu1`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-2ubuntu1`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `db5.3=5.3.28-13`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-13
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.dsc' db5.3_5.3.28-13.dsc 3091 SHA256:2d56be2ce7bf2a554ddc8c6762b2bfbf19f127b33f4719958a23d006f23381de
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.debian.tar.xz' db5.3_5.3.28-13.debian.tar.xz 27676 SHA256:7126585f2eb63ca2a8fa2f4623a07d65d7df5dbbe7cea96b9bb850da5f4f22e5
```

### `dpkg` source package: `debconf=1.5.63`

Binary Packages:

- `debconf=1.5.63`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.63
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.63.dsc' debconf_1.5.63.dsc 1937 SHA256:532d624315a3a6c62f3cafe90f12e4a185309b40350643be4861b64afe736555
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.63.tar.xz' debconf_1.5.63.tar.xz 571980 SHA256:e50033ced377f22162de2200f5a8a7854ab45bc89e6e9a7ffbfae7dd70265092
```

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


### `dpkg` source package: `dpkg=1.18.24ubuntu1`

Binary Packages:

- `dpkg=1.18.24ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.18.24ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.24ubuntu1.dsc' dpkg_1.18.24ubuntu1.dsc 2107 SHA256:b172c1c9bb6fc95f7f7c0e5b85412971767f7d62b36d734c9a6a561003ecbb42
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.24ubuntu1.tar.xz' dpkg_1.18.24ubuntu1.tar.xz 4542300 SHA256:434de41df64a47c631a656823453104f02c8ac6a04340096c18c0d5601bfcd03
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `expat=2.2.3-1`

Binary Packages:

- `libexpat1:amd64=2.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.2.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.3-1.dsc' expat_2.2.3-1.dsc 2284 SHA256:c5f2c77f5b69361a38fbf9b2b3044cf823b6243d1029ca9e5754da2bd08f936d
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.3.orig.tar.bz2' expat_2.2.3.orig.tar.bz2 435593 SHA256:b31890fb02f85c002a67491923f89bda5028a880fd6c374f707193ad81aace5f
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.3-1.debian.tar.xz' expat_2.2.3-1.debian.tar.xz 10640 SHA256:885dda6baf300f15ef2c75f225d10736236056c7a9bf9405d1d3d138fbb7c63e
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

### `dpkg` source package: `findutils=4.6.0+git+20170606-3`

Binary Packages:

- `findutils=4.6.0+git+20170606-3`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `gcc-7=7.1.0-7ubuntu1`

Binary Packages:

- `gcc-7-base:amd64=7.1.0-7ubuntu1`
- `libgcc1:amd64=1:7.1.0-7ubuntu1`
- `libstdc++6:amd64=7.1.0-7ubuntu1`

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-14.dsc' gdbm_1.8.3-14.dsc 1841 SHA256:312d3d28e287d287ee66e8ae3f25769676b1680ec1adc8c0815b5e9808405b13
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-14.debian.tar.xz' gdbm_1.8.3-14.debian.tar.xz 15308 SHA256:1c0570dd53947ea5980111f51b67356d647c4f21c502443b02397041dde0bf31
```

### `dpkg` source package: `git=1:2.11.0-4`

Binary Packages:

- `git=1:2.11.0-4`
- `git-man=1:2.11.0-4`

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
$ apt-get source -qq --print-uris git=1:2.11.0-4
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.11.0-4.dsc' git_2.11.0-4.dsc 2873 SHA256:032f3685870b5c11a3be4d1e058b884edb99c952bdc7f12b9bc6c33d8c6adc7e
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.11.0.orig.tar.xz' git_2.11.0.orig.tar.xz 4197984 SHA256:7e7e8d69d494892373b87007674be5820a4bc1ef596a0117d03ea3169119fd0b
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.11.0-4.debian.tar.xz' git_2.11.0-4.debian.tar.xz 520148 SHA256:6c42fc5a384346e2fa9378cf8318fdf33969751b493ccc1f58c8e13c4bc389e6
```

### `dpkg` source package: `glibc=2.24-12ubuntu1`

Binary Packages:

- `libc-bin=2.24-12ubuntu1`
- `libc6:amd64=2.24-12ubuntu1`
- `multiarch-support=2.24-12ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.24-12ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.24-12ubuntu1.dsc' glibc_2.24-12ubuntu1.dsc 8815 SHA256:27fc26940669211cbc91e1d1c7c28bb54ff0f11f86ff6c63129f9bb86720512a
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.24.orig.tar.xz' glibc_2.24.orig.tar.xz 13921912 SHA256:ed71e8afd2b270f7947a2cea2457a31e1ca4fac08e2731d80edd7ec1730ec84f
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.24-12ubuntu1.debian.tar.xz' glibc_2.24-12ubuntu1.debian.tar.xz 1074048 SHA256:0025d241194fa6d02398394c80bf5c9616bed9ea55184dcb1dcc5a2ff6128f8a
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

### `dpkg` source package: `gnutls28=3.5.8-6ubuntu1`

Binary Packages:

- `libgnutls30:amd64=3.5.8-6ubuntu1`

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1-2.dsc' grep_3.1-2.dsc 2046 SHA256:b75ef8eb1399a49274bafe972679680b7add1500a4ee82eedaa0372f8ed744a0
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1.orig.tar.xz' grep_3.1.orig.tar.xz 1370880 SHA256:db625c7ab3bb3ee757b3926a5cfa8d9e1c3991ad24707a83dde8a5ef2bf7a07e
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1-2.debian.tar.bz2' grep_3.1-2.debian.tar.bz2 110067 SHA256:f09ce7a3c860a5de8939ebceb5fcd85d00d1537ad9f998dae5f623d9bcfe4e40
```

### `dpkg` source package: `gzip=1.6-5ubuntu1`

Binary Packages:

- `gzip=1.6-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu1.dsc' gzip_1.6-5ubuntu1.dsc 2023 SHA256:439e340fce084b9b30e22a5537712f9b4727a20e77952addeea7633a4e9ef073
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu1.debian.tar.xz' gzip_1.6-5ubuntu1.debian.tar.xz 15516 SHA256:db01e3f2195cf0ebcf43ad38d07a70059b6b5b292706f2412de34928b9146db5
```

### `dpkg` source package: `heimdal=7.4.0.dfsg.1-2`

Binary Packages:

- `libasn1-8-heimdal:amd64=7.4.0.dfsg.1-2`
- `libgssapi3-heimdal:amd64=7.4.0.dfsg.1-2`
- `libhcrypto4-heimdal:amd64=7.4.0.dfsg.1-2`
- `libheimbase1-heimdal:amd64=7.4.0.dfsg.1-2`
- `libheimntlm0-heimdal:amd64=7.4.0.dfsg.1-2`
- `libhx509-5-heimdal:amd64=7.4.0.dfsg.1-2`
- `libkrb5-26-heimdal:amd64=7.4.0.dfsg.1-2`
- `libroken18-heimdal:amd64=7.4.0.dfsg.1-2`
- `libwind0-heimdal:amd64=7.4.0.dfsg.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris heimdal=7.4.0.dfsg.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.4.0.dfsg.1-2.dsc' heimdal_7.4.0.dfsg.1-2.dsc 3605 SHA256:aa4cf6447fe11169d4fa269a9ff6439d1a8b76ee7cddd0964069e1afb38cf199
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.4.0.dfsg.1.orig.tar.gz' heimdal_7.4.0.dfsg.1.orig.tar.gz 9960312 SHA256:47ce052bb03af79d8f71d8e5d18647f12fda190bedd9da0f391697049f1feb14
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.4.0.dfsg.1-2.debian.tar.xz' heimdal_7.4.0.dfsg.1-2.debian.tar.xz 128348 SHA256:ea4359d8aefdda794352d82111866a72bf0b698a3afbc3a55208ef68c8cb47f5
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
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.15.1-2.dsc' krb5_1.15.1-2.dsc 3294 SHA256:717416ea51edbfd2555568631e700c15cce1244f730a97d317288ab0be20d43a
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.15.1.orig.tar.gz' krb5_1.15.1.orig.tar.gz 9375538 SHA256:437c8831ddd5fde2a993fef425dedb48468109bb3d3261ef838295045a89eb45
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.15.1-2.debian.tar.xz' krb5_1.15.1-2.debian.tar.xz 143404 SHA256:e44c17efbf26e5d2a3de7577a039085683efe21afb0da3eacc12c17dc01e9d1a
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libcap-ng=0.7.7-3build1`

Binary Packages:

- `libcap-ng0:amd64=0.7.7-3build1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.7-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3build1.dsc' libcap-ng_0.7.7-3build1.dsc 2092 SHA256:61cd6c1aaa4beff181bfc62c2b3f8492f9587da8f4f35a3201d6da6e9156a197
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7.orig.tar.gz' libcap-ng_0.7.7.orig.tar.gz 420178 SHA256:615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3build1.debian.tar.xz' libcap-ng_0.7.7-3build1.debian.tar.xz 5288 SHA256:6bf39e51c6be5bb14c18187a566d97696d4b578a3375ed1b5426966fbce38611
```

### `dpkg` source package: `libedit=3.1-20170329-1`

Binary Packages:

- `libedit2:amd64=3.1-20170329-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20170329-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20170329-1.dsc' libedit_3.1-20170329-1.dsc 2269 SHA256:1e657cfcfbbe5c550b844f17cfeb1d8591136fa57300e6cff2b56e5a3e25ad3f
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20170329.orig.tar.gz' libedit_3.1-20170329.orig.tar.gz 508504 SHA256:91f2d90fbd2a048ff6dad7131d9a39e690fd8a8fd982a353f1333dd4017dd4be
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20170329-1.debian.tar.bz2' libedit_3.1-20170329-1.debian.tar.bz2 11267 SHA256:7dd7a23b07b082d058b7fb741d3b750b80699472e7c8efd1935a9e7c59a49a39
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

### `dpkg` source package: `libgcrypt20=1.7.8-2`

Binary Packages:

- `libgcrypt20:amd64=1.7.8-2`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.7.8-2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.7.8-2.dsc' libgcrypt20_1.7.8-2.dsc 2914 SHA256:50756aa88fe20558993c3d73e1f611e28ec78daab7b4e61a0ac0efdbd3da910d
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.7.8.orig.tar.bz2' libgcrypt20_1.7.8.orig.tar.bz2 2897853 SHA256:948276ea47e6ba0244f36a17b51dcdd52cfd1e664b0a1ac3bc82134fb6cec199
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.7.8.orig.tar.bz2.asc' libgcrypt20_1.7.8.orig.tar.bz2.asc 310 SHA256:7785a7b8f861b8742f64c27a08de8aa27cb6f22af8884e5252602051544085db
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.7.8-2.debian.tar.xz' libgcrypt20_1.7.8-2.debian.tar.xz 26620 SHA256:7ddf57bcb8a1eb78d89af15dc138e4016ebca49ea8b78049ea4c71a8bb4cd31b
```

### `dpkg` source package: `libgpg-error=1.27-3`

Binary Packages:

- `libgpg-error0:amd64=1.27-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.27-3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-3.dsc' libgpg-error_1.27-3.dsc 2377 SHA256:427eba727e5ff13b1f29493edc281cfa811aabe4c0d0f07f747ab11bc8e9574f
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27.orig.tar.bz2' libgpg-error_1.27.orig.tar.bz2 813060 SHA256:4f93aac6fecb7da2b92871bb9ee33032be6a87b174f54abf8ddf0911a22d29d2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-3.debian.tar.xz' libgpg-error_1.27-3.debian.tar.xz 15856 SHA256:c1a17ea7066c955be7f7117efdd0961cd43f3fd81152854e53a60cb08fba0a10
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.33-1.dsc' libidn_1.33-1.dsc 1848 SHA256:f076f7dddc45717542a48123d7dddb638beebe8521f5fba29f2d148fdcf12bf0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.33.orig.tar.gz' libidn_1.33.orig.tar.gz 3501056 SHA256:44a7aab635bb721ceef6beecc4d49dfd19478325e1b47f3196f7d2acc4930e19
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.33-1.debian.tar.xz' libidn_1.33-1.debian.tar.xz 60264 SHA256:a50ee1e2598670ca1166d218e546c4cc031c658188b1193b73d98175d4405ef0
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

### `dpkg` source package: `libpsl=0.17.0-5`

Binary Packages:

- `libpsl5:amd64=0.17.0-5`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libselinux=2.6-3build1`

Binary Packages:

- `libselinux1:amd64=2.6-3build1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.6-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.6-3build1.dsc' libselinux_2.6-3build1.dsc 2580 SHA256:82d6ad69a747b32b0a0233f189d6617446d04fc38a403eee6abe8d6fa7489c5f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.6.orig.tar.gz' libselinux_2.6.orig.tar.gz 203119 SHA256:4ea2dde50665c202253ba5caac7738370ea0337c47b251ba981c60d24e1a118a
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.6-3build1.debian.tar.xz' libselinux_2.6-3build1.debian.tar.xz 24460 SHA256:e80efc924ecc055f1066f08ea0cbecfa2bf00ff997fe92f369e1cb4a9ae569ce
```

### `dpkg` source package: `libsemanage=2.6-2build1`

Binary Packages:

- `libsemanage-common=2.6-2build1`
- `libsemanage1:amd64=2.6-2build1`

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

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.6-2.dsc' libsepol_2.6-2.dsc 1814 SHA256:197ddaf44a5139d7ca6c12ce6b29fca0589f72c59ac588a7fa39d11b2e65778a
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.6.orig.tar.gz' libsepol_2.6.orig.tar.gz 442549 SHA256:d856d6506054f52abeaa3543ea2f2344595a3dc05d0d873ed7f724f7a16b1874
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.6-2.debian.tar.xz' libsepol_2.6-2.debian.tar.xz 14320 SHA256:d7a1022d03eb53a8d30262e06f14f691e553b3db684ca0f3549cd17b93fb7465
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.12-2.1.dsc' libtasn1-6_4.12-2.1.dsc 2586 SHA256:0f762f07bbb39e9a49687e8bd7a18a5d3cc435d6c226eaecfcda7a8d325c2cef
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.12.orig.tar.gz' libtasn1-6_4.12.orig.tar.gz 1888450 SHA256:6753da2e621257f33f5b051cc114d417e5206a0818fe0b1ecfd6153f70934753
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.12-2.1.debian.tar.xz' libtasn1-6_4.12-2.1.debian.tar.xz 58728 SHA256:df32c448a8472eff20fa6989f939cbc0e2caf0d4bb712e54b31b39bbd6d8b781
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
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.0-1.dsc' mercurial_4.0-1.dsc 2364 SHA256:ff0e5c095bc7968180186caae755a7db258d474fc3cec759c2043ca53770db0f
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.0.orig.tar.gz' mercurial_4.0.orig.tar.gz 4850316 SHA256:24be080745230840f214d93e9f9fb4e25510f9abbbec2e56fab18543fedc43a7
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.0-1.debian.tar.xz' mercurial_4.0-1.debian.tar.xz 95148 SHA256:2ebf7404aec85e37a751950678b12df1a6fd7c3b7fa405e87673cb4eaabdf2b8
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

### `dpkg` source package: `npth=1.5-2`

Binary Packages:

- `libnpth0:amd64=1.5-2`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.5-2
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5-2.dsc' npth_1.5-2.dsc 1949 SHA256:6f4e78f1ccb9ef5f062f973f937ea27e36e168a41c7b5c0d65d4775b0daf676f
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5.orig.tar.bz2' npth_1.5.orig.tar.bz2 299308 SHA256:294a690c1f537b92ed829d867bee537e46be93fbd60b16c04630fbbfcd9db3c2
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5-2.debian.tar.xz' npth_1.5-2.debian.tar.xz 10416 SHA256:c1140dacd332ca38dcc4ae6f0cb69baab25474fd58370a6432f55c2d52bf1e6d
```

### `dpkg` source package: `openldap=2.4.45+dfsg-1ubuntu1`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.45+dfsg-1ubuntu1`
- `libldap-common=2.4.45+dfsg-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.45+dfsg-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45+dfsg-1ubuntu1.dsc' openldap_2.4.45+dfsg-1ubuntu1.dsc 2765 SHA256:d7990a3ad576ff2b6e3ec32e76adf351b54edeb073b9368b1ee84ac71ca8b5b1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45+dfsg.orig.tar.gz' openldap_2.4.45+dfsg.orig.tar.gz 4846458 SHA256:d51c70423aa0554d454fd3d43e7f2e940523b4ef07979305b48c233ae44b2b32
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45+dfsg-1ubuntu1.debian.tar.xz' openldap_2.4.45+dfsg-1ubuntu1.debian.tar.xz 175800 SHA256:2f6ddef561e986db9ecbf91ee89b9224c81089d2d5ad7c06cb3629539e95ec66
```

### `dpkg` source package: `openssh=1:7.5p1-5ubuntu1`

Binary Packages:

- `openssh-client=1:7.5p1-5ubuntu1`

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
$ apt-get source -qq --print-uris openssh=1:7.5p1-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.5p1-5ubuntu1.dsc' openssh_7.5p1-5ubuntu1.dsc 2558 SHA256:cfc547f291ec56feedddebbfb296f1a6e63e778dfee25b02f14c08e01e0c6458
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.5p1.orig.tar.gz' openssh_7.5p1.orig.tar.gz 1510857 SHA256:9846e3c5fab9f0547400b4d2c017992f914222b3fd1f8eee6c7dc6bc5e59f9f0
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.5p1-5ubuntu1.debian.tar.xz' openssh_7.5p1-5ubuntu1.debian.tar.xz 160112 SHA256:eb0a84d6b761fead5d5d9ce679f97dcf672a26e89a6c426a18a56d0ca60ea68e
```

### `dpkg` source package: `openssl=1.0.2g-1ubuntu13`

Binary Packages:

- `libssl1.0.0:amd64=1.0.2g-1ubuntu13`
- `openssl=1.0.2g-1ubuntu13`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.0.2g-1ubuntu13
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g-1ubuntu13.dsc' openssl_1.0.2g-1ubuntu13.dsc 2474 SHA256:41fe4ad0310b952c533b4c7ce315016fd97df040f8e6f8bed040037831609582
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g.orig.tar.gz' openssl_1.0.2g.orig.tar.gz 5266102 SHA256:b784b1b3907ce39abf4098702dade6365522a253ad1552e267a9a0e89594aa33
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g-1ubuntu13.debian.tar.xz' openssl_1.0.2g-1ubuntu13.debian.tar.xz 111012 SHA256:1bcd2aff0b517b0255d7267b58800521dfc81e3c953bfae996e15fdeb2121759
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.7-3.dsc' p11-kit_0.23.7-3.dsc 2452 SHA256:ce5611bfa9891673edcb5b4ee369da586b2cee214061dff492dc5f6a8fff6092
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.7.orig.tar.gz' p11-kit_0.23.7.orig.tar.gz 1087009 SHA256:988e7c86f2641b36702503481292ef0686e6b1c39d80b215699b6dbf1024be41
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.7.orig.tar.gz.asc' p11-kit_0.23.7.orig.tar.gz.asc 543 SHA256:7156998e36be4e12e2375518d76a1b1fdf46acbae10dd6bb098c1bd902f0cdad
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.7-3.debian.tar.xz' p11-kit_0.23.7-3.debian.tar.xz 21772 SHA256:8dc0b106a69842cc734f8f3c9a1ad6312cd5d1cd318b696cdc76e6ca0c3108b5
```

### `dpkg` source package: `pam=1.1.8-3.2ubuntu3`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.2ubuntu3`
- `libpam-modules-bin=1.1.8-3.2ubuntu3`
- `libpam-runtime=1.1.8-3.2ubuntu3`
- `libpam0g:amd64=1.1.8-3.2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu3.dsc' pam_1.1.8-3.2ubuntu3.dsc 2571 SHA256:53c883d699241c7ae3546fb241546322ab8fa17a1b1b6f763f49eb0b69f49025
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu3.diff.gz' pam_1.1.8-3.2ubuntu3.diff.gz 198914 SHA256:2c343abda296491619b10e12e3f5e79f97cb1531ae80be4da276ec6a63679787
```

### `dpkg` source package: `pcre3=2:8.39-4`

Binary Packages:

- `libpcre3:amd64=2:8.39-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-4
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-4.dsc' pcre3_8.39-4.dsc 2224 SHA256:d79722717c869fce3343423d479e3cc0dfe5a31e392f9946a7054a11d395a544
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-4.debian.tar.gz' pcre3_8.39-4.debian.tar.gz 25456 SHA256:4b1f803c48e0d09bd4d8740c267ded7896afeb3a7ba0fc24326caf51044cf768
```

### `dpkg` source package: `perl=5.26.0-5`

Binary Packages:

- `libperl5.26:amd64=5.26.0-5`
- `perl=5.26.0-5`
- `perl-base=5.26.0-5`
- `perl-modules-5.26=5.26.0-5`

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
$ apt-get source -qq --print-uris perl=5.26.0-5
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.0-5.dsc' perl_5.26.0-5.dsc 2369 SHA256:31d355b9a7a1cd49ea5cee2a1419c0030ca809a6bf9cfbfd996bac3426fc3b9d
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.0.orig.tar.xz' perl_5.26.0.orig.tar.xz 11961692 SHA256:9bf2e3d0d72aad77865c3bdbc20d3b576d769c5c255c4ceb30fdb9335266bf55
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.0-5.debian.tar.xz' perl_5.26.0-5.debian.tar.xz 159684 SHA256:52dd745532e04ceb30d1b24497e783c59f0c719b029d9395f2a7a7abc46db959
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


### `dpkg` source package: `shadow=1:4.2-3.2ubuntu2`

Binary Packages:

- `login=1:4.2-3.2ubuntu2`
- `passwd=1:4.2-3.2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.2-3.2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.2ubuntu2.dsc' shadow_4.2-3.2ubuntu2.dsc 2426 SHA256:27a07adb9f34d8b5d28c0d5a1844cb0ecb1f844fa65ba30c1bcc55ed5adfc4ce
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2.orig.tar.xz' shadow_4.2.orig.tar.xz 1088696 SHA256:c5bd72c4ecb438b99289e4630b22ea0626987a378d084910dbe59eceaa34be1d
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.2ubuntu2.debian.tar.xz' shadow_4.2-3.2ubuntu2.debian.tar.xz 505468 SHA256:cf6ee576049e124e3f80116911ff81b37da1bfbae475b7a116412cbae79e7b81
```

### `dpkg` source package: `six=1.10.0-4`

Binary Packages:

- `python-six=1.10.0-4`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.10.0-4
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0-4.dsc' six_1.10.0-4.dsc 2326 SHA256:3a320be5970dea4f43a03e3a417ccd1639b3c4a749ced220fc283a3eb20912f9
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0.orig.tar.gz' six_1.10.0.orig.tar.gz 29630 SHA256:105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0-4.debian.tar.xz' six_1.10.0-4.debian.tar.xz 4012 SHA256:ab208e55d33fe4765d1ed0da62c966a3bb420009bdb9d68c32e61c619c3e61d9
```

### `dpkg` source package: `sqlite3=3.19.3-3`

Binary Packages:

- `libsqlite3-0:amd64=3.19.3-3`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.19.3-3
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.19.3-3.dsc' sqlite3_3.19.3-3.dsc 2488 SHA256:eea0af6c0f700bec519d36f73322d69e4fbf3cf80b8820176d3e2ee6d2598daa
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.19.3.orig-www.tar.xz' sqlite3_3.19.3.orig-www.tar.xz 3475624 SHA256:d022fc888db199fbdb83f984cffd2b28bce4e5607c1aa3133bfc22f901d221d6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.19.3.orig.tar.xz' sqlite3_3.19.3.orig.tar.xz 5694132 SHA256:f315f639127bfd36516df4ad3181e05905058507a54dd882e0c4d9d13378baae
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.19.3-3.debian.tar.xz' sqlite3_3.19.3-3.debian.tar.xz 17564 SHA256:c6b49b43acfbbddf51cfe3cd2b8001dd036c3b0b0dd67d8c522055cf8affdd39
```

### `dpkg` source package: `subversion=1.9.5-1ubuntu2`

Binary Packages:

- `libsvn1:amd64=1.9.5-1ubuntu2`
- `subversion=1.9.5-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `systemd=233-8ubuntu3`

Binary Packages:

- `libsystemd0:amd64=233-8ubuntu3`
- `libudev1:amd64=233-8ubuntu3`

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
$ apt-get source -qq --print-uris systemd=233-8ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_233-8ubuntu3.dsc' systemd_233-8ubuntu3.dsc 4908 SHA256:377393ca227d87298c176d17e1ea8a85904abfd950ba82a19755410fc1b3bd6b
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_233.orig.tar.gz' systemd_233.orig.tar.gz 4660737 SHA256:8b3e99da3d4164b66581830a7f2436c0c8fe697b5fbdc3927bdb960646be0083
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_233-8ubuntu3.debian.tar.xz' systemd_233-8ubuntu3.debian.tar.xz 153796 SHA256:bbc3aa8749a69917ecf62871285ef1abefca9519385e90bc39ed706756565008
```

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

### `dpkg` source package: `tar=1.29b-2`

Binary Packages:

- `tar=1.29b-2`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.29b-2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-2.dsc' tar_1.29b-2.dsc 1965 SHA256:cae92504d2622b0a3d353df387c44beb1e9040ed2d527272a226f0ba247a17f1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b.orig.tar.xz' tar_1.29b.orig.tar.xz 1822008 SHA256:6a59706ebee384a6cd2fb3ee1dbfbfc20c5c66c7efd7cedb28edc054fca8ba00
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-2.debian.tar.xz' tar_1.29b-2.debian.tar.xz 28552 SHA256:caa4e76e821b87e842d0bfc8285abd47103d47d56e93dae0a8df4b787f7c8d72
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

### `dpkg` source package: `util-linux=2.29.2-2ubuntu1`

Binary Packages:

- `bsdutils=1:2.29.2-2ubuntu1`
- `libblkid1:amd64=2.29.2-2ubuntu1`
- `libfdisk1:amd64=2.29.2-2ubuntu1`
- `libmount1:amd64=2.29.2-2ubuntu1`
- `libsmartcols1:amd64=2.29.2-2ubuntu1`
- `libuuid1:amd64=2.29.2-2ubuntu1`
- `mount=2.29.2-2ubuntu1`
- `util-linux=2.29.2-2ubuntu1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `wget=1.19.1-3ubuntu1`

Binary Packages:

- `wget=1.19.1-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.19.1-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.1-3ubuntu1.dsc' wget_1.19.1-3ubuntu1.dsc 1979 SHA256:cead2dccb9a2458bdbe923a26841e7309f3a4aaf05eaba0109b502cb363b7214
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.1.orig.tar.xz' wget_1.19.1.orig.tar.xz 2111756 SHA256:0c950b9671881222a4d385b013c9604e98a8025d1988529dfca0e93617744cd2
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.1-3ubuntu1.debian.tar.xz' wget_1.19.1-3ubuntu1.debian.tar.xz 22888 SHA256:61362ad232614c2c6f02b0552bf46852c9e1f70b3d6d0d3e64f7c110e0da8c25
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
