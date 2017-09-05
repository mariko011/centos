# `buildpack-deps:artful`

## Docker Metadata

- Image ID: `sha256:4079beb4263776ac0e13458812840b9fed8799a6d116bde63290b2b965a2170e`
- Created: `2017-08-28T23:27:47.739476877Z`
- Virtual Size: ~ 1.15 Gb  
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

### `dpkg` source package: `adwaita-icon-theme=3.25.91-0ubuntu1`

Binary Packages:

- `adwaita-icon-theme=3.25.91-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adwaita-icon-theme/copyright`)

- `CC-BY-3.0-US`
- `CC-BY-SA-2.0-IT`
- `CC-BY-SA-2.0-IT,`
- `CC-BY-SA-3.0`
- `CC-BY-SA-3.0-US`
- `CC-BY-SA-3.0-Unported`
- `GFDL-1.2`
- `GFDL-1.2+`
- `GPL`
- `GPL-unspecified`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris adwaita-icon-theme=3.25.91-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adwaita-icon-theme/adwaita-icon-theme_3.25.91-0ubuntu1.dsc' adwaita-icon-theme_3.25.91-0ubuntu1.dsc 2408 SHA256:a8564a185ed9c48b601b466f3b63a12e9d34068d7e34f5ea131ece8d69c980ef
'http://archive.ubuntu.com/ubuntu/pool/main/a/adwaita-icon-theme/adwaita-icon-theme_3.25.91.orig.tar.xz' adwaita-icon-theme_3.25.91.orig.tar.xz 20758856 SHA256:d64193c8f3f9e98bca0275cc384aa23d3ae493cd1a5228ac7d2016a2ee48f99b
'http://archive.ubuntu.com/ubuntu/pool/main/a/adwaita-icon-theme/adwaita-icon-theme_3.25.91-0ubuntu1.debian.tar.xz' adwaita-icon-theme_3.25.91-0ubuntu1.debian.tar.xz 30344 SHA256:89e9b3e3274a9f2f9a6ae251983aabd28ca6518e2fd18e35352a8e80e4698fcd
```

### `dpkg` source package: `apr-util=1.6.0-1`

Binary Packages:

- `libaprutil1:amd64=1.6.0-1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `atk1.0=2.25.90-0ubuntu1`

Binary Packages:

- `libatk1.0-0:amd64=2.25.90-0ubuntu1`
- `libatk1.0-data=2.25.90-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libatk1.0-0/copyright`, `/usr/share/doc/libatk1.0-data/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris atk1.0=2.25.90-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/atk1.0/atk1.0_2.25.90-0ubuntu1.dsc' atk1.0_2.25.90-0ubuntu1.dsc 2833 SHA256:f68d6615a9fa90cd68520d0cc579693de5ce2106db14dd8173b47ba400c14624
'http://archive.ubuntu.com/ubuntu/pool/main/a/atk1.0/atk1.0_2.25.90.orig.tar.xz' atk1.0_2.25.90.orig.tar.xz 710264 SHA256:22d54c0ee7930c5906ab7d98e8711276edd2297c83bfd250ce471ff5e23e6094
'http://archive.ubuntu.com/ubuntu/pool/main/a/atk1.0/atk1.0_2.25.90-0ubuntu1.debian.tar.xz' atk1.0_2.25.90-0ubuntu1.debian.tar.xz 10732 SHA256:ac09e694c57a9930058de5a241848b258cd59e5e3ac1c2cd237e2bf6cbe82885
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-11.dsc' autoconf_2.69-11.dsc 1948 SHA256:249d25370d4f4d1d0cf7b37bfd178bb6fa87011566dd82230991f64814a39dde
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-11.debian.tar.xz' autoconf_2.69-11.debian.tar.xz 23540 SHA256:885b3947fdead5b737f6437b80a90a41c5d611791573c5d0cfef50a59c943c1b
```

### `dpkg` source package: `automake-1.15=1:1.15-6ubuntu1`

Binary Packages:

- `automake=1:1.15-6ubuntu1`

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
$ apt-get source -qq --print-uris automake-1.15=1:1.15-6ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15-6ubuntu1.dsc' automake-1.15_1.15-6ubuntu1.dsc 2713 SHA256:5c3ff9afef9147cc4385f1cd71e3af9819b607e4a8f992d9e633e17e171945b9
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15.orig.tar.xz' automake-1.15_1.15.orig.tar.xz 1496708 SHA256:9908c75aabd49d13661d6dcb1bc382252d22cc77bf733a2d55e87f2aa2db8636
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15-6ubuntu1.debian.tar.xz' automake-1.15_1.15-6ubuntu1.debian.tar.xz 14052 SHA256:36ff69cc2484cbaa4fea990595cbca09f90d747e0f78fe3abf1464a3e3aac006
```

### `dpkg` source package: `autotools-dev=20161112.1`

Binary Packages:

- `autotools-dev=20161112.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20161112.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20161112.1.dsc' autotools-dev_20161112.1.dsc 1641 SHA256:2d55f69103b6d15043541c396ac3abd4e0d1b1d2c13a4d137f3fea277fccb21c
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20161112.1.tar.xz' autotools-dev_20161112.1.tar.xz 65304 SHA256:7c9405da28bbb4fc1d6d6ab9229920760b9120e5619c57cebfe594a555fd9894
```

### `dpkg` source package: `avahi=0.6.32-1ubuntu1`

Binary Packages:

- `libavahi-client3:amd64=0.6.32-1ubuntu1`
- `libavahi-common-data:amd64=0.6.32-1ubuntu1`
- `libavahi-common3:amd64=0.6.32-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.6.32-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32-1ubuntu1.dsc' avahi_0.6.32-1ubuntu1.dsc 4524 SHA256:195ac62ec73624add3ce9de280380e3afcdd8b4e5ce1e61525d8fa76ecb73549
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32.orig.tar.gz' avahi_0.6.32.orig.tar.gz 1297169 SHA256:d54991185d514a0aba54ebeb408d7575b60f5818a772e28fa0e18b98bc1db454
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32-1ubuntu1.debian.tar.xz' avahi_0.6.32-1ubuntu1.debian.tar.xz 32084 SHA256:e441694e2ae27544015ccf3d919350dbcc872698d56ebc731bdd30b4cc3ff349
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

### `dpkg` source package: `binutils=2.29-6ubuntu3`

Binary Packages:

- `binutils=2.29-6ubuntu3`
- `binutils-common:amd64=2.29-6ubuntu3`
- `binutils-x86-64-linux-gnu=2.29-6ubuntu3`
- `libbinutils:amd64=2.29-6ubuntu3`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `ca-certificates=20161130+nmu1`

Binary Packages:

- `ca-certificates=20161130+nmu1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `cairo=1.14.10-1`

Binary Packages:

- `libcairo-gobject2:amd64=1.14.10-1`
- `libcairo-script-interpreter2:amd64=1.14.10-1`
- `libcairo2:amd64=1.14.10-1`
- `libcairo2-dev=1.14.10-1`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.14.10-1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.14.10-1.dsc' cairo_1.14.10-1.dsc 2911 SHA256:cbf4833e1f08f98c9a83b2b8bab35122eaab79e86bb555022675e03dabff7ba0
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.14.10.orig.tar.xz' cairo_1.14.10.orig.tar.xz 36251788 SHA256:7e87878658f2c9951a14fc64114d4958c0e65ac47530b8ac3078b2ce41b66a09
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.14.10-1.debian.tar.xz' cairo_1.14.10-1.debian.tar.xz 28916 SHA256:5376d16fdfd80f65e9a1ac1d7e5614a22665bd8b0674c12d806f62a1e26f666c
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


### `dpkg` source package: `curl=7.52.1-5ubuntu1`

Binary Packages:

- `libcurl3-gnutls:amd64=7.52.1-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libcurl3-gnutls/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `curl=7.55.0-1ubuntu2`

Binary Packages:

- `curl=7.55.0-1ubuntu2`
- `libcurl3:amd64=7.55.0-1ubuntu2`
- `libcurl4-openssl-dev:amd64=7.55.0-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.55.0-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.55.0-1ubuntu2.dsc' curl_7.55.0-1ubuntu2.dsc 2756 SHA256:02b67a9f2111083035518a578c56b3b4d91839cbe7655187ae7ac071fa31c534
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.55.0.orig.tar.gz' curl_7.55.0.orig.tar.gz 3730165 SHA256:dae1b1be34f5983e8d46917f2bdbb2335aecd0e57f777f4c32213da6a8050a80
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.55.0-1ubuntu2.debian.tar.xz' curl_7.55.0-1ubuntu2.debian.tar.xz 31604 SHA256:8820779572ad69f977730768c0f35ecdd7563ce125745a4a85b3ea5258241683
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

### `dpkg` source package: `db-defaults=1:5.3.21~exp1ubuntu2`

Binary Packages:

- `libdb-dev:amd64=1:5.3.21~exp1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=1:5.3.21~exp1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21~exp1ubuntu2.dsc' db-defaults_5.3.21~exp1ubuntu2.dsc 2044 SHA256:1960179af0244d410f368653e32d594c8e9331e2046422d05c33edc7f0d248b6
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21~exp1ubuntu2.tar.xz' db-defaults_5.3.21~exp1ubuntu2.tar.xz 3032 SHA256:03c2bba2824a4f5042960a4712630e35d2cbf885a22d24f2b27b2ca28ad6f46a
```

### `dpkg` source package: `db5.3=5.3.28-13`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13`
- `libdb5.3-dev=5.3.28-13`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `dbus=1.10.22-1ubuntu1`

Binary Packages:

- `libdbus-1-3:amd64=1.10.22-1ubuntu1`

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
$ apt-get source -qq --print-uris dbus=1.10.22-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.10.22-1ubuntu1.dsc' dbus_1.10.22-1ubuntu1.dsc 3468 SHA256:03911958afb16c2e51b2e8bc131742217775447a03cf8d04437cc341151a7a4e
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.10.22.orig.tar.gz' dbus_1.10.22.orig.tar.gz 1989350 SHA256:e2b1401e3eedc7b5c9a2034d31254c886e1fcbc7858006e0a1c59158fe4b7b97
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.10.22-1ubuntu1.debian.tar.xz' dbus_1.10.22-1ubuntu1.debian.tar.xz 62824 SHA256:84463d388727dac86b6508330ff4cbe924b5c632889cf5078035a3527380fb38
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


### `dpkg` source package: `dh-python=2.20170125`

Binary Packages:

- `dh-python=2.20170125`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=2.20170125
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_2.20170125.dsc' dh-python_2.20170125.dsc 1908 SHA256:ef4f2951cea36ae4aac29126a1017505f98b595432fb5bdac0f21b4b4d72c1b4
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_2.20170125.tar.xz' dh-python_2.20170125.tar.xz 91332 SHA256:2e09c162ee2442a03511b7ebe83896e1e3c1df79ce97a22d2f8a8b4cfec9f1e3
```

### `dpkg` source package: `diffutils=1:3.5-3`

Binary Packages:

- `diffutils=1:3.5-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-7.dsc' djvulibre_3.5.27.1-7.dsc 2457 SHA256:986b49acc545cb0ed23d28131fc3b500c7e20b59c7b5f1e72b6829162426743f
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1.orig.tar.gz' djvulibre_3.5.27.1.orig.tar.gz 3231662 SHA256:77f07de3f1039aa19eba2eb3170d9ce9a0918ba7b704a59cfaf08f42fcc52144
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-7.debian.tar.xz' djvulibre_3.5.27.1-7.debian.tar.xz 54688 SHA256:a62829e71b4c8a4d2902c9cf9ca12816ad7d9541596b6042940791c42b551b9c
```

### `dpkg` source package: `dpkg=1.18.24ubuntu1`

Binary Packages:

- `dpkg=1.18.24ubuntu1`
- `dpkg-dev=1.18.24ubuntu1`
- `libdpkg-perl=1.18.24ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

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
- `libss2:amd64=1.43.4-2`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `e2fsprogs=1.43.5-1`

Binary Packages:

- `comerr-dev=2.1-1.43.5-1`
- `libcomerr2:amd64=1.43.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.43.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.43.5-1.dsc' e2fsprogs_1.43.5-1.dsc 2268 SHA256:640f69dbc83a9396d54577fc8b42256d6a33fbf3593ba649c816e1e1e6a90538
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.43.5.orig.tar.gz' e2fsprogs_1.43.5.orig.tar.gz 7602348 SHA256:ee0f36d11b05baff4005d2bedde01ddd521251712e518b3bf398c7e389493f9a
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.43.5.orig.tar.gz.asc' e2fsprogs_1.43.5.orig.tar.gz.asc 488 SHA256:2ecaecb2a72eb19d2cb049617d11ee20602202e196aed710f905a75442fecaa4
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.43.5-1.debian.tar.xz' e2fsprogs_1.43.5-1.debian.tar.xz 76556 SHA256:941f30978f7320930b9efb4cf7dda89c96bfbb84a4c46eccb88d4afab6dac64f
```

### `dpkg` source package: `elfutils=0.166-2ubuntu1`

Binary Packages:

- `libelf1:amd64=0.166-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.166-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.166-2ubuntu1.dsc' elfutils_0.166-2ubuntu1.dsc 2538 SHA256:585ec84ab744cdf41bfc30e89b28bf9a0e549d9b90902021a8626be88515df5c
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.166.orig.tar.bz2' elfutils_0.166.orig.tar.bz2 6496225 SHA256:3c056914c8a438b210be0d790463b960fc79d234c3f05ce707cbff80e94cba30
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.166.orig.tar.bz2.asc' elfutils_0.166.orig.tar.bz2.asc 479 SHA256:81a30e6ed226960d76d7bdbf5b1a65751ce48cf39a209fa5b820932b64e9d18b
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.166-2ubuntu1.debian.tar.xz' elfutils_0.166-2ubuntu1.debian.tar.xz 39044 SHA256:ebfdbc4f354b1deaa16fb9d735bdfede611ceaae664767c631bd0e7229d1bb57
```

### `dpkg` source package: `expat=2.2.3-1`

Binary Packages:

- `libexpat1:amd64=2.2.3-1`
- `libexpat1-dev:amd64=2.2.3-1`

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

### `dpkg` source package: `fftw3=3.3.6p2-1`

Binary Packages:

- `libfftw3-double3:amd64=3.3.6p2-1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.6p2-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.6p2-1.dsc' fftw3_3.3.6p2-1.dsc 2955 SHA256:569034047af1f76e24c606781532128d2417f406e3e2b3e1ef8573a324cebef4
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.6p2.orig.tar.gz' fftw3_3.3.6p2.orig.tar.gz 4185261 SHA256:a5de35c5c824a78a058ca54278c706cdf3d4abba1c56b63531c2cb05f5d57da2
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.6p2-1.debian.tar.xz' fftw3_3.3.6p2-1.debian.tar.xz 12936 SHA256:a425f131b42e114c4208aed96e89f6c840e821beae289c116549cdaf38dc6ebe
```

### `dpkg` source package: `file=1:5.31-1`

Binary Packages:

- `file=1:5.31-1`
- `libmagic-mgc=1:5.31-1`
- `libmagic1:amd64=1:5.31-1`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.31-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.31-1.dsc' file_5.31-1.dsc 2124 SHA256:fb65b94e43cbfe547cc14fa9f61c8b207bb67f7686551e7c93e4ec282cf909c3
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.31.orig.tar.xz' file_5.31.orig.tar.xz 580708 SHA256:d3c268e2fda583de37a8cfbcd454c49fbc319d3006c24253253566480c802618
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.31-1.debian.tar.xz' file_5.31-1.debian.tar.xz 32032 SHA256:2705d3c9e8f3634d00b2b453eb63709dadf1e34e06cfbd90526a4f6183138bae
```

### `dpkg` source package: `findutils=4.6.0+git+20170606-3`

Binary Packages:

- `findutils=4.6.0+git+20170606-3`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `fontconfig=2.11.94-0ubuntu2`

Binary Packages:

- `fontconfig=2.11.94-0ubuntu2`
- `fontconfig-config=2.11.94-0ubuntu2`
- `libfontconfig1:amd64=2.11.94-0ubuntu2`
- `libfontconfig1-dev:amd64=2.11.94-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.11.94-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.94-0ubuntu2.dsc' fontconfig_2.11.94-0ubuntu2.dsc 2279 SHA256:3b8ed29b78d8418e1d7020029124429180dc2bba9878d562e48121e652e19e9a
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.94.orig.tar.bz2' fontconfig_2.11.94.orig.tar.bz2 1567540 SHA256:d763c024df434146f3352448bc1f4554f390c8a48340cef7aa9cc44716a159df
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.94-0ubuntu2.debian.tar.xz' fontconfig_2.11.94-0ubuntu2.debian.tar.xz 27932 SHA256:1d6ac07366236d37ed2994a144fc6598020d4c934c4eefe70a87601014cfcb0d
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.dsc' fonts-dejavu_2.37-1.dsc 2575 SHA256:f35ff7b2c8dbfda6564c9dedf088ba06cc6d279fdd8e7cccbd1ae08ded1bb71c
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA256:4b21c5203f792343d5e90ab1cb0cf07e99887218abe3d83cd9a98cea9085e799
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.debian.tar.xz' fonts-dejavu_2.37-1.debian.tar.xz 10424 SHA256:5105cdbfc086f4a83ab6871eb39cc904bf02aa52762402b7cacf33d0938122f7
```

### `dpkg` source package: `freetype=2.8-0.2ubuntu1`

Binary Packages:

- `libfreetype6:amd64=2.8-0.2ubuntu1`
- `libfreetype6-dev:amd64=2.8-0.2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`, `/usr/share/doc/libfreetype6-dev/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `Catharon-OSL`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GZip`
- `OpenGroup-BSD-like`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `gcc-7=7.2.0-1ubuntu2`

Binary Packages:

- `cpp-7=7.2.0-1ubuntu2`
- `g++-7=7.2.0-1ubuntu2`
- `gcc-7=7.2.0-1ubuntu2`
- `gcc-7-base:amd64=7.2.0-1ubuntu2`
- `libasan4:amd64=7.2.0-1ubuntu2`
- `libatomic1:amd64=7.2.0-1ubuntu2`
- `libcc1-0:amd64=7.2.0-1ubuntu2`
- `libcilkrts5:amd64=7.2.0-1ubuntu2`
- `libgcc-7-dev:amd64=7.2.0-1ubuntu2`
- `libgcc1:amd64=1:7.2.0-1ubuntu2`
- `libgomp1:amd64=7.2.0-1ubuntu2`
- `libitm1:amd64=7.2.0-1ubuntu2`
- `liblsan0:amd64=7.2.0-1ubuntu2`
- `libmpx2:amd64=7.2.0-1ubuntu2`
- `libquadmath0:amd64=7.2.0-1ubuntu2`
- `libstdc++-7-dev:amd64=7.2.0-1ubuntu2`
- `libstdc++6:amd64=7.2.0-1ubuntu2`
- `libtsan0:amd64=7.2.0-1ubuntu2`
- `libubsan0:amd64=7.2.0-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/cpp-7/copyright`, `/usr/share/doc/g++-7/copyright`, `/usr/share/doc/gcc-7/copyright`, `/usr/share/doc/gcc-7-base/copyright`, `/usr/share/doc/libasan4/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-7-dev/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-7-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `gcc-defaults=1.171ubuntu3`

Binary Packages:

- `cpp=4:7.1.0-1ubuntu3`
- `g++=4:7.1.0-1ubuntu3`
- `gcc=4:7.1.0-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.171ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.171ubuntu3.dsc' gcc-defaults_1.171ubuntu3.dsc 10984 SHA256:4a6a037cf425ea3b95b3710e8c60afd10f24bfd18fe9f6328c39bf75baab7dca
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.171ubuntu3.tar.gz' gcc-defaults_1.171ubuntu3.tar.gz 204946 SHA256:088860725b81e70a7568072c6cdd86a54577a8ce2cac0fb64520f14ab2abea2c
```

### `dpkg` source package: `gdbm=1.8.3-14`

Binary Packages:

- `libgdbm-dev:amd64=1.8.3-14`
- `libgdbm3:amd64=1.8.3-14`

Licenses: (parsed from: `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-14
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-14.dsc' gdbm_1.8.3-14.dsc 1841 SHA256:312d3d28e287d287ee66e8ae3f25769676b1680ec1adc8c0815b5e9808405b13
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-14.debian.tar.xz' gdbm_1.8.3-14.debian.tar.xz 15308 SHA256:1c0570dd53947ea5980111f51b67356d647c4f21c502443b02397041dde0bf31
```

### `dpkg` source package: `gdk-pixbuf=2.36.5-3`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.36.5-3`
- `libgdk-pixbuf2.0-0:amd64=2.36.5-3`
- `libgdk-pixbuf2.0-common=2.36.5-3`
- `libgdk-pixbuf2.0-dev=2.36.5-3`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-dev/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.36.5-3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.5-3.dsc' gdk-pixbuf_2.36.5-3.dsc 2894 SHA256:0838fe3c6882e3204b8536c4f377a3e88d5c29d885a209cd5e545470c8826542
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.5.orig.tar.xz' gdk-pixbuf_2.36.5.orig.tar.xz 5165640 SHA256:7ace06170291a1f21771552768bace072ecdea9bd4a02f7658939b9a314c40fc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.5-3.debian.tar.xz' gdk-pixbuf_2.36.5-3.debian.tar.xz 14384 SHA256:209ea2dadbf91e77f5b18c1133357398253247555d9e035f4114cb7b08480888
```

### `dpkg` source package: `geoip=1.6.11-2`

Binary Packages:

- `geoip-bin=1.6.11-2`
- `libgeoip-dev=1.6.11-2`
- `libgeoip1:amd64=1.6.11-2`

Licenses: (parsed from: `/usr/share/doc/geoip-bin/copyright`, `/usr/share/doc/libgeoip-dev/copyright`, `/usr/share/doc/libgeoip1/copyright`)

- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris geoip=1.6.11-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/geoip/geoip_1.6.11-2.dsc' geoip_1.6.11-2.dsc 1859 SHA256:773d289b9856e669045dce915da275042300968cef5b9dd8d1f4e9b7b017c39d
'http://archive.ubuntu.com/ubuntu/pool/main/g/geoip/geoip_1.6.11.orig.tar.gz' geoip_1.6.11.orig.tar.gz 161934 SHA256:8859cb7c9cb63e77f4aedb40a4622024359b956b251aba46b255acbe190c34e0
'http://archive.ubuntu.com/ubuntu/pool/main/g/geoip/geoip_1.6.11-2.debian.tar.xz' geoip_1.6.11-2.debian.tar.xz 22248 SHA256:ffef6c4b1ce9f0f35bb5e7b3bf778d60b68aa2e25b1a1095edc5e9516e87c686
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `glib2.0=2.53.6-1ubuntu1`

Binary Packages:

- `libglib2.0-0:amd64=2.53.6-1ubuntu1`
- `libglib2.0-bin=2.53.6-1ubuntu1`
- `libglib2.0-data=2.53.6-1ubuntu1`
- `libglib2.0-dev:amd64=2.53.6-1ubuntu1`
- `libglib2.0-dev-bin=2.53.6-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.53.6-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.53.6-1ubuntu1.dsc' glib2.0_2.53.6-1ubuntu1.dsc 3430 SHA256:5839288adfbbfca82858b8ad2c9b59b2c95982edee3691424074f530a22ebad3
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.53.6.orig.tar.xz' glib2.0_2.53.6.orig.tar.xz 7805744 SHA256:e01296a9119c09d2dccb37ad09f5eaa1e0c5570a473d8fed04fc759ace6fb6cc
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.53.6-1ubuntu1.debian.tar.xz' glib2.0_2.53.6-1ubuntu1.debian.tar.xz 74372 SHA256:f1dc4d933bb05f2408e6b5d620d66ac470ae0cb1eb6e4fcf7206b393742945e4
```

### `dpkg` source package: `glibc=2.24-12ubuntu1`

Binary Packages:

- `libc-bin=2.24-12ubuntu1`
- `libc-dev-bin=2.24-12ubuntu1`
- `libc6:amd64=2.24-12ubuntu1`
- `libc6-dev:amd64=2.24-12ubuntu1`
- `multiarch-support=2.24-12ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

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


### `dpkg` source package: `gobject-introspection=1.53.2-4`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.53.2-4`
- `gir1.2-glib-2.0:amd64=1.53.2-4`
- `libgirepository-1.0-1:amd64=1.53.2-4`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.53.2-4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.53.2-4.dsc' gobject-introspection_1.53.2-4.dsc 2968 SHA256:bd682c7ed532dedbfe915f8c343047badf75e9b86b72769699b187bfbc05bd14
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.53.2.orig.tar.xz' gobject-introspection_1.53.2.orig.tar.xz 1390204 SHA256:7c2122a3423bf7b284374c4883844b4eb25741f6d9d3326ab55f7869b43a80f4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.53.2-4.debian.tar.xz' gobject-introspection_1.53.2-4.debian.tar.xz 20724 SHA256:633cce00310e3549bb2ebb114c50278363b7155cbee9cfb5c141048be0ab3784
```

### `dpkg` source package: `graphite2=1.3.10-2`

Binary Packages:

- `libgraphite2-3:amd64=1.3.10-2`

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

Source:

```console
$ apt-get source -qq --print-uris graphite2=1.3.10-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10-2.dsc' graphite2_1.3.10-2.dsc 2160 SHA256:f1ef7bcf647a4079f249441881136e35f660200d01d1f2c1fe0107e3590d8a95
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10.orig.tar.gz' graphite2_1.3.10.orig.tar.gz 3889647 SHA256:90fde3b2f9ea95d68ffb19278d07d9b8a7efa5ba0e413bebcea802ce05cda1ae
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10-2.debian.tar.xz' graphite2_1.3.10-2.debian.tar.xz 10440 SHA256:b6f2b7cfe53661117a39d94b1af2b91738207ace933e05878e0dd870582df84e
```

### `dpkg` source package: `graphviz=2.38.0-16ubuntu2`

Binary Packages:

- `libcdt5=2.38.0-16ubuntu2`
- `libcgraph6=2.38.0-16ubuntu2`
- `libgraphviz-dev=2.38.0-16ubuntu2`
- `libgvc6=2.38.0-16ubuntu2`
- `libgvc6-plugins-gtk=2.38.0-16ubuntu2`
- `libgvpr2=2.38.0-16ubuntu2`
- `libpathplan4=2.38.0-16ubuntu2`
- `libxdot4=2.38.0-16ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libcdt5/copyright`, `/usr/share/doc/libcgraph6/copyright`, `/usr/share/doc/libgraphviz-dev/copyright`, `/usr/share/doc/libgvc6/copyright`, `/usr/share/doc/libgvc6-plugins-gtk/copyright`, `/usr/share/doc/libgvpr2/copyright`, `/usr/share/doc/libpathplan4/copyright`, `/usr/share/doc/libxdot4/copyright`)

- `EPL-1.0`
- `MIT`
- `X/MIT`
- `zlib-style`

Source:

```console
$ apt-get source -qq --print-uris graphviz=2.38.0-16ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphviz/graphviz_2.38.0-16ubuntu2.dsc' graphviz_2.38.0-16ubuntu2.dsc 3323 SHA256:cc4366c432dbcc3f47e60e68c4697c47db1616c8ab7867e71efd731d7f5be99b
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphviz/graphviz_2.38.0.orig.tar.gz' graphviz_2.38.0.orig.tar.gz 25848858 SHA256:81aa238d9d4a010afa73a9d2a704fc3221c731e1e06577c2ab3496bdef67859e
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphviz/graphviz_2.38.0-16ubuntu2.debian.tar.xz' graphviz_2.38.0-16ubuntu2.debian.tar.xz 43292 SHA256:becfd63f68b9721ecc84faca43c1f058b8c46ef896a64a0956f35a5b9b340b38
```

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

### `dpkg` source package: `gtk+2.0=2.24.31-2ubuntu1`

Binary Packages:

- `libgtk2.0-0:amd64=2.24.31-2ubuntu1`
- `libgtk2.0-common=2.24.31-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgtk2.0-0/copyright`, `/usr/share/doc/libgtk2.0-common/copyright`)

- `LGPL-2`
- `other`

Source:

```console
$ apt-get source -qq --print-uris gtk+2.0=2.24.31-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk+2.0/gtk+2.0_2.24.31-2ubuntu1.dsc' gtk+2.0_2.24.31-2ubuntu1.dsc 4034 SHA256:3f508b8245c0d5f527df7c654de4735cd53e15c9afa711e0fbdffbf86b3ab829
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk+2.0/gtk+2.0_2.24.31.orig.tar.xz' gtk+2.0_2.24.31.orig.tar.xz 12805344 SHA256:68c1922732c7efc08df4656a5366dcc3afdc8791513400dac276009b40954658
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk+2.0/gtk+2.0_2.24.31-2ubuntu1.debian.tar.xz' gtk+2.0_2.24.31-2ubuntu1.debian.tar.xz 107156 SHA256:967bf923d0c2e04997075042d474d9ae35947ca18b89fc976a0e7cc049ef2b7f
```

### `dpkg` source package: `gtk+3.0=3.22.19-0ubuntu1`

Binary Packages:

- `gtk-update-icon-cache=3.22.19-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gtk-update-icon-cache/copyright`)

- `Apache-2.0`
- `Expat`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `other`

Source:

```console
$ apt-get source -qq --print-uris gtk+3.0=3.22.19-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk+3.0/gtk+3.0_3.22.19-0ubuntu1.dsc' gtk+3.0_3.22.19-0ubuntu1.dsc 4182 SHA256:20d8911786c379fa2662505422de3b06a66acba5a21922ae50557356761112fc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk+3.0/gtk+3.0_3.22.19.orig.tar.xz' gtk+3.0_3.22.19.orig.tar.xz 18841024 SHA256:9883d3ca5244f9b3168ce660e87d52900e141d0f7147dea0640bdd6fe8e5166c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gtk+3.0/gtk+3.0_3.22.19-0ubuntu1.debian.tar.xz' gtk+3.0_3.22.19-0ubuntu1.debian.tar.xz 176988 SHA256:7d61c61d61c5c75711098fdcbdb7b421023acc6baab74c99ab56d3728f0ef1ac
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

### `dpkg` source package: `harfbuzz=1.4.2-1`

Binary Packages:

- `libharfbuzz0b:amd64=1.4.2-1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.4.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.4.2-1.dsc' harfbuzz_1.4.2-1.dsc 2655 SHA256:48379f7aee8abee1b869745e12607ba81b02a3adf23b100558804f881dc5c9f1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.4.2.orig.tar.bz2' harfbuzz_1.4.2.orig.tar.bz2 1446752 SHA256:8f234dcfab000fdec24d43674fffa2fdbdbd654eb176afbde30e8826339cb7b3
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.4.2-1.debian.tar.xz' harfbuzz_1.4.2-1.debian.tar.xz 8436 SHA256:f72ed9a6392e66816264c4f04a7926ec747a2a7b8eaf7ed1faf0bdacc788cf51
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

### `dpkg` source package: `hicolor-icon-theme=0.15-1`

Binary Packages:

- `hicolor-icon-theme=0.15-1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.15-1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.15-1.dsc' hicolor-icon-theme_0.15-1.dsc 1588 SHA256:14450b4a0230793c4ba07d8aa87c657bdae60ae440f211fc693fdeb9fc3420d0
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.15.orig.tar.xz' hicolor-icon-theme_0.15.orig.tar.xz 51056 SHA256:9cc45ac3318c31212ea2d8cb99e64020732393ee7630fa6c1810af5f987033cc
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.15-1.debian.tar.xz' hicolor-icon-theme_0.15-1.debian.tar.xz 3524 SHA256:e11a79b49ba145e0c6985288abdf99447e4ff98bbb105eff82b402b55b99e0e2
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

### `dpkg` source package: `humanity-icon-theme=0.6.13`

Binary Packages:

- `humanity-icon-theme=0.6.13`

Licenses: (parsed from: `/usr/share/doc/humanity-icon-theme/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris humanity-icon-theme=0.6.13
'http://archive.ubuntu.com/ubuntu/pool/main/h/humanity-icon-theme/humanity-icon-theme_0.6.13.dsc' humanity-icon-theme_0.6.13.dsc 1607 SHA256:e24aca543b51d7c9e9c52211b8fb24ac71afb1143db29df2245010f63ac70bea
'http://archive.ubuntu.com/ubuntu/pool/main/h/humanity-icon-theme/humanity-icon-theme_0.6.13.tar.xz' humanity-icon-theme_0.6.13.tar.xz 1804180 SHA256:fbc20e8b347b82404f78c56d9f3e1baf01de8e1c9bf6cc72f5fe78157e6a9acf
```

### `dpkg` source package: `icu=57.1-6`

Binary Packages:

- `icu-devtools=57.1-6`
- `libicu-dev=57.1-6`
- `libicu57:amd64=57.1-6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=57.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_57.1-6.dsc' icu_57.1-6.dsc 2105 SHA256:6d3979c7e13e23d4de31e0ff3b83c34e4824e4982cfed9887b21ab6b6c272e6b
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_57.1.orig.tar.gz' icu_57.1.orig.tar.gz 22360664 SHA256:ff8c67cb65949b1e7808f2359f2b80f722697048e90e7cfc382ec1fe229e9581
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_57.1-6.debian.tar.xz' icu_57.1-6.debian.tar.xz 32768 SHA256:9c1239e6c395aa44880617a8f67f1f9936a9536ad0c85b8c0ceedf4c0bf40819
```

### `dpkg` source package: `ilmbase=2.2.0-11ubuntu2`

Binary Packages:

- `libilmbase-dev=2.2.0-11ubuntu2`
- `libilmbase12:amd64=2.2.0-11ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libilmbase-dev/copyright`, `/usr/share/doc/libilmbase12/copyright`)

- `boost`
- `ilmbase`

Source:

```console
$ apt-get source -qq --print-uris ilmbase=2.2.0-11ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.dsc' ilmbase_2.2.0-11ubuntu2.dsc 2099 SHA256:894cddbe71ecaa8be9d1a348962270882dbe6c339f65e6b702db2fa07d4c9c2d
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0.orig.tar.gz' ilmbase_2.2.0.orig.tar.gz 525289 SHA256:ecf815b60695555c1fbc73679e84c7c9902f4e8faa6e8000d2f905b8b86cedc7
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.debian.tar.xz' ilmbase_2.2.0-11ubuntu2.debian.tar.xz 13400 SHA256:400b77a32f7a04d78ff0462f32dc1e4073f5e1225ed070c63fa6a0ec619905c5
```

### `dpkg` source package: `imagemagick=8:6.9.7.4+dfsg-16ubuntu2`

Binary Packages:

- `imagemagick=8:6.9.7.4+dfsg-16ubuntu2`
- `imagemagick-6-common=8:6.9.7.4+dfsg-16ubuntu2`
- `imagemagick-6.q16=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickcore-6-arch-config:amd64=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickcore-6-headers=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickcore-6.q16-3:amd64=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickcore-6.q16-3-extra:amd64=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickcore-6.q16-dev:amd64=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickcore-dev=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickwand-6-headers=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickwand-6.q16-3:amd64=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickwand-6.q16-dev:amd64=8:6.9.7.4+dfsg-16ubuntu2`
- `libmagickwand-dev=8:6.9.7.4+dfsg-16ubuntu2`

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
$ apt-get source -qq --print-uris imagemagick=8:6.9.7.4+dfsg-16ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.9.7.4+dfsg-16ubuntu2.dsc' imagemagick_6.9.7.4+dfsg-16ubuntu2.dsc 5212 SHA256:d1ca521acdf93dd687aafba46ac5fa9032eef43fba48e686f8f859454f1372d5
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.9.7.4+dfsg.orig.tar.xz' imagemagick_6.9.7.4+dfsg.orig.tar.xz 8929800 SHA256:47fb2cdd26f5913318c4504f16ea363e04d1f400dda9ec52e461ab661d724026
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.9.7.4+dfsg-16ubuntu2.debian.tar.xz' imagemagick_6.9.7.4+dfsg-16ubuntu2.debian.tar.xz 257256 SHA256:c13d68beeb3f1c746732418c1b5791d83e66f8fee721baa9cc0537e1a934fb93
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
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.18-1.dsc' isl_0.18-1.dsc 1882 SHA256:aed8295d019805686fd795652d930b1440bc0ae3be4373332d97784645d7c583
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.18.orig.tar.xz' isl_0.18.orig.tar.xz 1475708 SHA256:0f35051cc030b87c673ac1f187de40e386a1482a0cfdf2c552dd6031b307ddc4
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.18-1.debian.tar.xz' isl_0.18-1.debian.tar.xz 21860 SHA256:eac951311a871bb6d7886c98068290f771aaf78616516855b472d2500b84f53c
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1.dsc' jbigkit_2.1-3.1.dsc 1299 SHA256:62c8812d508958c5d35f2b1579dc3052fb5bd8d2e77d023fad064c4b48c8c3f8
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1.debian.tar.xz' jbigkit_2.1-3.1.debian.tar.xz 7600 SHA256:ebc3c52deaf37d52baea54d648a713640dc262926abda7bf05cd08e7db5dd1ee
```

### `dpkg` source package: `jquery=3.1.1-2`

Binary Packages:

- `libjs-jquery=3.1.1-2`

Licenses: (parsed from: `/usr/share/doc/libjs-jquery/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris jquery=3.1.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/j/jquery/jquery_3.1.1-2.dsc' jquery_3.1.1-2.dsc 2111 SHA256:55c20d0637a4d3fd17c5c4b4a47edbda930c06865023277cfad74ab23004dd0d
'http://archive.ubuntu.com/ubuntu/pool/main/j/jquery/jquery_3.1.1.orig.tar.gz' jquery_3.1.1.orig.tar.gz 410492 SHA256:9fa7fe0ff812732dbef26e53431091e260f457fb56abf3964b92e521343268f3
'http://archive.ubuntu.com/ubuntu/pool/main/j/jquery/jquery_3.1.1-2.debian.tar.xz' jquery_3.1.1-2.debian.tar.xz 8652 SHA256:53ef4bd5f274373099885467fc7aec725acca37eaf898bbf766715a161918cb7
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

- `krb5-multidev=1.15.1-2`
- `libgssapi-krb5-2:amd64=1.15.1-2`
- `libgssrpc4:amd64=1.15.1-2`
- `libk5crypto3:amd64=1.15.1-2`
- `libkadm5clnt-mit11:amd64=1.15.1-2`
- `libkadm5srv-mit11:amd64=1.15.1-2`
- `libkdb5-8:amd64=1.15.1-2`
- `libkrb5-3:amd64=1.15.1-2`
- `libkrb5-dev=1.15.1-2`
- `libkrb5support0:amd64=1.15.1-2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit11/copyright`, `/usr/share/doc/libkadm5srv-mit11/copyright`, `/usr/share/doc/libkdb5-8/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.15.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.15.1-2.dsc' krb5_1.15.1-2.dsc 3294 SHA256:717416ea51edbfd2555568631e700c15cce1244f730a97d317288ab0be20d43a
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.15.1.orig.tar.gz' krb5_1.15.1.orig.tar.gz 9375538 SHA256:437c8831ddd5fde2a993fef425dedb48468109bb3d3261ef838295045a89eb45
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.15.1-2.debian.tar.xz' krb5_1.15.1-2.debian.tar.xz 143404 SHA256:e44c17efbf26e5d2a3de7577a039085683efe21afb0da3eacc12c17dc01e9d1a
```

### `dpkg` source package: `lcms2=2.7-1ubuntu1`

Binary Packages:

- `liblcms2-2:amd64=2.7-1ubuntu1`
- `liblcms2-dev:amd64=2.7-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.7-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.7-1ubuntu1.dsc' lcms2_2.7-1ubuntu1.dsc 2089 SHA256:88bf97e10fbd0c7011670bfd272dc2dea1ec6a1e58be593568c0211f2b2924ae
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.7.orig.tar.gz' lcms2_2.7.orig.tar.gz 6497867 SHA256:4524234ae7de185e6b6da5d31d6875085b2198bc63b1211f7dde6e2d197d6a53
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.7-1ubuntu1.debian.tar.xz' lcms2_2.7-1ubuntu1.debian.tar.xz 11928 SHA256:5246929c6f71d4f767439139ca0bde6667654c734f8d40a94786dd1f4cd54c2d
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
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.6-1.dsc' libbsd_0.8.6-1.dsc 2218 SHA256:5a946851fc41ccf8b9d4e501b1959a35937a9ae0ca0fdef22a944aa0efdf887f
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.6.orig.tar.xz' libbsd_0.8.6.orig.tar.xz 371112 SHA256:467fbf9df1f49af11f7f686691057c8c0a7613ae5a870577bef9155de39f9687
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.6.orig.tar.xz.asc' libbsd_0.8.6.orig.tar.xz.asc 833 SHA256:8b579470e8249b2ad24134989cc77404e3620e8ccda3d57650cfbcc7c50c26ce
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.8.6-1.debian.tar.xz' libbsd_0.8.6-1.debian.tar.xz 15624 SHA256:eb1b5b2d4ef96ce6de8e97ed9169be9fdc4336e057ae3e1b5970f777773e10ad
```

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

### `dpkg` source package: `libcroco=0.6.12-1`

Binary Packages:

- `libcroco3:amd64=0.6.12-1`

Licenses: (parsed from: `/usr/share/doc/libcroco3/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcroco=0.6.12-1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.12-1.dsc' libcroco_0.6.12-1.dsc 2289 SHA256:963f0f4235d7fa3ba79bb9675ec836bcb2430e6adb1072e0f66ba17a1ba06994
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.12.orig.tar.xz' libcroco_0.6.12.orig.tar.xz 482028 SHA256:ddc4b5546c9fb4280a5017e2707fbd4839034ed1aba5b7d4372212f34f84f860
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.12-1.debian.tar.xz' libcroco_0.6.12-1.debian.tar.xz 7988 SHA256:179700f1a51ebdb786e071d4f189e3725ac818a9105cfad896659a71c71751b0
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10-5.dsc' libdatrie_0.2.10-5.dsc 2214 SHA256:b81e48b6393d1d7a69d149cfa152990c840d62241c76ed9ca5cb07c588f714eb
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10.orig.tar.xz' libdatrie_0.2.10.orig.tar.xz 294380 SHA256:180eff7b0309ca19a02d5864e744185d715f021398a096fec6cf960f8ebfaa2b
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10-5.debian.tar.xz' libdatrie_0.2.10-5.debian.tar.xz 7608 SHA256:24031d8a2c1003ba1895cc1179c4d30563d90555a39a3a4cdb4b1290d4a1a4bf
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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.8-stable-4.dsc' libevent_2.1.8-stable-4.dsc 2328 SHA256:4d2c3f7943219dd13ae711c6d3e8589c6211d2cec15c18ccfd1d1426542519b0
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.8-stable.orig.tar.gz' libevent_2.1.8-stable.orig.tar.gz 1026485 SHA256:965cc5a8bb46ce4199a47e9b2c9e1cae3b137e8356ffdad6d94d3b9069b71dc2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.8-stable-4.debian.tar.xz' libevent_2.1.8-stable-4.debian.tar.xz 12060 SHA256:c1334029455256b62e201ba333a8616a1709e0f3caada753d35376b88aca2d5e
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-2.dsc' libexif_0.6.21-2.dsc 2053 SHA256:284942bcd7656949a383f2ee775babb20b50781c30d915b34fe272220f997ea6
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21.orig.tar.gz' libexif_0.6.21.orig.tar.gz 2081615 SHA256:edb7eb13664cf950a6edd132b75e99afe61c5effe2f16494e6d27bc404b287bf
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-2.debian.tar.xz' libexif_0.6.21-2.debian.tar.xz 8628 SHA256:648796d86b17567fb13dd356fc18c4b164b5a598853964d15beb9a32ec1253d8
```

### `dpkg` source package: `libffi=3.2.1-6`

Binary Packages:

- `libffi-dev:amd64=3.2.1-6`
- `libffi6:amd64=3.2.1-6`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi6/copyright`)

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

### `dpkg` source package: `libgd2=2.2.4-2ubuntu1`

Binary Packages:

- `libgd3:amd64=2.2.4-2ubuntu1`

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
$ apt-get source -qq --print-uris libgd2=2.2.4-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.2.4-2ubuntu1.dsc' libgd2_2.2.4-2ubuntu1.dsc 2256 SHA256:1fc0f8aec8e8f22ccbb743fb88fd3f078300bbde26c6fd0e0ff851423eef52d3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.2.4.orig.tar.xz' libgd2_2.2.4.orig.tar.xz 2478528 SHA256:137f13a7eb93ce72e32ccd7cebdab6874f8cf7ddf31d3a455a68e016ecd9e4e6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.2.4-2ubuntu1.debian.tar.xz' libgd2_2.2.4-2ubuntu1.debian.tar.xz 38228 SHA256:85298f7d3e0877a9d980939a6570c3c3dbc3058ff8006fb2918f01090c7dd79b
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

### `dpkg` source package: `libice=2:1.0.9-2`

Binary Packages:

- `libice-dev:amd64=2:1.0.9-2`
- `libice6:amd64=2:1.0.9-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.9-2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-2.dsc' libice_1.0.9-2.dsc 2130 SHA256:116595cd54be23edad0b55e1cd4bc1929f277fa5c2d00d8f187b0bc5dd39ad6c
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9.orig.tar.gz' libice_1.0.9.orig.tar.gz 455871 SHA256:7812a824a66dd654c830d21982749b3b563d9c2dfe0b88b203cefc14a891edc0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-2.diff.gz' libice_1.0.9-2.diff.gz 6384 SHA256:777f13e08aada3103c32a0b93a26782ca959027bcd98c2c1ddaade8f944fa40a
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

### `dpkg` source package: `libjpeg-turbo=1.5.1-0ubuntu1`

Binary Packages:

- `libjpeg-turbo8:amd64=1.5.1-0ubuntu1`
- `libjpeg-turbo8-dev:amd64=1.5.1-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

- `JPEG`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `libjpeg8-empty=8c-2ubuntu8`

Binary Packages:

- `libjpeg-dev:amd64=8c-2ubuntu8`
- `libjpeg8:amd64=8c-2ubuntu8`
- `libjpeg8-dev:amd64=8c-2ubuntu8`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg8/copyright`, `/usr/share/doc/libjpeg8-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.dsc' libjpeg8-empty_8c-2ubuntu8.dsc 1637 SHA256:e7f575dcb3e0d462513b6f928179baa0ff1d145273934b1041b714515096b407
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.tar.gz' libjpeg8-empty_8c-2ubuntu8.tar.gz 1770 SHA256:48a4227e9fc70851a4f304b10624e02875bf6f4e2debfcbe4ba0dd85a3ec05c6
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
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2-2.dsc' liblqr_0.4.2-2.dsc 2024 SHA256:7e203605ebe40cde3e467db4298d7ee3f83f3d3082b05f8984868cdef1606245
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2-2.debian.tar.xz' liblqr_0.4.2-2.debian.tar.xz 5860 SHA256:2c886ee88f65eade9e1cd10965bf572a3cc178d6119b9342c8469b6b41d2bb62
```

### `dpkg` source package: `libpng1.6=1.6.32-1`

Binary Packages:

- `libpng-dev:amd64=1.6.32-1`
- `libpng16-16:amd64=1.6.32-1`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.32-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.32-1.dsc' libpng1.6_1.6.32-1.dsc 2188 SHA256:8a15cc205f1b564e7be8199dd7d7350e867f50d459ee42b6cb30533c278c8d30
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.32.orig.tar.xz' libpng1.6_1.6.32.orig.tar.xz 997136 SHA256:c918c3113de74a692f0a1526ce881dc26067763eb3915c57ef3a0f7b6886f59b
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.32-1.debian.tar.xz' libpng1.6_1.6.32-1.debian.tar.xz 23244 SHA256:47ae700a63793361b9cb0f23c547c29b2776625f8c846957e9b6842a29ed8fe8
```

### `dpkg` source package: `libpsl=0.17.0-5`

Binary Packages:

- `libpsl5:amd64=0.17.0-5`

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
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.dsc' libpthread-stubs_0.3-4.dsc 1925 SHA256:e72310a5492e641076c199561977703947174c6acc3633073d909f6f5ab3c676
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3.orig.tar.gz' libpthread-stubs_0.3.orig.tar.gz 272939 SHA256:3031f466cf0b06de6b3ccbf2019d15c4fcf75229b7d226a711bc1885b3a82cde
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.diff.gz' libpthread-stubs_0.3-4.diff.gz 2413 SHA256:ce3eb8bdc0f1a4347d42c5736d056973fae46908b764a9f2be83e1bd210f2024
```

### `dpkg` source package: `librsvg=2.40.18-1`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.40.18-1`
- `librsvg2-2:amd64=2.40.18-1`
- `librsvg2-common:amd64=2.40.18-1`
- `librsvg2-dev:amd64=2.40.18-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.40.18-1
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.18-1.dsc' librsvg_2.40.18-1.dsc 2795 SHA256:7667f59db269b54ddb44e435a6e4b69139f62ea59c0e32dd81a18139eddd9d19
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.18.orig.tar.xz' librsvg_2.40.18.orig.tar.xz 574384 SHA256:bfc8c488c89c1e7212c478beb95c41b44701636125a3e6dab41187f1485b564c
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.18-1.debian.tar.xz' librsvg_2.40.18-1.debian.tar.xz 14464 SHA256:29b5747a7208268ceed3ccd5432b2379ee5937ba3fce4fbb1d41ffbf7de3f792
```

### `dpkg` source package: `libselinux=2.6-3build1`

Binary Packages:

- `libselinux1:amd64=2.6-3build1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `libsigsegv=2.11-1`

Binary Packages:

- `libsigsegv2:amd64=2.11-1`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.11-1.dsc' libsigsegv_2.11-1.dsc 2365 SHA256:b2b5064cee7730302ccdda9788709b8fbb270ebbad6899be1a8bb7e491ff14dd
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.11.orig.tar.gz' libsigsegv_2.11.orig.tar.gz 256573 SHA256:b8eadcfa513f9127f672082b5348a834299760e3d17ef99cf9c712fb8c068c73
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.11-1.debian.tar.xz' libsigsegv_2.11-1.debian.tar.xz 10212 SHA256:d253b4314b3348c000ecfa260c467c27135c80c5cd2597b9920fef5379ac70cb
```

### `dpkg` source package: `libsm=2:1.2.2-1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.2-1`
- `libsm6:amd64=2:1.2.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2-1.dsc' libsm_1.2.2-1.dsc 2107 SHA256:1347efa550751179c0a3f1042a9f8ae43ee0c22cf0c2283921fa83e52a68433f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2.orig.tar.gz' libsm_1.2.2.orig.tar.gz 415990 SHA256:14bb7c669ce2b8ff712fbdbf48120e3742a77edcd5e025d6b3325ed30cf120f4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2-1.diff.gz' libsm_1.2.2-1.diff.gz 6183 SHA256:9848714292ead15fcc48ab2d337f2cc5fc08910abbdfaf69d3ef1b89d3fdb2d5
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

### `dpkg` source package: `libthai=0.1.26-3`

Binary Packages:

- `libthai-data=0.1.26-3`
- `libthai0:amd64=0.1.26-3`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.26-3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.26-3.dsc' libthai_0.1.26-3.dsc 2300 SHA256:da0c0b960dbce2324d0ee4bce7574493841d1b07391b2f64199da802bc45d072
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.26.orig.tar.xz' libthai_0.1.26.orig.tar.xz 409380 SHA256:8710112c836b272db1740a9ea3e6c7ebb65b64eee0e143fc2b2c60f99f6bfe2a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.26-3.debian.tar.xz' libthai_0.1.26-3.debian.tar.xz 11076 SHA256:e00c2b0ac9154f2cb3a43917b0a518baf0d09170719bf4849566a6ad3d0e3484
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-2.dsc' libtool_2.4.6-2.dsc 2324 SHA256:caa2b9d5c32e491388d0627e2f808b6cb2f260dd1b0b9fdafc9bff957f05bb29
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-2.debian.tar.xz' libtool_2.4.6-2.debian.tar.xz 36024 SHA256:6227fb1240a90ef06855567e71ee96e4950dd53c4399348f36c1ec39367cd8ea
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

### `dpkg` source package: `libwebp=0.6.0-3`

Binary Packages:

- `libwebp-dev:amd64=0.6.0-3`
- `libwebp6:amd64=0.6.0-3`
- `libwebpdemux2:amd64=0.6.0-3`
- `libwebpmux3:amd64=0.6.0-3`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp6/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.6.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.0-3.dsc' libwebp_0.6.0-3.dsc 2065 SHA256:e3580473966dff04e154dc7270f67d26e7ab68054e74d9dbebe4ed487f6e0ed0
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.0.orig.tar.gz' libwebp_0.6.0.orig.tar.gz 1302881 SHA256:c928119229d4f8f35e20113ffb61f281eda267634a8dc2285af4b0ee27cf2b40
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.0-3.debian.tar.xz' libwebp_0.6.0-3.debian.tar.xz 6132 SHA256:7050f9f70141424b15c5f1a6353f90d926f652aba6cec31bdfbd6c8b010aa11f
```

### `dpkg` source package: `libwmf=0.2.8.4-10.6ubuntu1`

Binary Packages:

- `libwmf-dev=0.2.8.4-10.6ubuntu1`
- `libwmf0.2-7:amd64=0.2.8.4-10.6ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.8.4-10.6ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-10.6ubuntu1.dsc' libwmf_0.2.8.4-10.6ubuntu1.dsc 2214 SHA256:11de54938cbd8f2985906fab418452aa8a1128acad869edaac368e8cd75635ad
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4.orig.tar.gz' libwmf_0.2.8.4.orig.tar.gz 2169375 SHA256:5b345c69220545d003ad52bfd035d5d6f4f075e65204114a9e875e84895a7cf8
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-10.6ubuntu1.debian.tar.xz' libwmf_0.2.8.4-10.6ubuntu1.debian.tar.xz 12244 SHA256:96a7c809c5ddd95ba90ae1e50292dc4f51e98470bb447044ccabc1bc9fbc2db8
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.4-3.dsc' libx11_1.6.4-3.dsc 2397 SHA256:4c5d6add2ba969067ca111c827ae94264e4c22776e22f318d264545dc1c6a300
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.4.orig.tar.gz' libx11_1.6.4.orig.tar.gz 3095115 SHA256:5d7fbb9e15c27900ea8963218a59750b674a8d7c94161b66e96fcfbdaa1c6263
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.4-3.diff.gz' libx11_1.6.4-3.diff.gz 41366 SHA256:2c936827bca63eaf5b66683bdcd0ecf013d152c35439f792475db85c5c2338fd
```

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.8-1`
- `libxau6:amd64=1:1.0.8-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.8-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1.dsc' libxau_1.0.8-1.dsc 2040 SHA256:3ddb5f2c7a49ef7507b8d1e63e891238db877b4d1bb1c5486a3e3242c8523602
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8.orig.tar.gz' libxau_1.0.8.orig.tar.gz 362044 SHA256:c343b4ef66d66a6b3e0e27aa46b37ad5cab0f11a5c565eafb4a1c7590bc71d7b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1.diff.gz' libxau_1.0.8-1.diff.gz 15287 SHA256:b493479d6a52a0e753dd357ad8a4bc5c4296015f3f7b96cf546f7c5c5843cbb0
```

### `dpkg` source package: `libxcb=1.11.1-1ubuntu1`

Binary Packages:

- `libxcb-render0:amd64=1.11.1-1ubuntu1`
- `libxcb-render0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb-shm0:amd64=1.11.1-1ubuntu1`
- `libxcb-shm0-dev:amd64=1.11.1-1ubuntu1`
- `libxcb1:amd64=1.11.1-1ubuntu1`
- `libxcb1-dev:amd64=1.11.1-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.11.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.11.1-1ubuntu1.dsc' libxcb_1.11.1-1ubuntu1.dsc 6434 SHA256:d059cea4a732eb2600d829d023af89956b46d85399d90be122a887a6baf59a26
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.11.1.orig.tar.gz' libxcb_1.11.1.orig.tar.gz 633057 SHA256:660312d5e64d0a5800262488042c1707a0261fa01a759bad265b1b75dd4844dd
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.11.1-1ubuntu1.diff.gz' libxcb_1.11.1-1ubuntu1.diff.gz 25030 SHA256:017d57e8d555e9f003b1d1ef394b81eddecf9029b6b7e582400dd51e17d63401
```

### `dpkg` source package: `libxcomposite=1:0.4.4-2`

Binary Packages:

- `libxcomposite1:amd64=1:0.4.4-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcomposite=1:0.4.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.4-2.dsc' libxcomposite_0.4.4-2.dsc 2178 SHA256:4124027ad4b4598a61c45cbc345988010a2a5ba6e7c80259917f59414be69861
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.4.orig.tar.gz' libxcomposite_0.4.4.orig.tar.gz 354584 SHA256:83c04649819c6f52cda1b0ce8bcdcc48ad8618428ad803fb07f20b802f1bdad1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcomposite/libxcomposite_0.4.4-2.diff.gz' libxcomposite_0.4.4-2.diff.gz 15755 SHA256:9689ae3fcc76054fe09909692e71a1a4fe356e84f3adfa2be668e173d0369ebc
```

### `dpkg` source package: `libxcursor=1:1.1.14-3`

Binary Packages:

- `libxcursor1:amd64=1:1.1.14-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcursor=1:1.1.14-3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.1.14-3.dsc' libxcursor_1.1.14-3.dsc 2288 SHA256:c5324154d4232bae10c11222199960e7b1b194eb5da331807f6f048fc6fa74b9
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.1.14.orig.tar.gz' libxcursor_1.1.14.orig.tar.gz 374910 SHA256:be0954faf274969ffa6d95b9606b9c0cfee28c13b6fc014f15606a0c8b05c17b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcursor/libxcursor_1.1.14-3.debian.tar.xz' libxcursor_1.1.14-3.debian.tar.xz 8688 SHA256:1f80cf47326cf05eafe5ac7215103be6cac3369eccffbe2b254828330f47cbdd
```

### `dpkg` source package: `libxdamage=1:1.1.4-3`

Binary Packages:

- `libxdamage1:amd64=1:1.1.4-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdamage=1:1.1.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4-3.dsc' libxdamage_1.1.4-3.dsc 2161 SHA256:f1207d4fca942d2cddfe40abc818046e282ceeb0e0b565a44c2908fd03c41368
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4.orig.tar.gz' libxdamage_1.1.4.orig.tar.gz 339060 SHA256:4bb3e9d917f5f593df2277d452926ee6ad96de7b7cd1017cbcf4579fe5d3442b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdamage/libxdamage_1.1.4-3.debian.tar.xz' libxdamage_1.1.4-3.debian.tar.xz 5904 SHA256:94dcf3997a92f5e1b4681dcbe555af4469607ae7af2d0dc643a7a1be7b94e64a
```

### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.2-3`
- `libxdmcp6:amd64=1:1.1.2-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.dsc' libxdmcp_1.1.2-3.dsc 2145 SHA256:f9697dca6a275aeee9a3eee9fb2d55e0f77485481e8b84efc6950fc9b1988460
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.diff.gz' libxdmcp_1.1.2-3.diff.gz 18017 SHA256:5844df115c17e5ba40ac116f80373304d821c607e763ef6f40562421f5cc0cf3
```

### `dpkg` source package: `libxext=2:1.3.3-1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.3-1`
- `libxext6:amd64=2:1.3.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3-1.dsc' libxext_1.3.3-1.dsc 2221 SHA256:47106df75b8f3db1e43803e8e94a2e966cd23f7daa8cfc393af739a9e33ef955
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3.orig.tar.gz' libxext_1.3.3.orig.tar.gz 468441 SHA256:eb0b88050491fef4716da4b06a4d92b4fc9e76f880d6310b2157df604342cfe5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3-1.diff.gz' libxext_1.3.3-1.diff.gz 20763 SHA256:e294a4884eb68acbd151312cb0c973aad63268b637b15ccf1911864b7197557e
```

### `dpkg` source package: `libxfixes=1:5.0.3-1`

Binary Packages:

- `libxfixes3:amd64=1:5.0.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxfixes=1:5.0.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.3-1.dsc' libxfixes_5.0.3-1.dsc 2040 SHA256:87c1c491d8ff261b5a723c6c6aa974f315ff6f25f47425285a62065cbf944025
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.3.orig.tar.gz' libxfixes_5.0.3.orig.tar.gz 360412 SHA256:9ab6c13590658501ce4bd965a8a5d32ba4d8b3bb39a5a5bc9901edffc5666570
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxfixes/libxfixes_5.0.3-1.diff.gz' libxfixes_5.0.3-1.diff.gz 15140 SHA256:95b9688465531c60ff372bf8a2eb5fdd456970cbbb679ba13e54d24af44fb904
```

### `dpkg` source package: `libxi=2:1.7.9-1`

Binary Packages:

- `libxi6:amd64=2:1.7.9-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.7.9-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.9-1.dsc' libxi_1.7.9-1.dsc 2202 SHA256:fb19b7e8b9ad6306c3e8a6728f29576f956f07a7980e7b4d727259714d6ca686
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.9.orig.tar.gz' libxi_1.7.9.orig.tar.gz 604214 SHA256:463cc5370191404bc0f8a450fdbf6d9159efbbf274e5e0f427a60191fed9cf4b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxi/libxi_1.7.9-1.diff.gz' libxi_1.7.9-1.diff.gz 15892 SHA256:8c9c221faecc97a7ba7ff1a1a14fad580c49b72e270dc3aae40b72b2d7f4dc5e
```

### `dpkg` source package: `libxinerama=2:1.1.3-1`

Binary Packages:

- `libxinerama1:amd64=2:1.1.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxinerama=2:1.1.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.3-1.dsc' libxinerama_1.1.3-1.dsc 2198 SHA256:4cf9a3558bd7ce1b4f55a581175c05e4b4a172364458a21ff4b657b714688fbb
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.3.orig.tar.gz' libxinerama_1.1.3.orig.tar.gz 350141 SHA256:0ba243222ae5aba4c6a3d7a394c32c8b69220a6872dbb00b7abae8753aca9a44
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxinerama/libxinerama_1.1.3-1.diff.gz' libxinerama_1.1.3-1.diff.gz 15738 SHA256:2b1487e3511ddabfec666a62f6e5e8ac4f97536b0d53c51f7bf4cbe07508a130
```

### `dpkg` source package: `libxml2=2.9.4+dfsg1-3.1`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-3.1`
- `libxml2-dev:amd64=2.9.4+dfsg1-3.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-3.1.dsc' libxml2_2.9.4+dfsg1-3.1.dsc 3121 SHA256:7b6dbd6cb82e44393436d1900ec37791002456eb53f17951d561b2b4f3a71bdf
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA256:a74ad55e346aa0b2b41903e66d21f8f3d2a736b3f41e32496376861ab484184e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-3.1.debian.tar.xz' libxml2_2.9.4+dfsg1-3.1.debian.tar.xz 33852 SHA256:9de354bf1315f0e631505789a6059fdbcef3fd2c262b1573935cdf6acf0ee976
```

### `dpkg` source package: `libxpm=1:3.5.12-1`

Binary Packages:

- `libxpm4:amd64=1:3.5.12-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.12-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.12-1.dsc' libxpm_3.5.12-1.dsc 2061 SHA256:1b5d07d820d656030d0f79a15a0652f258c9d2be0cd6064ec37c40853906f7e8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.12.orig.tar.gz' libxpm_3.5.12.orig.tar.gz 529302 SHA256:2523acc780eac01db5163267b36f5b94374bfb0de26fc0b5a7bee76649fd8501
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.12-1.diff.gz' libxpm_3.5.12-1.diff.gz 9458 SHA256:4103400f8d73d0ec567f87e8aa9824c4a07d068e81da6efe54fb535ec897e326
```

### `dpkg` source package: `libxrandr=2:1.5.1-1`

Binary Packages:

- `libxrandr2:amd64=2:1.5.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.5.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.1-1.dsc' libxrandr_1.5.1-1.dsc 2046 SHA256:0d7102ab75fdfe06534e842d5dcac8430614c61a061ab12794e2285712b0b103
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.1.orig.tar.gz' libxrandr_1.5.1.orig.tar.gz 388607 SHA256:2baa7fb3eca78fe7e11a09b373ba898b717f7eeba4a4bfd68187e04b4789b0d3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrandr/libxrandr_1.5.1-1.diff.gz' libxrandr_1.5.1-1.diff.gz 16386 SHA256:42262cbc2117ea559a4e16a02c6ea6478554aa2128d9fe1e141da07006612a1d
```

### `dpkg` source package: `libxrender=1:0.9.10-1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.10-1`
- `libxrender1:amd64=1:0.9.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.10-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1.dsc' libxrender_0.9.10-1.dsc 2064 SHA256:95d6471218b44f4e60c48cea60cfb4865bbe861530add23f6c859515bee92dbd
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10.orig.tar.gz' libxrender_0.9.10.orig.tar.gz 373717 SHA256:770527cce42500790433df84ec3521e8bf095dfe5079454a92236494ab296adf
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1.diff.gz' libxrender_0.9.10-1.diff.gz 15399 SHA256:ff56a0a00119383adc5f1731e86155ae5c2de069e1d059a9da1d777917430588
```

### `dpkg` source package: `libxslt=1.1.29-2.1`

Binary Packages:

- `libxslt1-dev:amd64=1.1.29-2.1`
- `libxslt1.1:amd64=1.1.29-2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.29-2.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.29-2.1.dsc' libxslt_1.1.29-2.1.dsc 2535 SHA256:8823c0cb209943fb1a3f6761b9a1b3c49c0348da3aa7a67ff9e09760c0976410
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.29.orig.tar.gz' libxslt_1.1.29.orig.tar.gz 3428524 SHA256:b5976e3857837e7617b29f2249ebb5eeac34e249208d31f1fbf7a6ba7a4090ce
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.29-2.1.debian.tar.xz' libxslt_1.1.29-2.1.debian.tar.xz 28548 SHA256:93ef76669dae1bdfdd5f60418e29ccda60c7b693b67d0da81e7d12ffb6d25085
```

### `dpkg` source package: `libxt=1:1.1.5-1`

Binary Packages:

- `libxt-dev:amd64=1:1.1.5-1`
- `libxt6:amd64=1:1.1.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.1.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-1.dsc' libxt_1.1.5-1.dsc 2109 SHA256:f44ae1393c9fd02c0b3dd03576c7b26e6c7b09de3271a87e018efadeed311639
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5.orig.tar.gz' libxt_1.1.5.orig.tar.gz 962169 SHA256:b59bee38a9935565fa49dc1bfe84cb30173e2e07e1dcdf801430d4b54eb0caa3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-1.diff.gz' libxt_1.1.5-1.diff.gz 14462 SHA256:822fe813d1ea9213e6fde91cbb607c0b6874341dc19b77b0f6649b8be8472d82
```

### `dpkg` source package: `libyaml=0.1.7-2ubuntu3`

Binary Packages:

- `libyaml-0-2:amd64=0.1.7-2ubuntu3`
- `libyaml-dev:amd64=0.1.7-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.7-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.dsc' libyaml_0.1.7-2ubuntu3.dsc 2019 SHA256:122f3c4ddc6b6f069382587fdde2ba9ed4800b303bce92c3d11d4fee1c1c0c5c
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7.orig.tar.gz' libyaml_0.1.7.orig.tar.gz 527518 SHA256:8088e457264a98ba451a90b8661fcb4f9d6f478f7265d48322a196cec2480729
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.debian.tar.xz' libyaml_0.1.7-2ubuntu3.debian.tar.xz 4288 SHA256:d1b9caa9e645c2c306417068bcdd85e56e6065d74771c15cc970652e52f8259b
```

### `dpkg` source package: `linux=4.12.0-11.12`

Binary Packages:

- `linux-libc-dev:amd64=4.12.0-11.12`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `lzo2=2.08-1.2`

Binary Packages:

- `liblzo2-2:amd64=2.08-1.2`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.08-1.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08-1.2.dsc' lzo2_2.08-1.2.dsc 1804 SHA256:09eabe81d6f631a29cc603843b27ab914704726a1400a2219cf83b1da4e72892
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08.orig.tar.gz' lzo2_2.08.orig.tar.gz 589045 SHA256:ac1b3e4dee46febe9fd28737eb7f5692d3232ef1a01da10444394c3d47536614
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08-1.2.debian.tar.xz' lzo2_2.08-1.2.debian.tar.xz 5996 SHA256:5a9aa3a2432f5d4f689b24c64ea3daec7646e736da37721388ae88b670dd99bc
```

### `dpkg` source package: `m4=1.4.18-1`

Binary Packages:

- `m4=1.4.18-1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.18-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18-1.dsc' m4_1.4.18-1.dsc 1426 SHA256:83a6c5e4b94aa47634b7c988fa485155c01120c17682865e6f032de9adf1090c
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18.orig.tar.xz' m4_1.4.18.orig.tar.xz 1207688 SHA256:f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18-1.debian.tar.xz' m4_1.4.18-1.debian.tar.xz 15784 SHA256:55de78acb0272fd6e2637ab933114e64eefa58ba1e97b063629453ae1e163fff
```

### `dpkg` source package: `make-dfsg=4.1-9.1`

Binary Packages:

- `make=4.1-9.1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-9.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1.dsc' make-dfsg_4.1-9.1.dsc 2037 SHA256:3527e91633b0d2830a52f3b85229b2f8bdec5e1e5b77bbff95b20317757ab3a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1.diff.gz' make-dfsg_4.1-9.1.diff.gz 45452 SHA256:ec9d39ed253808378aeb91bb2c34bbd177637ed197682e093c3aadfb97b338a3
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

### `dpkg` source package: `mpclib3=1.0.3-1`

Binary Packages:

- `libmpc3:amd64=1.0.3-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.0.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-1.dsc' mpclib3_1.0.3-1.dsc 1940 SHA256:4b424e1c6063d48fd0d045b5afe37004346dae267ced0994fa8e11ff41cada45
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3.orig.tar.gz' mpclib3_1.0.3.orig.tar.gz 669925 SHA256:617decc6ea09889fb08ede330917a00b16809b8db88c29c31bfbb49cbf88ecc3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-1.diff.gz' mpclib3_1.0.3-1.diff.gz 3684 SHA256:5a3fe9a7eddb4428d42e95f5919cce517f17411acdb2a73013a8f1a2bb246565
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.dsc' mpdecimal_2.4.2-1.dsc 1893 SHA256:5bc782829357ebc9f0c12084642319e5ac89784a119433f8bfba7a11008d7c13
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.debian.tar.xz' mpdecimal_2.4.2-1.debian.tar.xz 5172 SHA256:b95fb775fd04a7ad34fa5bd2c222b49ee2dfd7f0e15295dbd3f7fb86a9b0194b
```

### `dpkg` source package: `mpfr4=3.1.5-1`

Binary Packages:

- `libmpfr4:amd64=3.1.5-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr4/copyright`)

- `GFDL-1.2`
- `LGPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `mysql-5.7=5.7.19-0ubuntu1`

Binary Packages:

- `libmysqlclient-dev=5.7.19-0ubuntu1`
- `libmysqlclient20:amd64=5.7.19-0ubuntu1`

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

Source:

```console
$ apt-get source -qq --print-uris mysql-5.7=5.7.19-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.19-0ubuntu1.dsc' mysql-5.7_5.7.19-0ubuntu1.dsc 3303 SHA256:1ad42e1bbb4eebce787f950e2a3e082281f685e6cfb62fb29ce42fdc987be2a9
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.19.orig.tar.gz' mysql-5.7_5.7.19.orig.tar.gz 48799895 SHA256:22e5034e40e0731eff521b7aaf7584b76297a69875ee50026b12f2bfac3e1bca
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.19-0ubuntu1.debian.tar.xz' mysql-5.7_5.7.19-0ubuntu1.debian.tar.xz 249624 SHA256:d699fe60cb6518d4956ae2534fd0bf7f97e37a58e66f2f768e1e6c08db035616
```

### `dpkg` source package: `mysql-defaults=1.0.2ubuntu1`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.0.2ubuntu1`
- `mysql-common=5.8+1.0.2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.0.2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.2ubuntu1.dsc' mysql-defaults_1.0.2ubuntu1.dsc 2261 SHA256:3889b6ba385ee1a015bbaa8a68fb08f363143ce86c346c13327b35e380747af5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.2ubuntu1.tar.xz' mysql-defaults_1.0.2ubuntu1.tar.xz 5588 SHA256:eeca700a105f2e0a61346f2fe9d3b4956a3e536d5c8e7f759fb1faccea3502d9
```

### `dpkg` source package: `ncurses=6.0+20160625-1ubuntu1`

Binary Packages:

- `libncurses5:amd64=6.0+20160625-1ubuntu1`
- `libncurses5-dev:amd64=6.0+20160625-1ubuntu1`
- `libncursesw5:amd64=6.0+20160625-1ubuntu1`
- `libtinfo-dev:amd64=6.0+20160625-1ubuntu1`
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

### `dpkg` source package: `openexr=2.2.0-11ubuntu1`

Binary Packages:

- `libopenexr-dev=2.2.0-11ubuntu1`
- `libopenexr22:amd64=2.2.0-11ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libopenexr-dev/copyright`, `/usr/share/doc/libopenexr22/copyright`)

- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.2.0-11ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-11ubuntu1.dsc' openexr_2.2.0-11ubuntu1.dsc 2050 SHA256:448df8691a95ea6019b01b04bf6f39ea163622f775c0c0ef7268ef96fae5b9d4
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0.orig.tar.gz' openexr_2.2.0.orig.tar.gz 14489661 SHA256:36a012f6c43213f840ce29a8b182700f6cf6b214bea0d5735594136b44914231
'http://archive.ubuntu.com/ubuntu/pool/main/o/openexr/openexr_2.2.0-11ubuntu1.debian.tar.xz' openexr_2.2.0-11ubuntu1.debian.tar.xz 16748 SHA256:41bb5055d5562095bda7f5477830475d4bcdab4f13388590fd267f811b0e4be3
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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `openssl=1.0.2g-1ubuntu13`

Binary Packages:

- `libssl-dev:amd64=1.0.2g-1ubuntu13`
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

### `dpkg` source package: `pango1.0=1.40.11-1`

Binary Packages:

- `libpango-1.0-0:amd64=1.40.11-1`
- `libpangocairo-1.0-0:amd64=1.40.11-1`
- `libpangoft2-1.0-0:amd64=1.40.11-1`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `LGPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.40.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.40.11-1.dsc' pango1.0_1.40.11-1.dsc 3289 SHA256:4cec44d3c1c6df349fa1fdb0a68f96bb9da1bf5f26ba76abd48e43c5132117ed
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.40.11.orig.tar.xz' pango1.0_1.40.11.orig.tar.xz 854372 SHA256:5b11140590e632739e4151cae06b8116160d59e22bf36a3ccd5df76d1cf0383e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.40.11-1.debian.tar.xz' pango1.0_1.40.11-1.debian.tar.xz 28116 SHA256:5a82fb58cd002cacaa21cadd8ff8414cc505a37da6c47ec1f96fd80aa260e47e
```

### `dpkg` source package: `patch=2.7.5-1build1`

Binary Packages:

- `patch=2.7.5-1build1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.5-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1build1.dsc' patch_2.7.5-1build1.dsc 1801 SHA256:b79f71ece24112fd5087c8e3fdcda5af20fe0c74699fe3489d488377454200fc
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5.orig.tar.xz' patch_2.7.5.orig.tar.xz 727704 SHA256:fd95153655d6b95567e623843a0e77b81612d502ecf78a489a4aed7867caa299
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1build1.debian.tar.xz' patch_2.7.5-1build1.debian.tar.xz 8204 SHA256:f32b8ceba4957a011f24e25354c7895bd822c8811e0af862713338e99d07c66a
```

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

### `dpkg` source package: `pixman=0.34.0-1`

Binary Packages:

- `libpixman-1-0:amd64=0.34.0-1`
- `libpixman-1-dev=0.34.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.34.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0-1.dsc' pixman_0.34.0-1.dsc 2103 SHA256:157e17c323d461a07f48e570a87228098770fd4388324b2dfcf360bf59ac1e11
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0.orig.tar.gz' pixman_0.34.0.orig.tar.gz 878784 SHA256:21b6b249b51c6800dc9553b65106e1e37d0e25df942c90531d4c3997aa20a88e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0-1.diff.gz' pixman_0.34.0-1.diff.gz 315394 SHA256:a230def25913d56f9f13e4dbb1014214f84e85fe502c943d560f4335cfc1c5cd
```

### `dpkg` source package: `pkg-config=0.29.1-0ubuntu2`

Binary Packages:

- `pkg-config=0.29.1-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.1-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu2.dsc' pkg-config_0.29.1-0ubuntu2.dsc 1824 SHA256:91f07d5a80083fbe86c93d9f107890920f4740df8f3d1e6b162a5d703afc3b89
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1.orig.tar.gz' pkg-config_0.29.1.orig.tar.gz 2013454 SHA256:beb43c9e064555469bd4390dcfd8030b1536e0aa103f08d7abf7ae8cac0cb001
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu2.diff.gz' pkg-config_0.29.1-0ubuntu2.diff.gz 12715 SHA256:8d5645ccad7bdbcaf3bd83b1b18c7f7d0e2a813e9813b5d4603aa646fc5ff5ea
```

### `dpkg` source package: `postgresql-9.6=9.6.4-1`

Binary Packages:

- `libpq-dev=9.6.4-1`
- `libpq5:amd64=9.6.4-1`

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

### `dpkg` source package: `python3-defaults=3.6.1-0ubuntu3`

Binary Packages:

- `libpython3-stdlib:amd64=3.6.1-0ubuntu3`
- `python3=3.6.1-0ubuntu3`
- `python3-minimal=3.6.1-0ubuntu3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.6.1-0ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.1-0ubuntu3.dsc' python3-defaults_3.6.1-0ubuntu3.dsc 2841 SHA256:d913c340340c715de909c1ac78e7224f81009f45c0a4f88a9a865706784bf3e0
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.1-0ubuntu3.tar.gz' python3-defaults_3.6.1-0ubuntu3.tar.gz 129634 SHA256:05b01fbfc724437dc6f83be33e73ca0912c4702deedb31cd02ad3901295cc585
```

### `dpkg` source package: `python3.6=3.6.2-2`

Binary Packages:

- `libpython3.6-minimal:amd64=3.6.2-2`
- `libpython3.6-stdlib:amd64=3.6.2-2`
- `python3.6=3.6.2-2`
- `python3.6-minimal=3.6.2-2`

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
$ apt-get source -qq --print-uris python3.6=3.6.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.2-2.dsc' python3.6_3.6.2-2.dsc 3351 SHA256:16c76c32b76f208558bebe94f5d2e3b19b7cbb5eef72db7219359896cbc51c89
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.2.orig.tar.xz' python3.6_3.6.2.orig.tar.xz 16907204 SHA256:9229773be41ed144370f47f0f626a1579931f5a390f1e8e3853174d52edd64a9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.2-2.debian.tar.xz' python3.6_3.6.2-2.debian.tar.xz 202608 SHA256:f328e84b8cf88e41467f0faec536702e404ae16feb48e54beb92bd3391c2d7e4
```

### `dpkg` source package: `readline=7.0-0ubuntu2`

Binary Packages:

- `libreadline-dev:amd64=7.0-0ubuntu2`
- `libreadline7:amd64=7.0-0ubuntu2`
- `readline-common=7.0-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `shared-mime-info=1.8-1`

Binary Packages:

- `shared-mime-info=1.8-1`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.8-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.8-1.dsc' shared-mime-info_1.8-1.dsc 2238 SHA256:53a57dc9cecf61204c57d6df282b5b4db3c82214d585c474dbb33835a25530af
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.8.orig.tar.xz' shared-mime-info_1.8.orig.tar.xz 589444 SHA256:2af55ef1a0319805b74ab40d331a3962c905477d76c086f49e34dc96363589e9
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.8-1.debian.tar.xz' shared-mime-info_1.8-1.debian.tar.xz 10324 SHA256:c169b5cb2669f12d2dbdbcb02026c6acbee2bfb6e512feadec50b8593cb2f779
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
- `libsqlite3-dev:amd64=3.19.3-3`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


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

### `dpkg` source package: `tiff=4.0.8-4`

Binary Packages:

- `libtiff5:amd64=4.0.8-4`
- `libtiff5-dev:amd64=4.0.8-4`
- `libtiffxx5:amd64=4.0.8-4`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiff5-dev/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.8-4
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.8-4.dsc' tiff_4.0.8-4.dsc 2157 SHA256:1bc0d97745d7a9e51c8e068a1914f594439a2d70a8c5e9a53d97b3618a38d1de
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.8.orig.tar.gz' tiff_4.0.8.orig.tar.gz 2065574 SHA256:59d7a5a8ccd92059913f246877db95a2918e6c04fb9d43fd74e5c3390dac2910
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.8-4.debian.tar.xz' tiff_4.0.8-4.debian.tar.xz 23340 SHA256:36c008179ae08d6958cd9fcd75f82c082624bf55e2c4e6ca0e1af59ea4d75d9c
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

### `dpkg` source package: `ubuntu-themes=16.10+17.10.20170817-0ubuntu1`

Binary Packages:

- `ubuntu-mono=16.10+17.10.20170817-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/ubuntu-mono/copyright`)

- `CC-BY-SA-3.0`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-themes=16.10+17.10.20170817-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-themes/ubuntu-themes_16.10+17.10.20170817-0ubuntu1.dsc' ubuntu-themes_16.10+17.10.20170817-0ubuntu1.dsc 1661 SHA256:fcf28aa1375a36b91f6e25043c0d0cd98ed1346ead6117db1f8508e32feddacc
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-themes/ubuntu-themes_16.10+17.10.20170817.orig.tar.gz' ubuntu-themes_16.10+17.10.20170817.orig.tar.gz 13713893 SHA256:05c49f19fc3ae7be94e2ba58bb25456ffe09330d2373de28e6d44df58d11480a
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-themes/ubuntu-themes_16.10+17.10.20170817-0ubuntu1.diff.gz' ubuntu-themes_16.10+17.10.20170817-0ubuntu1.diff.gz 26476 SHA256:e822e011ff51b40170d94de32765e76c97390b736724e2b0d9d3c43a82aa6dab
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

### `dpkg` source package: `x11proto-core=7.0.31-1`

Binary Packages:

- `x11proto-core-dev=7.0.31-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-core=7.0.31-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31-1.dsc' x11proto-core_7.0.31-1.dsc 1949 SHA256:9810fabbded85927d800058431a9168308aeec4bdd4e4fa6dc7f877855c35028
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31.orig.tar.gz' x11proto-core_7.0.31.orig.tar.gz 367979 SHA256:6d755eaae27b45c5cc75529a12855fed5de5969b367ed05003944cf901ed43c7
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31-1.diff.gz' x11proto-core_7.0.31-1.diff.gz 30387 SHA256:68f5f4e0df06f5fa5ed4a88e1b3899bd9d80313a51b6f314230132f560bcf94e
```

### `dpkg` source package: `x11proto-input=2.3.2-1`

Binary Packages:

- `x11proto-input-dev=2.3.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-input=2.3.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.2-1.dsc' x11proto-input_2.3.2-1.dsc 1908 SHA256:6c4fc45a57d001782369ffcdbe29f5ff889d426a1053c67678c3a710dd9d03d2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.2.orig.tar.gz' x11proto-input_2.3.2.orig.tar.gz 244334 SHA256:10eaadd531f38f7c92ab59ef0708ca195caf3164a75c4ed99f0c04f2913f6ef3
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.2-1.diff.gz' x11proto-input_2.3.2-1.diff.gz 6898 SHA256:21f09fce8acfb20e01bd2c90775eb8ae8f43d67dea690874625d1a0bd5a1bff2
```

### `dpkg` source package: `x11proto-kb=1.0.7-1`

Binary Packages:

- `x11proto-kb-dev=1.0.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-kb=1.0.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-1.dsc' x11proto-kb_1.0.7-1.dsc 1929 SHA256:279f1e446457ba50e8950ebbe44446f960362f2247dece08ed276f5181596480
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7.orig.tar.gz' x11proto-kb_1.0.7.orig.tar.gz 325858 SHA256:828cb275b91268b1a3ea950d5c0c5eb076c678fdf005d517411f89cc8c3bb416
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-1.diff.gz' x11proto-kb_1.0.7-1.diff.gz 7467 SHA256:c868adc57853c6633e0379ce25f23e4cd8847f1d67c651ed1d7e63c98574064c
```

### `dpkg` source package: `x11proto-render=2:0.11.1-2`

Binary Packages:

- `x11proto-render-dev=2:0.11.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-render=2:0.11.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.dsc' x11proto-render_0.11.1-2.dsc 1979 SHA256:5cebbcce7928bd468b0eb447d9da403e5228af1691549a529a9012d2f7d18948
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-render/x11proto-render_0.11.1.orig.tar.gz' x11proto-render_0.11.1.orig.tar.gz 124436 SHA256:a0a4be3cad9381ae28279ba5582e679491fc2bec9aab8a65993108bf8dbce5fe
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.diff.gz' x11proto-render_0.11.1-2.diff.gz 14527 SHA256:614b7adf6f08bdf25bc7fb565f048e2f94e290c3bd056fa2485e093eb887c54f
```

### `dpkg` source package: `x11proto-xext=7.3.0-1`

Binary Packages:

- `x11proto-xext-dev=7.3.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-xext=7.3.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.dsc' x11proto-xext_7.3.0-1.dsc 1997 SHA256:4b806c7f17f7dd466901111ce0862117541098025470601c251499d76affe9fc
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0.orig.tar.gz' x11proto-xext_7.3.0.orig.tar.gz 290814 SHA256:1b1bcdf91221e78c6c33738667a57bd9aaa63d5953174ad8ed9929296741c9f5
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.diff.gz' x11proto-xext_7.3.0-1.diff.gz 16644 SHA256:68eec9363c7f8bcfbbaba68d6661284eb78fffccbddb293b95a6c85647cfcf6c
```

### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.dsc' xorg-sgml-doctools_1.11-1.dsc 1975 SHA256:1f4a12a38420b0ddab35553b9588fdf43ab39577958aed70fca435c9a747141a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA256:986326d7b4dd2ad298f61d8d41fe3929ac6191c6000d6d7e47a8ffc0c34e7426
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.diff.gz' xorg-sgml-doctools_1.11-1.diff.gz 3194 SHA256:18eeb355cb0efff9f47f8ed8e852eee322d9733a427419f4b39f43bc4df630c1
```

### `dpkg` source package: `xorg=1:7.7+19ubuntu1`

Binary Packages:

- `x11-common=1:7.7+19ubuntu1`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `xtrans=1.3.5-1`

Binary Packages:

- `xtrans-dev=1.3.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.3.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5-1.dsc' xtrans_1.3.5-1.dsc 1901 SHA256:64750bc2dd993ac93b9e0a8d6109ce72963ab22296479145eb3f392d238c2280
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5.orig.tar.gz' xtrans_1.3.5.orig.tar.gz 227536 SHA256:b7a577c1b6c75030145e53b4793db9c88f9359ac49e7d771d4385d21b3e5945d
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5-1.diff.gz' xtrans_1.3.5-1.diff.gz 16122 SHA256:2acb2c4f5958ef1bbae74ca64007d0465261a4f62bfad6ed22f1f144c0e445e1
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.dsc' xz-utils_5.2.2-1.3.dsc 2575 SHA256:3ea4e6a32f6265b152f89ceafe78c8839e5f4bb1cad137b159fe2013817f9342
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA256:f341b1906ebcdde291dd619399ae944600edc9193619dd0c0110a5f05bfcc89e
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA256:2cc0575556e1331b3f468e6e7dca5969ce86efcc315d62672279b4e68b2e449f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.debian.tar.xz' xz-utils_5.2.2-1.3.debian.tar.xz 108680 SHA256:d76c3acf39d0999c14384695394970e8f98853fd6736ba91972d3e67106bc6f6
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-0ubuntu2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-0ubuntu2`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.dsc' zlib_1.2.11.dfsg-0ubuntu2.dsc 2676 SHA256:e733161caf3c6864deec55f40f80c0872f7c83bd9c6e9f937472f227ad912281
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.xz' zlib_1.2.11.dfsg.orig.tar.xz 287216 SHA256:881c8a90f488def83488aa91fd68563c023013a4b9b07a040f6da2727d76ad60
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.debian.tar.xz' zlib_1.2.11.dfsg-0ubuntu2.debian.tar.xz 18344 SHA256:afad42904f793d13a0b631e082e575d90a7c7c443973d08a00061a9bbb5ca380
```
