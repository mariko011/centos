# `websphere-liberty:microProfile`

## Docker Metadata

- Image ID: `sha256:3106253eeabcb6617cc535ad4b5616e2aeb5554810e774a7848b4040544f6647`
- Created: `2017-01-21T02:10:45.382111035Z`
- Arch: `linux`/`amd64`
- Command: `["/opt/ibm/docker/docker-server","run","defaultServer"]`
- Environment:
  - `PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr3fp22`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `LIBERTY_VERSION=16.0.0_04`
  - `LOG_DIR=/logs`
  - `WLP_OUTPUT_DIR=/opt/ibm/wlp/output`

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

### `dpkg` source package: `adduser=3.113+nmu3ubuntu4`

Binary Packages:

- `adduser=3.113+nmu3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.113+nmu3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113+nmu3ubuntu4.dsc' adduser_3.113+nmu3ubuntu4.dsc 1856 SHA256:323f327b25e1fbeba38278eae5813be6238a7c5959e7c10af041999408440247
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113+nmu3ubuntu4.tar.gz' adduser_3.113+nmu3ubuntu4.tar.gz 367980 SHA256:6e4d44c8388b9ba85fc175fa4a48ed43bf6500913c2c631fda0e4419ae63c65a
```

### `dpkg` source package: `apparmor=2.10.95-0ubuntu2.5`

Binary Packages:

- `libapparmor1:amd64=2.10.95-0ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/libapparmor1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris apparmor=2.10.95-0ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.10.95-0ubuntu2.5.dsc' apparmor_2.10.95-0ubuntu2.5.dsc 3252 SHA256:d0df28b367aecd5cbd86c5c89cc9e8fc4e44a3cee348b0dc4acbec623bb9c7af
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.10.95.orig.tar.gz' apparmor_2.10.95.orig.tar.gz 4502268 SHA256:3f659a599718f4a5e2a33140916715f574a5cb3634a6b9ed6d29f7b0617e4d1a
'http://archive.ubuntu.com/ubuntu/pool/main/a/apparmor/apparmor_2.10.95-0ubuntu2.5.debian.tar.xz' apparmor_2.10.95-0ubuntu2.5.debian.tar.xz 94420 SHA256:e24893c41b4bc0e0b63f1aaa649ab99a853a5c2959fefb787ab2968fd221040f
```

### `dpkg` source package: `apt=1.2.18`

Binary Packages:

- `apt=1.2.18`
- `libapt-pkg5.0:amd64=1.2.18`

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
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.dsc' attr_2.4.47-2.dsc 2027 SHA256:ee842d6d62d473acf02b494c432cf33128fa46455a09d3172c77c252449fa1a6
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.debian.tar.xz' attr_2.4.47-2.debian.tar.xz 8096 SHA256:f65909562def601b1556393f5656032c058dc574ba622414ad3eb80c7b05a42a
```

### `dpkg` source package: `audit=1:2.4.5-1ubuntu2`

Binary Packages:

- `libaudit-common=1:2.4.5-1ubuntu2`
- `libaudit1:amd64=1:2.4.5-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.4.5-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5-1ubuntu2.dsc' audit_2.4.5-1ubuntu2.dsc 2745 SHA256:a2ea55542c820c1de533878dc46165ecf76039b9e43b6641fb3ba5cb64672972
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5.orig.tar.gz' audit_2.4.5.orig.tar.gz 1030113 SHA256:e73cdd3fc779b122523acaabcda3e27ce70eec22ad4eb526898be9be5b2838e0
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5-1ubuntu2.debian.tar.xz' audit_2.4.5-1ubuntu2.debian.tar.xz 18752 SHA256:45a0df6d08245f3cf63db3280f61eeb4fb613ab8c90567f9d288ac60c714648e
```

### `dpkg` source package: `base-files=9.4ubuntu4.3`

Binary Packages:

- `base-files=9.4ubuntu4.3`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `base-passwd=3.5.39`

Binary Packages:

- `base-passwd=3.5.39`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.39
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.39.dsc' base-passwd_3.5.39.dsc 1720 SHA256:cfb464663fd23f5b64b7fdeb8860a754b28ee77b346bf2a362c36ceccb7a65ea
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.39.tar.xz' base-passwd_3.5.39.tar.xz 51560 SHA256:d827ce2d7b9b4b572527b2071f0e1354840a14c3a43a5081bcb31de400112803
```

### `dpkg` source package: `bash=4.3-14ubuntu1.1`

Binary Packages:

- `bash=4.3-14ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.3-14ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-14ubuntu1.1.dsc' bash_4.3-14ubuntu1.1.dsc 2309 SHA256:cb346c86e7d7f1a7871444c85c4ab526b89f9ee607881296586b0c7e27387c91
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3.orig.tar.gz' bash_4.3.orig.tar.gz 7516231 SHA256:b2fe79ddf9e7abdb4695e3070afa866d2a94a58d1cc9d731585330c753815491
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-14ubuntu1.1.debian.tar.xz' bash_4.3-14ubuntu1.1.debian.tar.xz 91648 SHA256:db665b66331036e5fb9c52a6be75f2de32e0b43ad270765c8ca76fbb5ccafec1
```

### `dpkg` source package: `bzip2=1.0.6-8`

Binary Packages:

- `libbz2-1.0:amd64=1.0.6-8`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.dsc' bzip2_1.0.6-8.dsc 2042 SHA256:46df0e8112487065532829f2340ffd6ca64d46b6ab01b0000694751d3e67fb11
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.debian.tar.bz2' bzip2_1.0.6-8.debian.tar.bz2 59494 SHA256:60fe87fd3942c385e5921786255a27daf9a962ebc7301a60dfd8d1e1a5c8ce78
```

### `dpkg` source package: `ca-certificates=20160104ubuntu1`

Binary Packages:

- `ca-certificates=20160104ubuntu1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20160104ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20160104ubuntu1.dsc' ca-certificates_20160104ubuntu1.dsc 1858 SHA256:e7572ca55c517a86793943ebc172accc7246e40693b8f37848020b617c5f4fd0
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20160104ubuntu1.tar.xz' ca-certificates_20160104ubuntu1.tar.xz 293852 SHA256:321a9e2cdaf0d02077fc5ac755024cdf0d354ef10ab1581bff14694cc391a16e
```

### `dpkg` source package: `cdebconf=0.198ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.198ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.198ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.198ubuntu1.dsc' cdebconf_0.198ubuntu1.dsc 2825 SHA256:d595d3afcad97026a763909a3efe66e296b02e432827d66a49c6f7088023a21e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.198ubuntu1.tar.xz' cdebconf_0.198ubuntu1.tar.xz 269256 SHA256:2f3490411599195bd31fb1a29770694888c8295f9bf5012bfb4fa22ebd3990f1
```

### `dpkg` source package: `coreutils=8.25-2ubuntu2`

Binary Packages:

- `coreutils=8.25-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.25-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25-2ubuntu2.dsc' coreutils_8.25-2ubuntu2.dsc 2071 SHA256:8f2d6456701648072a4ed22142bcb8c0113d4488dd28acd1fc46e26952bbef91
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25.orig.tar.xz' coreutils_8.25.orig.tar.xz 5725008 SHA256:31e67c057a5b32a582f26408c789e11c2e8d676593324849dcf5779296cdce87
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25-2ubuntu2.debian.tar.xz' coreutils_8.25-2ubuntu2.debian.tar.xz 28040 SHA256:221f38aeb8e251c21edcdb93706deb61ac7619264c1e403609f67e13431e69bb
```

### `dpkg` source package: `cryptsetup=2:1.6.6-5ubuntu2`

Binary Packages:

- `libcryptsetup4:amd64=2:1.6.6-5ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libcryptsetup4/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cryptsetup=2:1.6.6-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6-5ubuntu2.dsc' cryptsetup_1.6.6-5ubuntu2.dsc 2660 SHA256:e6d4fabb8f079cdf11639666f1e04f0bc06c44f5cc132c5b60b6f63dc7b4af69
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6.orig.tar.xz' cryptsetup_1.6.6.orig.tar.xz 1145940 SHA256:2d2ce28e4e1137dd599d87884b62ef6dbf14fd7848b2a2bf7d61cf125fbd8e6f
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6-5ubuntu2.debian.tar.xz' cryptsetup_1.6.6-5ubuntu2.debian.tar.xz 91088 SHA256:11dd7ecd756bec8c19342f82cccc3634e620d506daa425716879456fabb49c76
```

### `dpkg` source package: `dash=0.5.8-2.1ubuntu2`

Binary Packages:

- `dash=0.5.8-2.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.1ubuntu2.dsc' dash_0.5.8-2.1ubuntu2.dsc 1882 SHA256:16cb7f56041a9daa198728715318a5d88c19da01eb3ffccbc71f67304b077564
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.1ubuntu2.diff.gz' dash_0.5.8-2.1ubuntu2.diff.gz 73054 SHA256:3c200a0b9c88b2e421bce9c717bf2ace7a9378c271a9b60463913e312424565a
```

### `dpkg` source package: `db5.3=5.3.28-11`

Binary Packages:

- `libdb5.3:amd64=5.3.28-11`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-11
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-11.dsc' db5.3_5.3.28-11.dsc 3199 SHA256:6179822d8cba6645b46809acf5d46055e10259a8d9d5994e3e2a858da7374724
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-11.debian.tar.xz' db5.3_5.3.28-11.debian.tar.xz 27776 SHA256:19b81208770caa2be61343a4f6b005a7c3ce65acc1f63c83dc77d474dffffb22
```

### `dpkg` source package: `debconf=1.5.58ubuntu1`

Binary Packages:

- `debconf=1.5.58ubuntu1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.58ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.58ubuntu1.dsc' debconf_1.5.58ubuntu1.dsc 2062 SHA256:cf8b801bd9b969c797f7bc4ff51d9332d8874ae387a0afdab5c043760567da37
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.58ubuntu1.tar.gz' debconf_1.5.58ubuntu1.tar.gz 1006952 SHA256:29b876ca4ff12ae2473e3c0e7119e8c9f4cebe3ce89f54d1f63d5c9ab5166253
```

### `dpkg` source package: `debianutils=4.7`

Binary Packages:

- `debianutils=4.7`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.7
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.7.dsc' debianutils_4.7.dsc 1703 SHA256:8dd1d66186f56bfe11bce5151b50c6909787d690bf90cc90212ea6deec186460
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.7.tar.xz' debianutils_4.7.tar.xz 156276 SHA256:a269cacd40f52f2fa5d5636357714a49e8538459c16d77772efaa23711fe53d9
```

### `dpkg` source package: `diffutils=1:3.3-3`

Binary Packages:

- `diffutils=1:3.3-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.3-3
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-3.dsc' diffutils_3.3-3.dsc 1438 SHA256:2ac1b096ab1f6f0c628d6952fe65336d0c792a3d4814fb73a81a3f1f518eff91
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3.orig.tar.xz' diffutils_3.3.orig.tar.xz 1197832 SHA256:a25e89a8ab65fded1731e4186be1bb25cda967834b6df973599cdcd5abdfc19c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-3.debian.tar.xz' diffutils_3.3-3.debian.tar.xz 18356 SHA256:a0d1946979196f793a8ca55b21ab7891227de08f15bac2578ed84f4911e8b755
```

### `dpkg` source package: `dpkg=1.18.4ubuntu1.1`

Binary Packages:

- `dpkg=1.18.4ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.18.4ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.4ubuntu1.1.dsc' dpkg_1.18.4ubuntu1.1.dsc 2168 SHA256:2807bba376095b241b0334704e0c3b5b13379de3853792f465e39d8641308b42
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.4ubuntu1.1.tar.xz' dpkg_1.18.4ubuntu1.1.tar.xz 4374172 SHA256:6d9aa2356fba44f0d1e7c74df9fb500108bfb581ec1b5eae8b5cfdaf269564d2
```

### `dpkg` source package: `e2fsprogs=1.42.13-1ubuntu1`

Binary Packages:

- `e2fslibs:amd64=1.42.13-1ubuntu1`
- `e2fsprogs=1.42.13-1ubuntu1`
- `libcomerr2:amd64=1.42.13-1ubuntu1`
- `libss2:amd64=1.42.13-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.42.13-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13-1ubuntu1.dsc' e2fsprogs_1.42.13-1ubuntu1.dsc 2600 SHA256:03d2a33abd1037df7949405721903469fc526c07ac9ca0c5a01f273f7f506b05
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13.orig.tar.gz' e2fsprogs_1.42.13.orig.tar.gz 6511931 SHA256:59993ff3a44f82e504561e0ebf95e8c8fa9f9f5746eb6a7182239605d2a4e2d4
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13-1ubuntu1.debian.tar.xz' e2fsprogs_1.42.13-1ubuntu1.debian.tar.xz 69196 SHA256:90326bf4bd93d01fbd9dc73803cc58c8d98ff67e1469e4cbbe672169aa048220
```

### `dpkg` source package: `findutils=4.6.0+git+20160126-2`

Binary Packages:

- `findutils=4.6.0+git+20160126-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20160126-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20160126-2.dsc' findutils_4.6.0+git+20160126-2.dsc 2163 SHA256:b4b644696cb66bdf72c59b25efe61800ae20fadfcc8e633cde240e4a956567a7
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20160126.orig.tar.xz' findutils_4.6.0+git+20160126.orig.tar.xz 1710188 SHA256:3d25cef1e0d5e098e323b06f66aea9f02f993a0cf6f13a437d712a8a722cd67e
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20160126-2.debian.tar.xz' findutils_4.6.0+git+20160126-2.debian.tar.xz 25080 SHA256:58bf1e7a07fbac6a68693b099ec6fc9a6166e0b1b60cebe6bac3b90287a8dc3f
```

### `dpkg` source package: `gcc-5=5.4.0-6ubuntu1~16.04.4`

Binary Packages:

- `gcc-5-base:amd64=5.4.0-6ubuntu1~16.04.4`
- `libstdc++6:amd64=5.4.0-6ubuntu1~16.04.4`

Licenses: (parsed from: `/usr/share/doc/gcc-5-base/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-5=5.4.0-6ubuntu1~16.04.4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5_5.4.0-6ubuntu1~16.04.4.dsc' gcc-5_5.4.0-6ubuntu1~16.04.4.dsc 28631 SHA256:aa1bf24191d929638953b9420d6c90df7f3dbd82d0bb2e27f02b9bd598c489c5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5_5.4.0.orig.tar.gz' gcc-5_5.4.0.orig.tar.gz 73530162 SHA256:00f73e8382aa8653aa501ce2263597c2c4429912bfa18102f47cc362f00ed88d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-5/gcc-5_5.4.0-6ubuntu1~16.04.4.diff.gz' gcc-5_5.4.0-6ubuntu1~16.04.4.diff.gz 1451941 SHA256:87c63d2da53e46bf05bef082b015ac14ffcb46467e2fdfd87a4891d742d4697d
```

### `dpkg` source package: `gccgo-6=6.0.1-0ubuntu1`

Binary Packages:

- `gcc-6-base:amd64=6.0.1-0ubuntu1`
- `libgcc1:amd64=1:6.0.1-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`, `/usr/share/doc/libgcc1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gccgo-6=6.0.1-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1-0ubuntu1.dsc' gccgo-6_6.0.1-0ubuntu1.dsc 11285 SHA256:4c02817baac83492323ebe7800d44de609eca147518682307a3bad2bd5134129
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1.orig.tar.gz' gccgo-6_6.0.1.orig.tar.gz 76335555 SHA256:daff7478ce52d00572683547c810bf50652a9057c33e3ce703c9f0baae28f4c3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1-0ubuntu1.diff.gz' gccgo-6_6.0.1-0ubuntu1.diff.gz 633954 SHA256:839eea6c2d23670f09b642864ff61e3097b47391cb508a5997538750ff8678f6
```

### `dpkg` source package: `glibc=2.23-0ubuntu5`

Binary Packages:

- `libc-bin=2.23-0ubuntu5`
- `libc6:amd64=2.23-0ubuntu5`
- `locales=2.23-0ubuntu5`
- `multiarch-support=2.23-0ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/locales/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.23-0ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23-0ubuntu5.dsc' glibc_2.23-0ubuntu5.dsc 8532 SHA256:00e1d1e3c8e61c23dcf181ed15c950197d60952e518673532ad1a52de55fd58b
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23.orig.tar.xz' glibc_2.23.orig.tar.xz 13849968 SHA256:bf6c528eeebefcacc295270068b79330c1fb2b22458ff66285b4175d23442c96
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23-0ubuntu5.debian.tar.xz' glibc_2.23-0ubuntu5.debian.tar.xz 1330364 SHA256:9c947118fe6e28aa4dc0c569661bb2740a86a5efe9a6f5dc1a437d35062d8f57
```

### `dpkg` source package: `gnupg=1.4.20-1ubuntu3.1`

Binary Packages:

- `gnupg=1.4.20-1ubuntu3.1`
- `gpgv=1.4.20-1ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpgv/copyright`)

- `GPL-3`
- `GPL-3+ with OpenSSL exception`
- `RFC-Reference`

Source:

```console
$ apt-get source -qq --print-uris gnupg=1.4.20-1ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20-1ubuntu3.1.dsc' gnupg_1.4.20-1ubuntu3.1.dsc 2460 SHA256:d44da8008925234f403dbec9bb4baac47edb81b017728033ab258dddf032469f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20.orig.tar.gz' gnupg_1.4.20.orig.tar.gz 5156447 SHA256:dc1f1a6028488303a4efb01aadda480b9cd0f49f65aef94c432628fdd127e586
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20-1ubuntu3.1.debian.tar.xz' gnupg_1.4.20-1ubuntu3.1.debian.tar.xz 38320 SHA256:a299bedd609dd8a8f488db64c6a13361599ba0f906a805730496f9973257d91c
```

### `dpkg` source package: `grep=2.25-1~16.04.1`

Binary Packages:

- `grep=2.25-1~16.04.1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.25-1~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25-1~16.04.1.dsc' grep_2.25-1~16.04.1.dsc 1971 SHA256:a41abfce1c101fd14d435cafbf15c2ecec5dbb01c157a52a2d24a6baae387048
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25.orig.tar.xz' grep_2.25.orig.tar.xz 1327856 SHA256:e21e83bac50450e0d0d61a42c154ee0dceaacdbf4f604ef6e79071cb8e596830
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25-1~16.04.1.debian.tar.bz2' grep_2.25-1~16.04.1.debian.tar.bz2 108236 SHA256:10a95f4bdee1d2beb05ab1727e114d1f0737f5a917e88b973200a38146a2e085
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

### `dpkg` source package: `hostname=3.16ubuntu2`

Binary Packages:

- `hostname=3.16ubuntu2`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.16ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.16ubuntu2.dsc' hostname_3.16ubuntu2.dsc 1573 SHA256:dcffca698d9f428a83b744d638ef2069252395d9b5d1a3098578f01b0cb347a5
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.16ubuntu2.tar.gz' hostname_3.16ubuntu2.tar.gz 14378 SHA256:e0a38fa03b66abd428e119e5af2cccb78a0462cdb58e2e540e66d964e2719195
```

### `dpkg` source package: `init-system-helpers=1.29ubuntu3`

Binary Packages:

- `init=1.29ubuntu3`
- `init-system-helpers=1.29ubuntu3`

Licenses: (parsed from: `/usr/share/doc/init/copyright`, `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.29ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.29ubuntu3.dsc' init-system-helpers_1.29ubuntu3.dsc 2011 SHA256:a07fa1c88fb0028ae38ce78d4273a47fd406b95a5c1d905385f5885a297198d4
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.29ubuntu3.tar.xz' init-system-helpers_1.29ubuntu3.tar.xz 58224 SHA256:65fc0f654fa14d02ffebdbf8ea111927564f520c0c1c4db550d3b6bef192a037
```

### `dpkg` source package: `insserv=1.14.0-5ubuntu3`

Binary Packages:

- `insserv=1.14.0-5ubuntu3`

Licenses: (parsed from: `/usr/share/doc/insserv/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris insserv=1.14.0-5ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu3.dsc' insserv_1.14.0-5ubuntu3.dsc 2033 SHA256:30a8e6edc9c105803dfc98d733ba0ed8f0aaf81c4aa4f5ba132241b9a1fcb3a2
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0.orig.tar.gz' insserv_1.14.0.orig.tar.gz 53851 SHA256:da74dcf5225a00aa8aef4d5afc6a20e009b2ed9af328dabd55fef1cb3a32140e
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu3.debian.tar.xz' insserv_1.14.0-5ubuntu3.debian.tar.xz 48124 SHA256:a4d0d0703fa398819ab7b4cad573f334feee80aac5520202457519e737b4648a
```

### `dpkg` source package: `kmod=22-1ubuntu4`

Binary Packages:

- `libkmod2:amd64=22-1ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libkmod2/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris kmod=22-1ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22-1ubuntu4.dsc' kmod_22-1ubuntu4.dsc 2143 SHA256:c11ad8116cf2d9f868a490dd2fd3e52518e9c07026864e204a90ffa2c97ccb79
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22.orig.tar.xz' kmod_22.orig.tar.xz 160576 SHA256:158cbbca15c570eb2f4ce29a64cae785cb377a200cf62d6f70ca52e3d33325f3
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22-1ubuntu4.debian.tar.xz' kmod_22-1ubuntu4.debian.tar.xz 13644 SHA256:6b2a68f8333222f3b8cfb80d81d5fc936d90365e346c5092086ea148ec1d4ec0
```

### `dpkg` source package: `libcap2=1:2.24-12`

Binary Packages:

- `libcap2:amd64=1:2.24-12`
- `libcap2-bin=1:2.24-12`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.24-12
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-12.dsc' libcap2_2.24-12.dsc 2211 SHA256:4db68746bd1fe7df6d29ae15c3605e4e1d0e44723580c05166144735c773ae14
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24.orig.tar.xz' libcap2_2.24.orig.tar.xz 63264 SHA256:51cd1c568a2baf1e687573bd6117a94b07f33b46a05acaa50ee208792a830b79
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-12.debian.tar.xz' libcap2_2.24-12.debian.tar.xz 18704 SHA256:34be2e791ec96095cc0b405e532874e8c79aeb2125981ebc6896a0ad0b999cf2
```

### `dpkg` source package: `libgcrypt20=1.6.5-2ubuntu0.2`

Binary Packages:

- `libgcrypt20:amd64=1.6.5-2ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.6.5-2ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5-2ubuntu0.2.dsc' libgcrypt20_1.6.5-2ubuntu0.2.dsc 2639 SHA256:c4b2e24a3f981fdcf0cb0cf2ad920e07b1c2a8d24eb2a27539a2cc89225ebf86
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5.orig.tar.bz2' libgcrypt20_1.6.5.orig.tar.bz2 2549601 SHA256:f49ebc5842d455ae7019def33eb5a014a0f07a2a8353dc3aa50a76fd1dafa924
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5-2ubuntu0.2.debian.tar.xz' libgcrypt20_1.6.5-2ubuntu0.2.debian.tar.xz 32260 SHA256:b4965448f10b735ad144007a5b0b6d341a3f7744a9a5c46a0425054bd98f2262
```

### `dpkg` source package: `libgpg-error=1.21-2ubuntu1`

Binary Packages:

- `libgpg-error0:amd64=1.21-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `GPL-2.1+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.21-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21-2ubuntu1.dsc' libgpg-error_1.21-2ubuntu1.dsc 2306 SHA256:591fc35e29c7314e9dcbea0ed929afc563dd5e0a6be18d65d2480762353bd71f
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21.orig.tar.bz2' libgpg-error_1.21.orig.tar.bz2 763186 SHA256:b7dbdb3cad63a740e9f0c632a1da32d4afdb694ec86c8625c98ea0691713b84d
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21-2ubuntu1.debian.tar.xz' libgpg-error_1.21-2ubuntu1.debian.tar.xz 11988 SHA256:b67f4686d39ec678e860b28d05e07567ec6d43025c18b82c1e9a5dda07a00ed9
```

### `dpkg` source package: `libidn=1.32-3ubuntu1.1`

Binary Packages:

- `libidn11:amd64=1.32-3ubuntu1.1`

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
$ apt-get source -qq --print-uris libidn=1.32-3ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32-3ubuntu1.1.dsc' libidn_1.32-3ubuntu1.1.dsc 2303 SHA256:ae2e99369cbf63ecf269b07ab14987354a979e89c5cd86e22db514dd0984c1d4
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32.orig.tar.gz' libidn_1.32.orig.tar.gz 3483155 SHA256:ba5d5afee2beff703a34ee094668da5c6ea5afa38784cebba8924105e185c4f5
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32-3ubuntu1.1.debian.tar.xz' libidn_1.32-3ubuntu1.1.debian.tar.xz 84344 SHA256:ca711a3ee56c3bf4f603429bbfcda842c1c60f6e95051a0c777f65a62a84d9a5
```

### `dpkg` source package: `libseccomp=2.2.3-3ubuntu3`

Binary Packages:

- `libseccomp2:amd64=2.2.3-3ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.2.3-3ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.2.3-3ubuntu3.dsc' libseccomp_2.2.3-3ubuntu3.dsc 1642 SHA256:776b1be29831e30c4752043d01623a539e3f16152b8f1b9ee5f53a83088da0c8
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.2.3.orig.tar.gz' libseccomp_2.2.3.orig.tar.gz 522755 SHA256:d9b400b703cab7bb04b84b9b6e52076a630b673819d7541757bcc16467b6d49e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.2.3-3ubuntu3.debian.tar.xz' libseccomp_2.2.3-3ubuntu3.debian.tar.xz 25676 SHA256:780972d6c895dad6213be1031d29f34a37af8ebd60febee624f94b24bf5d2770
```

### `dpkg` source package: `libselinux=2.4-3build2`

Binary Packages:

- `libselinux1:amd64=2.4-3build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.4-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4-3build2.dsc' libselinux_2.4-3build2.dsc 2491 SHA256:c14dbd5eff5dfd66c41b9ed3d09e1186975b233c8a2a59720ccb8b318c85883c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4.orig.tar.gz' libselinux_2.4.orig.tar.gz 165931 SHA256:46043091f4c5ba4f43e8d3715f30d665a2d571c9126c1f03945c9ea4ed380f7b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4-3build2.debian.tar.xz' libselinux_2.4-3build2.debian.tar.xz 23216 SHA256:96f1c0526970460e6b5f64ea4d2f7ecabe06e80e23e83e4feccecb955e1ca956
```

### `dpkg` source package: `libsemanage=2.3-1build3`

Binary Packages:

- `libsemanage-common=2.3-1build3`
- `libsemanage1:amd64=2.3-1build3`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.3-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3-1build3.dsc' libsemanage_2.3-1build3.dsc 2497 SHA256:920f1f389316617711778cbe83eb36f62d59a2ebb3b1488f75c41014c0bc684c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3.orig.tar.gz' libsemanage_2.3.orig.tar.gz 138231 SHA256:03e09e35e611c286e446bef92b6023ef2623815996f5a53394bb02e49a312e4b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3-1build3.debian.tar.xz' libsemanage_2.3-1build3.debian.tar.xz 15056 SHA256:d4f90c66ba911f72c5195da957cdcacd91a583e64ad06c01bf5b692387ee3d33
```

### `dpkg` source package: `libsepol=2.4-2`

Binary Packages:

- `libsepol1:amd64=2.4-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4-2.dsc' libsepol_2.4-2.dsc 1768 SHA256:fca86fc62f736baf96ac2061327553b74b1b34f7ace89d982baa5374c24e2841
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4.orig.tar.gz' libsepol_2.4.orig.tar.gz 570822 SHA256:299015d59932404c6b69d365fdecffe5c0e2f9c44e08b47286a4bfc02ee49659
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4-2.debian.tar.xz' libsepol_2.4-2.debian.tar.xz 13188 SHA256:85e50e42c49dee9b21b5dda5fb754ce6d10482a4641e9f088da103b9178c2c1d
```

### `dpkg` source package: `libusb=2:0.1.12-28`

Binary Packages:

- `libusb-0.1-4:amd64=2:0.1.12-28`

Licenses: (parsed from: `/usr/share/doc/libusb-0.1-4/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libusb=2:0.1.12-28
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-28.dsc' libusb_0.1.12-28.dsc 2012 SHA256:be0a89935a8764dc64d40a28959397e6582261eef2152c4ce90a13490471dc5f
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12.orig.tar.gz' libusb_0.1.12.orig.tar.gz 389343 SHA256:37f6f7d9de74196eb5fc0bbe0aea9b5c939de7f500acba3af6fd643f3b538b44
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-28.debian.tar.xz' libusb_0.1.12-28.debian.tar.xz 21524 SHA256:eaf2314902b0bb9de3e1fa8c9abfcecea7b78c9824048016beaca34f7cc4351b
```

### `dpkg` source package: `lsb=9.20160110ubuntu0.2`

Binary Packages:

- `lsb-base=9.20160110ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20160110ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu0.2.dsc' lsb_9.20160110ubuntu0.2.dsc 2160 SHA256:673883614cba3ffc8efef9103ee80164e4744abf3aac80abd7535f9d027886c5
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu0.2.tar.xz' lsb_9.20160110ubuntu0.2.tar.xz 57832 SHA256:deb95383b904e6014bfa1efca7700b0a9a6596f2b9afbcdd52de8b75d64e2d3a
```

### `dpkg` source package: `lvm2=2.02.133-1ubuntu10`

Binary Packages:

- `libdevmapper1.02.1:amd64=2:1.02.110-1ubuntu10`

Licenses: (parsed from: `/usr/share/doc/libdevmapper1.02.1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris lvm2=2.02.133-1ubuntu10
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133-1ubuntu10.dsc' lvm2_2.02.133-1ubuntu10.dsc 3151 SHA256:49b49c886da1f5b5d078875a025ee5f37d049e77c3abe49568b3b6fd7babb5de
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133.orig.tar.xz' lvm2_2.02.133.orig.tar.xz 1356636 SHA256:79c6fc85f28b6af1870d7e3b06d8339270746a5028f47a5b412f4394156ed846
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133-1ubuntu10.debian.tar.xz' lvm2_2.02.133-1ubuntu10.debian.tar.xz 42320 SHA256:54f13369a8576c98472dcc9121e3ac4fd69f3af02d2aa4a7aeb0224e87176d1e
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

### `dpkg` source package: `makedev=2.3.1-93ubuntu1`

Binary Packages:

- `makedev=2.3.1-93ubuntu1`

Licenses: (parsed from: `/usr/share/doc/makedev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris makedev=2.3.1-93ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1-93ubuntu1.dsc' makedev_2.3.1-93ubuntu1.dsc 1829 SHA256:9f3e037e70cbf51260d210c8a0fd0ca19dbe522d984e5df75d118c1cb6ba491e
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1.orig.tar.gz' makedev_2.3.1.orig.tar.gz 9924 SHA256:8599712f2b2b3778eea344f59e1512cea284e802560317fac436585885a41dfa
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1-93ubuntu1.diff.gz' makedev_2.3.1-93ubuntu1.diff.gz 50235 SHA256:1d505a73e743d1d6390ef66d6892007aaa36d4a4a7fab6987196381f9a743961
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

### `dpkg` source package: `ncurses=6.0+20160213-1ubuntu1`

Binary Packages:

- `libncurses5:amd64=6.0+20160213-1ubuntu1`
- `libncursesw5:amd64=6.0+20160213-1ubuntu1`
- `libtinfo5:amd64=6.0+20160213-1ubuntu1`
- `ncurses-base=6.0+20160213-1ubuntu1`
- `ncurses-bin=6.0+20160213-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20160213-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0+20160213-1ubuntu1.dsc' ncurses_6.0+20160213-1ubuntu1.dsc 4379 SHA256:16628fbe5a690f6f8d147a54d0ba6900a0afeaa51d318475781ce3f14df1ca79
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0+20160213.orig.tar.gz' ncurses_6.0+20160213.orig.tar.gz 3153008 SHA256:20269c2dd62a311b9a3fb9f25638d35a057a5ece5f8d6caf4e70a3da6f01082c
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0+20160213-1ubuntu1.debian.tar.xz' ncurses_6.0+20160213-1ubuntu1.debian.tar.xz 54496 SHA256:9551738e1bdc425d12897cc459ce5ce40b5e12530b144b731c0a7b3e077c07c7
```

### `dpkg` source package: `openssl=1.0.2g-1ubuntu4.5`

Binary Packages:

- `libssl1.0.0:amd64=1.0.2g-1ubuntu4.5`
- `openssl=1.0.2g-1ubuntu4.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `pcre3=2:8.38-3.1`

Binary Packages:

- `libpcre3:amd64=2:8.38-3.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.38-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38-3.1.dsc' pcre3_8.38-3.1.dsc 2074 SHA256:6a46bc62c33198fe38257f0dddecb4c534825f8f066bf88f2a45ad935b879885
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38.orig.tar.gz' pcre3_8.38.orig.tar.gz 2053336 SHA256:9883e419c336c63b0cb5202b09537c140966d585e4d0da66147dc513da13e629
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38-3.1.debian.tar.gz' pcre3_8.38-3.1.debian.tar.gz 32289 SHA256:9ee1b838c1de50cb5f6641016d0dd21b06f1038b9b7c3b1098e0a89b9c24b39f
```

### `dpkg` source package: `perl=5.22.1-9`

Binary Packages:

- `perl-base=5.22.1-9`

Licenses: (parsed from: `/usr/share/doc/perl-base/copyright`)

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
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.22.1-9
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1-9.dsc' perl_5.22.1-9.dsc 2351 SHA256:bbc9a0f7b17926621cf7324c265e633444d1f05022f42ae32190dbb960457217
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1.orig.tar.xz' perl_5.22.1.orig.tar.xz 11223940 SHA256:9e87317d693ce828095204be0d09af8d60b8785533fadea1a82b6f0e071e5c79
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1-9.debian.tar.xz' perl_5.22.1-9.debian.tar.xz 148292 SHA256:3368488e1d56e9ff69556a2e75cc50858414147afcf5d72f91dbfd71fb5d9127
```

### `dpkg` source package: `procps=2:3.3.10-4ubuntu2.3`

Binary Packages:

- `libprocps4:amd64=2:3.3.10-4ubuntu2.3`
- `procps=2:3.3.10-4ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/libprocps4/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.10-4ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10-4ubuntu2.3.dsc' procps_3.3.10-4ubuntu2.3.dsc 2268 SHA256:8605628078cbea5f91662b60c4f35ff969b7e0e5f4aa748e3831fd1aa78372ad
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10.orig.tar.xz' procps_3.3.10.orig.tar.xz 814816 SHA256:40a3d2b0489e057d85564f4f304083b24fc699b39ea828610183fb9f0a6ebe97
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10-4ubuntu2.3.debian.tar.xz' procps_3.3.10-4ubuntu2.3.debian.tar.xz 38516 SHA256:5434d3b406c8547db8f574f20ecc5c1be6efc55ce88bba954537b144e970ab56
```

### `dpkg` source package: `readline6=6.3-8ubuntu2`

Binary Packages:

- `libreadline6:amd64=6.3-8ubuntu2`
- `readline-common=6.3-8ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libreadline6/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline6=6.3-8ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3-8ubuntu2.dsc' readline6_6.3-8ubuntu2.dsc 2566 SHA256:3c7e3168dd1510f040325c1ab1e28c7fbde34d1a899005a98a894a9f27bd98f6
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3.orig.tar.gz' readline6_6.3.orig.tar.gz 2468560 SHA256:56ba6071b9462f980c5a72ab0023893b65ba6debb4eeb475d7a563dc65cafd43
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3-8ubuntu2.debian.tar.xz' readline6_6.3-8ubuntu2.debian.tar.xz 31232 SHA256:32d4f30dc92d79d722b04c2b678883245d2eccff2ed4f8591faebca7e6d81948
```

### `dpkg` source package: `sed=4.2.2-7`

Binary Packages:

- `sed=4.2.2-7`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris sed=4.2.2-7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2-7.dsc' sed_4.2.2-7.dsc 1974 SHA256:42f5764a279ac3f9b31d9e922024b519b950b35e82830e552839cd41fbb8e0b0
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2.orig.tar.bz2' sed_4.2.2.orig.tar.bz2 1059414 SHA256:f048d1838da284c8bc9753e4506b85a1e0cc1ea8999d36f6995bcb9460cddbd7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2-7.debian.tar.xz' sed_4.2.2-7.debian.tar.xz 85048 SHA256:416b70f601b40246c1daf7261f117ea9ff01564f574bd34871573fc5c9f74db7
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

### `dpkg` source package: `shadow=1:4.2-3.1ubuntu5`

Binary Packages:

- `login=1:4.2-3.1ubuntu5`
- `passwd=1:4.2-3.1ubuntu5`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.2-3.1ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.1ubuntu5.dsc' shadow_4.2-3.1ubuntu5.dsc 2458 SHA256:3da12b56933a7414f1b8f01a4b64d8d204a2a44bbca941bf033a8c206726fdac
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2.orig.tar.xz' shadow_4.2.orig.tar.xz 1088696 SHA256:c5bd72c4ecb438b99289e4630b22ea0626987a378d084910dbe59eceaa34be1d
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.1ubuntu5.debian.tar.xz' shadow_4.2-3.1ubuntu5.debian.tar.xz 504168 SHA256:7a18a238c463b562e69e9a3cd4e18d87212c7d68bc58e5f8ba31f3a7e33cad6e
```

### `dpkg` source package: `systemd=229-4ubuntu13`

Binary Packages:

- `libsystemd0:amd64=229-4ubuntu13`
- `libudev1:amd64=229-4ubuntu13`
- `systemd=229-4ubuntu13`
- `systemd-sysv=229-4ubuntu13`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`, `/usr/share/doc/systemd/copyright`, `/usr/share/doc/systemd-sysv/copyright`)

- `CC0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `sysvinit=2.88dsf-59.3ubuntu2`

Binary Packages:

- `initscripts=2.88dsf-59.3ubuntu2`
- `sysv-rc=2.88dsf-59.3ubuntu2`
- `sysvinit-utils=2.88dsf-59.3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/initscripts/copyright`, `/usr/share/doc/sysv-rc/copyright`, `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.3ubuntu2.dsc' sysvinit_2.88dsf-59.3ubuntu2.dsc 2284 SHA256:a64f0c2c11c14c8bf57fee7c583ae38ea710ec3288c3d840daeeec5a2eab1676
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.3ubuntu2.debian.tar.xz' sysvinit_2.88dsf-59.3ubuntu2.debian.tar.xz 134864 SHA256:d4cf7aa3d6c1f8727cbd699395053d541844a9ff02ea5e6a1119eb90604586b8
```

### `dpkg` source package: `tar=1.28-2.1ubuntu0.1`

Binary Packages:

- `tar=1.28-2.1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.28-2.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28-2.1ubuntu0.1.dsc' tar_1.28-2.1ubuntu0.1.dsc 2025 SHA256:b4ed109da748b893bfb036dd81251156181573659b35e506e5c8bc8c7c155fd4
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28.orig.tar.xz' tar_1.28.orig.tar.xz 1756440 SHA256:6da98f52fc469754dbde475c861581036ff2c83a1ef4f7250292935139f587d9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28-2.1ubuntu0.1.debian.tar.xz' tar_1.28-2.1ubuntu0.1.debian.tar.xz 36868 SHA256:1933bd564d70d3d0cf085291969af36b2461265270be25f3819cc033f72c1ac6
```

### `dpkg` source package: `tzdata=2016j-0ubuntu0.16.04`

Binary Packages:

- `tzdata=2016j-0ubuntu0.16.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2016j-0ubuntu0.16.04
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2016j-0ubuntu0.16.04.dsc' tzdata_2016j-0ubuntu0.16.04.dsc 2101 SHA256:dd4f19745f29bd94ecb8b829c0bac2f7f53fffba60c412a6b6566eda2385e372
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2016j.orig.tar.gz' tzdata_2016j.orig.tar.gz 321185 SHA256:f5ee4e0f115f6c2faee1c4b16193a97338cbd1b503f2cea6c5a768c82ff39dc8
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2016j-0ubuntu0.16.04.debian.tar.xz' tzdata_2016j-0ubuntu0.16.04.debian.tar.xz 99852 SHA256:1e7fe25c83e8e9ad635b6c1ca726a49d5fbe5668a90993927ccc1d47d26e62a1
```

### `dpkg` source package: `ubuntu-keyring=2012.05.19`

Binary Packages:

- `ubuntu-keyring=2012.05.19`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2012.05.19
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2012.05.19.dsc' ubuntu-keyring_2012.05.19.dsc 1542 SHA256:a98138a8ef99905330f7f1340d04f8a9104c8706243e4c694b46db7d11c89d16
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2012.05.19.tar.gz' ubuntu-keyring_2012.05.19.tar.gz 18495 SHA256:8b3bb00770c7b1e5c0abb215ecf8c383cb3b709292a52aeb1022b5556e768b69
```

### `dpkg` source package: `unzip=6.0-20ubuntu1`

Binary Packages:

- `unzip=6.0-20ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-20ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-20ubuntu1.dsc' unzip_6.0-20ubuntu1.dsc 1782 SHA256:b3a01c0cf67b19ae87c621f1362474283841a88e4388335dbe29dd331efb6814
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA256:036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37
'http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-20ubuntu1.debian.tar.xz' unzip_6.0-20ubuntu1.debian.tar.xz 19896 SHA256:0ddf122ef15b739e3ea06db4b9e80f40759dce23a2c886678881453a43bd0842
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-5.dsc' ustr_1.0.4-5.dsc 2016 SHA256:3c06f54e4c05e76bf7c4d7192bbf3a7b259372c7448a4245e8317115808cf7c9
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-5.debian.tar.xz' ustr_1.0.4-5.debian.tar.xz 24948 SHA256:a21e78acf82dcccef2893932ef7b85852419bfd9b18382e63c34e7710c1d7762
```

### `dpkg` source package: `util-linux=2.27.1-6ubuntu3.2`

Binary Packages:

- `bsdutils=1:2.27.1-6ubuntu3.2`
- `libblkid1:amd64=2.27.1-6ubuntu3.2`
- `libfdisk1:amd64=2.27.1-6ubuntu3.2`
- `libmount1:amd64=2.27.1-6ubuntu3.2`
- `libsmartcols1:amd64=2.27.1-6ubuntu3.2`
- `libuuid1:amd64=2.27.1-6ubuntu3.2`
- `mount=2.27.1-6ubuntu3.2`
- `util-linux=2.27.1-6ubuntu3.2`

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
$ apt-get source -qq --print-uris util-linux=2.27.1-6ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1-6ubuntu3.2.dsc' util-linux_2.27.1-6ubuntu3.2.dsc 3502 SHA256:2ca85a64e42875047c783ab11ebeaec3b964dec8006eccf2022fd1a76ed995f8
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1.orig.tar.xz' util-linux_2.27.1.orig.tar.xz 3964512 SHA256:0a818fcdede99aec43ffe6ca5b5388bff80d162f2f7bd4541dca94fecb87a290
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1-6ubuntu3.2.debian.tar.xz' util-linux_2.27.1-6ubuntu3.2.debian.tar.xz 83096 SHA256:09ee0f1807d240d71a821bc6306dc2d336962e442dc9803263143bff51a5d9f3
```

### `dpkg` source package: `wget=1.17.1-1ubuntu1.1`

Binary Packages:

- `wget=1.17.1-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.17.1-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.17.1-1ubuntu1.1.dsc' wget_1.17.1-1ubuntu1.1.dsc 1937 SHA256:7774757ad0c81b7a8f457862474d406a97a279d9b2cf6a20fc865620f3172f82
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.17.1.orig.tar.gz' wget_1.17.1.orig.tar.gz 3801442 SHA256:029fbb93bdc1c0c5a7507b6076a6ec2f8d34204a85aa87e5b2f61a9405b290f5
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.17.1-1ubuntu1.1.debian.tar.xz' wget_1.17.1-1ubuntu1.1.debian.tar.xz 24756 SHA256:bcb0c01483de14f6424e821ae4b614f2f8d219b4640bca648e4d4069037809fb
```

### `dpkg` source package: `xz-utils=5.1.1alpha+20120614-2ubuntu2`

Binary Packages:

- `liblzma5:amd64=5.1.1alpha+20120614-2ubuntu2`

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
$ apt-get source -qq --print-uris xz-utils=5.1.1alpha+20120614-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614-2ubuntu2.dsc' xz-utils_5.1.1alpha+20120614-2ubuntu2.dsc 2409 SHA256:0a8cb3d928d1327f70b998b713c10afd9cd064056f5973d48075cd3d0f7872ca
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614.orig.tar.gz' xz-utils_5.1.1alpha+20120614.orig.tar.gz 556454 SHA256:b168e63400db449a6e7b3a06e668f557ca27e3d70accbd29d2b5a98e15c00fee
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614-2ubuntu2.debian.tar.gz' xz-utils_5.1.1alpha+20120614-2ubuntu2.debian.tar.gz 156001 SHA256:e7743d4a96276ccffc4e171812e402a1f503f87df3b668ef0e58db6629146a18
```

### `dpkg` source package: `zlib=1:1.2.8.dfsg-2ubuntu4`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-2ubuntu4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.8.dfsg-2ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg-2ubuntu4.dsc' zlib_1.2.8.dfsg-2ubuntu4.dsc 2687 SHA256:c5e65d216f76cf8fd21ea637d88891b69f63085bb80df4fbacad14e2cd711fe8
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz' zlib_1.2.8.dfsg.orig.tar.gz 361943 SHA256:2caecc2c3f1ef8b87b8f72b128a03e61c307e8c14f5ec9b422ef7914ba75cf9f
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg-2ubuntu4.debian.tar.xz' zlib_1.2.8.dfsg-2ubuntu4.debian.tar.xz 15468 SHA256:7786e716ac9c26109819a8dd185142a98238c6261f4e32b3317b0ee95c9351de
```
