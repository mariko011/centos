# `buildpack-deps:trusty`

## Docker Metadata

- Image ID: `sha256:c8d5da86b983bac1e05f08f9e3353c04d2ba503cd262d048b1b9a009a220703d`
- Created: `2017-01-20T22:53:50.879812211Z`
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-1`

Binary Packages:

- `libacl1:amd64=2.2.52-1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-1.dsc' acl_2.2.52-1.dsc 2050 SHA256:0aac0ff2c3563ded05a6aae74c6f68ef5e991961e514b2549dfdd27d40fe4bcf
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-1.debian.tar.bz2' acl_2.2.52-1.debian.tar.bz2 8886 SHA256:1f1a99c40fe13686ebc38d2c158159921b18c2502bfbcc87295b3b54d5cfb669
```

### `dpkg` source package: `adduser=3.113+nmu3ubuntu3`

Binary Packages:

- `adduser=3.113+nmu3ubuntu3`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.113+nmu3ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113+nmu3ubuntu3.dsc' adduser_3.113+nmu3ubuntu3.dsc 1868 SHA256:a3ec31ba596b5bcd6c9b55e3433a96b30f2b27dc6fcbe87af523615dbf30f4f8
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113+nmu3ubuntu3.tar.gz' adduser_3.113+nmu3ubuntu3.tar.gz 358527 SHA256:6126a4e8db7aa1c05780405ce5fb0225a4d5909bbb2a7bf75148ec8d4c4e239c
```

### `dpkg` source package: `apr-util=1.5.3-1`

Binary Packages:

- `libaprutil1:amd64=1.5.3-1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.5.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.3-1.dsc' apr-util_1.5.3-1.dsc 1919 SHA256:54cd8e71ed3653f4282a997fb2190776d446443b29d771cc49e024cb336ea33c
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.3.orig.tar.bz2' apr-util_1.5.3.orig.tar.bz2 695303 SHA256:78edb174f13e25ee15ded2b849b741a248b879a93a77a2d31c20f7e225be3968
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.3-1.debian.tar.gz' apr-util_1.5.3-1.debian.tar.gz 17352 SHA256:3cb68b4d43341d67d39feafc37e087c178765320de3e27d7db8a1e3569a44a8f
```

### `dpkg` source package: `apr=1.5.0-1`

Binary Packages:

- `libapr1:amd64=1.5.0-1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.5.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.0-1.dsc' apr_1.5.0-1.dsc 1444 SHA256:7be8619b7454329a00128d5aba668910b3bd763bcfe2840a0756f6a33ed6e9e7
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.0.orig.tar.bz2' apr_1.5.0.orig.tar.bz2 813976 SHA256:17287d36a5917e27281e60d47e7b147bd5ddcd1ca832702c2318f5e0724f1221
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.0-1.debian.tar.gz' apr_1.5.0-1.debian.tar.gz 27878 SHA256:03c97e6c336f68c8be73f1440362408204fa190808e1ff7655b1bcf134f77f88
```

### `dpkg` source package: `apt=1.0.1ubuntu2.17`

Binary Packages:

- `apt=1.0.1ubuntu2.17`
- `apt-utils=1.0.1ubuntu2.17`
- `libapt-inst1.5:amd64=1.0.1ubuntu2.17`
- `libapt-pkg4.12:amd64=1.0.1ubuntu2.17`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/apt-utils/copyright`, `/usr/share/doc/libapt-inst1.5/copyright`, `/usr/share/doc/libapt-pkg4.12/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.0.1ubuntu2.17
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.0.1ubuntu2.17.dsc' apt_1.0.1ubuntu2.17.dsc 2393 SHA256:a49fcf03e2260e611878e70666e35509bbdfbd09cbc52e536a85e1b79b908a31
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.0.1ubuntu2.17.tar.xz' apt_1.0.1ubuntu2.17.tar.xz 1782544 SHA256:bdf6070f907a9f8eaa2b3afa84f27ceac98ecae9f4fac9bdfe85fce1e2b0067c
```

### `dpkg` source package: `attr=1:2.4.47-1ubuntu1`

Binary Packages:

- `libattr1:amd64=1:2.4.47-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-1ubuntu1.dsc' attr_2.4.47-1ubuntu1.dsc 2283 SHA256:be3cf7847c9ba3e376f9dce30a089c7e4e74e7d0c2abb9c6d40609b697a16e9b
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-1ubuntu1.debian.tar.bz2' attr_2.4.47-1ubuntu1.debian.tar.bz2 8626 SHA256:76b541398835b896b0b947caddd43d1026181688661c3503db38d3e6d553e7b5
```

### `dpkg` source package: `audit=1:2.3.2-2ubuntu1`

Binary Packages:

- `libaudit-common=1:2.3.2-2ubuntu1`
- `libaudit1:amd64=1:2.3.2-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.3.2-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.3.2-2ubuntu1.dsc' audit_2.3.2-2ubuntu1.dsc 2431 SHA256:2670ea995e20abd7cc3fb8cc86f66d9c040e156ffccbeea34324759d1ea3e750
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.3.2.orig.tar.gz' audit_2.3.2.orig.tar.gz 947897 SHA256:8872e0b5392888789061db8034164305ef0e1b34543e1e7004d275f039081d29
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.3.2-2ubuntu1.debian.tar.gz' audit_2.3.2-2ubuntu1.debian.tar.gz 14702 SHA256:9aa22280f6248f0f750a6aea84624907d796872ecdca17936cd48888a50a4104
```

### `dpkg` source package: `autoconf=2.69-6`

Binary Packages:

- `autoconf=2.69-6`

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
$ apt-get source -qq --print-uris autoconf=2.69-6
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-6.dsc' autoconf_2.69-6.dsc 1937 SHA256:1c6b222157e1f9b4aca97ca65f56801a62ccaff4036f5ebb378cb11198e36127
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-6.debian.tar.xz' autoconf_2.69-6.debian.tar.xz 20380 SHA256:907e4ee5e17ae705951fbf7bbc6910c542ac22af47502f2b4782cf62e3c57b5a
```

### `dpkg` source package: `automake-1.14=1:1.14.1-2ubuntu1`

Binary Packages:

- `automake=1:1.14.1-2ubuntu1`

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
$ apt-get source -qq --print-uris automake-1.14=1:1.14.1-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.14/automake-1.14_1.14.1-2ubuntu1.dsc' automake-1.14_1.14.1-2ubuntu1.dsc 1678 SHA256:a46d5e01b080bc8b3e4c31429114896e33c9658111656cc51286912fbf458932
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.14/automake-1.14_1.14.1.orig.tar.xz' automake-1.14_1.14.1.orig.tar.xz 1488984 SHA256:a9b4f04b8b69cac2e832a38a718943aa976dbdad0097211f8b3448afdacf0669
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.14/automake-1.14_1.14.1-2ubuntu1.debian.tar.gz' automake-1.14_1.14.1-2ubuntu1.debian.tar.gz 10070 SHA256:e26585a67b19275ec6b08e26c476f00cc3184d3f5290696d175c6acd470ebf46
```

### `dpkg` source package: `autotools-dev=20130810.1`

Binary Packages:

- `autotools-dev=20130810.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20130810.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20130810.1.dsc' autotools-dev_20130810.1.dsc 1307 SHA256:9b79e07569ab873129f54bb4e87e8033d3dfb2221ac8e97f7ac1e73b1c0f8e11
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20130810.1.tar.gz' autotools-dev_20130810.1.tar.gz 70653 SHA256:554f282507d21d8796c16c53442b171056ac67d651ae32a3461e7aaf6cac2e85
```

### `dpkg` source package: `base-files=7.2ubuntu5.5`

Binary Packages:

- `base-files=7.2ubuntu5.5`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=7.2ubuntu5.5
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_7.2ubuntu5.5.dsc' base-files_7.2ubuntu5.5.dsc 1557 SHA256:594a4444d2fcddc11ba05e3c178d8f6eb3dd68ce10567b1f7d39bf13e7c75823
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_7.2ubuntu5.5.tar.xz' base-files_7.2ubuntu5.5.tar.xz 60544 SHA256:9b08be5d3fd11ce1536c3ce0ebd887d5041a9388cf1b4937f0dfd00cc372b2d3
```

### `dpkg` source package: `base-passwd=3.5.33`

Binary Packages:

- `base-passwd=3.5.33`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.33
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.33.dsc' base-passwd_3.5.33.dsc 1732 SHA256:c54a91a437063727523369326fad81757511a952ffcfd7ebfc23e9351b466a61
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.33.tar.xz' base-passwd_3.5.33.tar.xz 48832 SHA256:da505760962eb27477f1854f9f818284043cf6cea703b2301a00b8d0ed8303bb
```

### `dpkg` source package: `bash=4.3-7ubuntu1.5`

Binary Packages:

- `bash=4.3-7ubuntu1.5`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.3-7ubuntu1.5
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-7ubuntu1.5.dsc' bash_4.3-7ubuntu1.5.dsc 2259 SHA256:c24e9ea41fa706ff657de58f9232d6db823bff7e56b2d55062f458bcdcb20914
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3.orig.tar.gz' bash_4.3.orig.tar.gz 7516231 SHA256:b2fe79ddf9e7abdb4695e3070afa866d2a94a58d1cc9d731585330c753815491
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-7ubuntu1.5.debian.tar.gz' bash_4.3-7ubuntu1.5.debian.tar.gz 97906 SHA256:6cd025d14f7ad1accef69602acebdadb79b4b0a332c97da200be61978920c7d6
```

### `dpkg` source package: `binutils=2.24-5ubuntu14.1`

Binary Packages:

- `binutils=2.24-5ubuntu14.1`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.24-5ubuntu14.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.24-5ubuntu14.1.dsc' binutils_2.24-5ubuntu14.1.dsc 2390 SHA256:7c6ef02a14c8ba27a0569b1669c67545f2a7f3c6da6d0f5e8d6ab2b49b4be861
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.24.orig.tar.gz' binutils_2.24.orig.tar.gz 30809913 SHA256:4930b2886309112c00a279483eaef2f0f8e1b1b62010e0239c16b22af7c346d4
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.24-5ubuntu14.1.diff.gz' binutils_2.24-5ubuntu14.1.diff.gz 308222 SHA256:2302939dbf38606e68832771c1e2ec50806ab32c89b88e28d1a33c738642fdf7
```

### `dpkg` source package: `busybox=1:1.21.0-1ubuntu1`

Binary Packages:

- `busybox-initramfs=1:1.21.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/busybox-initramfs/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris busybox=1:1.21.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/busybox/busybox_1.21.0-1ubuntu1.dsc' busybox_1.21.0-1ubuntu1.dsc 2312 SHA256:ca614e3a89772689f97aca3fa4c4e577faeef4ea12ac8835a6abf2f81e25423d
'http://archive.ubuntu.com/ubuntu/pool/main/b/busybox/busybox_1.21.0.orig.tar.bz2' busybox_1.21.0.orig.tar.bz2 2200841 SHA256:eb9d268627783297f5f459cb9bd61a94e395dc7cb3647e10ec186e0159aa36ed
'http://archive.ubuntu.com/ubuntu/pool/main/b/busybox/busybox_1.21.0-1ubuntu1.debian.tar.gz' busybox_1.21.0-1ubuntu1.debian.tar.gz 67922 SHA256:e45b32b2b37376a5df57a1c722243112f3f86e1bb02861c4230f65c7e86e24d1
```

### `dpkg` source package: `bzip2=1.0.6-5`

Binary Packages:

- `bzip2=1.0.6-5`
- `libbz2-1.0:amd64=1.0.6-5`
- `libbz2-dev:amd64=1.0.6-5`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-5
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-5.dsc' bzip2_1.0.6-5.dsc 1751 SHA256:6ca88d69365722a4d442b9bcd7ada4c3b538e385af48eb0c2becf8ff57fd7745
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-5.debian.tar.bz2' bzip2_1.0.6-5.debian.tar.bz2 60984 SHA256:182c087bbd173bfcc2b0f4210c790a03f3d49876f6250213332832319b7b5758
```

### `dpkg` source package: `bzr=2.6.0+bzr6593-1ubuntu1.5`

Binary Packages:

- `bzr=2.6.0+bzr6593-1ubuntu1.5`
- `python-bzrlib=2.6.0+bzr6593-1ubuntu1.5`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.6.0+bzr6593-1ubuntu1.5
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.6.0+bzr6593-1ubuntu1.5.dsc' bzr_2.6.0+bzr6593-1ubuntu1.5.dsc 1985 SHA256:76b80e0b5c83544036204e893664ece722b8dc22e94bd952dcf8b08a0346163f
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.6.0+bzr6593.orig.tar.gz' bzr_2.6.0+bzr6593.orig.tar.gz 10943579 SHA256:e5e0688ee271078435a36d3742ff6ca22f9e8b17a5fca66488e07cdeb36a2ab7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.6.0+bzr6593-1ubuntu1.5.debian.tar.xz' bzr_2.6.0+bzr6593-1ubuntu1.5.debian.tar.xz 44888 SHA256:6d22be767f3339720c9f3355399f4dd1a97c4a7f0b2733d5b4931b45154da87f
```

### `dpkg` source package: `ca-certificates=20160104ubuntu0.14.04.1`

Binary Packages:

- `ca-certificates=20160104ubuntu0.14.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20160104ubuntu0.14.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20160104ubuntu0.14.04.1.dsc' ca-certificates_20160104ubuntu0.14.04.1.dsc 1890 SHA256:965cef08aeeb29e07f73f85a7ccdc2334bb816c214c760f1b0d13589c6b27f0d
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20160104ubuntu0.14.04.1.tar.gz' ca-certificates_20160104ubuntu0.14.04.1.tar.gz 374551 SHA256:3d12d4f6d146e384121eeb3e69540297db5e02257032f6f099cb874d5f160bc6
```

### `dpkg` source package: `cairo=1.13.0~20140204-0ubuntu1.1`

Binary Packages:

- `libcairo-gobject2:amd64=1.13.0~20140204-0ubuntu1.1`
- `libcairo-script-interpreter2:amd64=1.13.0~20140204-0ubuntu1.1`
- `libcairo2:amd64=1.13.0~20140204-0ubuntu1.1`
- `libcairo2-dev=1.13.0~20140204-0ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.13.0~20140204-0ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.13.0~20140204-0ubuntu1.1.dsc' cairo_1.13.0~20140204-0ubuntu1.1.dsc 2292 SHA256:53420f4b5ee334af03aed5506fab5b2b437109caa9a72bd2b8680968212a6baf
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.13.0~20140204.orig.tar.xz' cairo_1.13.0~20140204.orig.tar.xz 37838088 SHA256:5941f1da777398f71757dbb91fa3df27cddd189cd948f0ecf1ca53d96295e0c9
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.13.0~20140204-0ubuntu1.1.debian.tar.xz' cairo_1.13.0~20140204-0ubuntu1.1.debian.tar.xz 34940 SHA256:ec95205cef81b2bc6a22987a9a1d8e3bfb19f1f7d0f0d92b5cf0f86d62cf94eb
```

### `dpkg` source package: `cdebconf=0.187ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.187ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.187ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.187ubuntu1.dsc' cdebconf_0.187ubuntu1.dsc 2818 SHA256:4414e1d23c12d03d5bc9fade64c91f7bcc981657a57aa2cefcf480bb73162a81
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.187ubuntu1.tar.gz' cdebconf_0.187ubuntu1.tar.gz 347705 SHA256:97578b23baa4355946d0faa62b6092162a8875869cf008eeb03648987458bdc5
```

### `dpkg` source package: `cgmanager=0.24-0ubuntu7.5`

Binary Packages:

- `libcgmanager0:amd64=0.24-0ubuntu7.5`

Licenses: (parsed from: `/usr/share/doc/libcgmanager0/copyright`)

- `GPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris cgmanager=0.24-0ubuntu7.5
'http://archive.ubuntu.com/ubuntu/pool/main/c/cgmanager/cgmanager_0.24-0ubuntu7.5.dsc' cgmanager_0.24-0ubuntu7.5.dsc 1807 SHA256:7d30218a7be504d9f38ef5cb5a3e3717e3dbc3d00dec48e3637bd67b1ae97bda
'http://archive.ubuntu.com/ubuntu/pool/main/c/cgmanager/cgmanager_0.24.orig.tar.gz' cgmanager_0.24.orig.tar.gz 383161 SHA256:0e7f9d3e8b587705a2ef77adecec178b7fa7533c7c17231bf1b6145549abb87f
'http://archive.ubuntu.com/ubuntu/pool/main/c/cgmanager/cgmanager_0.24-0ubuntu7.5.debian.tar.xz' cgmanager_0.24-0ubuntu7.5.debian.tar.xz 15828 SHA256:23c316fa2c2b40befca79dd1739d61a89e0883f1d58da49c9ce9f1564883abe6
```

### `dpkg` source package: `cloog=0.18.2-1`

Binary Packages:

- `libcloog-isl4:amd64=0.18.2-1`

Licenses: (parsed from: `/usr/share/doc/libcloog-isl4/copyright`)

- `GFDL`
- `GPL`
- `LGPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cloog=0.18.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cloog/cloog_0.18.2-1.dsc' cloog_0.18.2-1.dsc 1299 SHA256:a7a186409b4436bc4202c01f6fca47380916176d18fc457805469596c151fd6e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cloog/cloog_0.18.2.orig.tar.gz' cloog_0.18.2.orig.tar.gz 2376691 SHA256:ba3cc2d3750dfcb51f65ce029f0dda31347b8eeed216b1bac6170ab12d967581
'http://archive.ubuntu.com/ubuntu/pool/main/c/cloog/cloog_0.18.2-1.debian.tar.xz' cloog_0.18.2-1.debian.tar.xz 7824 SHA256:45cb83d37782fc705aac74942b8adfaa22680089f5b5537f0539daec89c08438
```

### `dpkg` source package: `configobj=4.7.2+ds-5build1`

Binary Packages:

- `python-configobj=4.7.2+ds-5build1`

Licenses: (parsed from: `/usr/share/doc/python-configobj/copyright`)

- `Voidspace-BSD`

Source:

```console
$ apt-get source -qq --print-uris configobj=4.7.2+ds-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_4.7.2+ds-5build1.dsc' configobj_4.7.2+ds-5build1.dsc 1540 SHA256:11f622ccc6030ab57299f849b92de07c1a6122554e417213e1a96adc50564a5a
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_4.7.2+ds.orig.tar.gz' configobj_4.7.2+ds.orig.tar.gz 132671 SHA256:d3ff0d76e5fa5dec841f84ebeb264da4c0c617fa4c34d58d1b4bfda6cb54f5b1
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_4.7.2+ds-5build1.debian.tar.gz' configobj_4.7.2+ds-5build1.debian.tar.gz 8094 SHA256:f832b2ce1f2c140fe1d3bf2455136bc5c9ea2040188e7ab9546530255de60077
```

### `dpkg` source package: `console-setup=1.70ubuntu8`

Binary Packages:

- `console-setup=1.70ubuntu8`
- `keyboard-configuration=1.70ubuntu8`

Licenses: (parsed from: `/usr/share/doc/console-setup/copyright`, `/usr/share/doc/keyboard-configuration/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris console-setup=1.70ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/main/c/console-setup/console-setup_1.70ubuntu8.dsc' console-setup_1.70ubuntu8.dsc 2832 SHA256:87dd6b6e75206230254e1f56df87894a503d954de70b589c36d968e61f285775
'http://archive.ubuntu.com/ubuntu/pool/main/c/console-setup/console-setup_1.70ubuntu8.tar.gz' console-setup_1.70ubuntu8.tar.gz 2819451 SHA256:d3cd3fa8419c3c8a907303079c828329740b0aa280601b1fe81ae2d693386741
```

### `dpkg` source package: `coreutils=8.21-1ubuntu5.4`

Binary Packages:

- `coreutils=8.21-1ubuntu5.4`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.21-1ubuntu5.4
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.21-1ubuntu5.4.dsc' coreutils_8.21-1ubuntu5.4.dsc 1993 SHA256:d844bccd1bca7b30da9773b8682869d0b2ffcdb9d8a54655633a419883f315bc
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.21.orig.tar.gz' coreutils_8.21.orig.tar.gz 12280080 SHA256:9b6e2d1cf119e94fc59a2ffeccb8af400c1b481646d8d2f0ebe6136ba01516ca
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.21-1ubuntu5.4.diff.gz' coreutils_8.21-1ubuntu5.4.diff.gz 44759 SHA256:0d2690aab7f9d8aa65861b5648c3bebc8a5d872fe68a694aae70ddf9393d8372
```

### `dpkg` source package: `cpio=2.11+dfsg-1ubuntu1.2`

Binary Packages:

- `cpio=2.11+dfsg-1ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/cpio/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris cpio=2.11+dfsg-1ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cpio/cpio_2.11+dfsg-1ubuntu1.2.dsc' cpio_2.11+dfsg-1ubuntu1.2.dsc 1989 SHA256:25f24a9bad9beba0a482940079711d710872ec1f9e7a089a9a337109ca802bc2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cpio/cpio_2.11+dfsg.orig.tar.xz' cpio_2.11+dfsg.orig.tar.xz 802940 SHA256:f3208df43692895e1ff84cb7625c6cc27b431c9a321fe414faed402b70660cd0
'http://archive.ubuntu.com/ubuntu/pool/main/c/cpio/cpio_2.11+dfsg-1ubuntu1.2.debian.tar.bz2' cpio_2.11+dfsg-1ubuntu1.2.debian.tar.bz2 37788 SHA256:409d5eb12ed0ae110a5473f8ccd168a352e6e1cdaafdc0a2c4fc20c618f3f81a
```

### `dpkg` source package: `cron=3.0pl1-124ubuntu2`

Binary Packages:

- `cron=3.0pl1-124ubuntu2`

Licenses: (parsed from: `/usr/share/doc/cron/copyright`)

- `Artistic`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `Paul Vixie's license`

Source:

```console
$ apt-get source -qq --print-uris cron=3.0pl1-124ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cron/cron_3.0pl1-124ubuntu2.dsc' cron_3.0pl1-124ubuntu2.dsc 1389 SHA256:f08d9fa589858537c994bf86015051c402b70025a6bf7f74559986c7dfffbcaf
'http://archive.ubuntu.com/ubuntu/pool/main/c/cron/cron_3.0pl1.orig.tar.gz' cron_3.0pl1.orig.tar.gz 59245 SHA256:d931e0688005dfa85cfdb60e19bf0a3848ebfa3ee3415bf2a6ea3ea9e5bcfd21
'http://archive.ubuntu.com/ubuntu/pool/main/c/cron/cron_3.0pl1-124ubuntu2.diff.gz' cron_3.0pl1-124ubuntu2.diff.gz 98350 SHA256:282213a327434e44b0f0f6ac23da5f0f4024cf284ca6e008a0b774bb76102dab
```

### `dpkg` source package: `curl=7.35.0-1ubuntu2.10`

Binary Packages:

- `curl=7.35.0-1ubuntu2.10`
- `libcurl3:amd64=7.35.0-1ubuntu2.10`
- `libcurl3-gnutls:amd64=7.35.0-1ubuntu2.10`
- `libcurl4-openssl-dev:amd64=7.35.0-1ubuntu2.10`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`

Source:

```console
$ apt-get source -qq --print-uris curl=7.35.0-1ubuntu2.10
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.35.0-1ubuntu2.10.dsc' curl_7.35.0-1ubuntu2.10.dsc 2741 SHA256:2fb4cdd91ed6bd0e262c16d1e6e32a33a6f9d4003834ef3e9b010ed2e24afc06
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.35.0.orig.tar.gz' curl_7.35.0.orig.tar.gz 3544496 SHA256:917d118fc5d61e9dd1538d6519bd93bbebf2e866882419781c2e0fdb2bc42121
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.35.0-1ubuntu2.10.debian.tar.gz' curl_7.35.0-1ubuntu2.10.debian.tar.gz 59782 SHA256:72a2c03db7f4eac287a70a8063d3031620e9cf9d86f0e357dd78ba755e926c18
```

### `dpkg` source package: `cyrus-sasl2=2.1.25.dfsg1-17build1`

Binary Packages:

- `libsasl2-2:amd64=2.1.25.dfsg1-17build1`
- `libsasl2-modules-db:amd64=2.1.25.dfsg1-17build1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-2-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.25.dfsg1-17build1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.25.dfsg1-17build1.dsc' cyrus-sasl2_2.1.25.dfsg1-17build1.dsc 3408 SHA256:c14a864dc372de811e6c3e008e24bbd952d2f6aa126110722cfdf89eb765d28e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.25.dfsg1.orig.tar.gz' cyrus-sasl2_2.1.25.dfsg1.orig.tar.gz 1489145 SHA256:523f752715669c3e44b663b16929257c8868db23f427552930ca2fdb24c8d1c3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.25.dfsg1-17build1.debian.tar.gz' cyrus-sasl2_2.1.25.dfsg1-17build1.debian.tar.gz 110043 SHA256:ff773406a32072f7bbd477473a19d1175adee70a1d6cb243734ad93660213859
```

### `dpkg` source package: `dash=0.5.7-4ubuntu1`

Binary Packages:

- `dash=0.5.7-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.7-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.7-4ubuntu1.dsc' dash_0.5.7-4ubuntu1.dsc 1835 SHA256:7143c21541e6a833a99c48ad2bdd47bb5e770c83b1173459aaf85ee8f1dd70d2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.7.orig.tar.gz' dash_0.5.7.orig.tar.gz 223794 SHA256:ae89fa9f1145b7748cf0740e1df04cd52fdf8a285da4911dd0f04983efba4e39
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.7-4ubuntu1.diff.gz' dash_0.5.7-4ubuntu1.diff.gz 57631 SHA256:e55bbd7eb0336be61e9c396e54b58f94df09ef4b98cef8bed5d394f394163a0f
```

### `dpkg` source package: `db-defaults=1:5.3.21~exp1ubuntu1`

Binary Packages:

- `libdb-dev:amd64=1:5.3.21~exp1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=1:5.3.21~exp1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21~exp1ubuntu1.dsc' db-defaults_5.3.21~exp1ubuntu1.dsc 2002 SHA256:c07782daad986fca6e5507b4663c6008df7800775a9acd26a4bf88e10e715e54
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21~exp1ubuntu1.tar.gz' db-defaults_5.3.21~exp1ubuntu1.tar.gz 3044 SHA256:ed9cba73f22533a37a4eb345b5e40daa3a2a6f1a000df0cc19e070487a514a43
```

### `dpkg` source package: `db5.3=5.3.28-3ubuntu3`

Binary Packages:

- `libdb5.3:amd64=5.3.28-3ubuntu3`
- `libdb5.3-dev=5.3.28-3ubuntu3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-3ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-3ubuntu3.dsc' db5.3_5.3.28-3ubuntu3.dsc 2297 SHA256:4344a6e3694f46ac4634f3bd6a5051c20aae25530dc7cc57aead12a9e1d87ffd
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-3ubuntu3.debian.tar.gz' db5.3_5.3.28-3ubuntu3.debian.tar.gz 31731 SHA256:5d95c5c9d64931463cbf5d525bd9e874ab985304a45e9b585dfe8218e2ead209
```

### `dpkg` source package: `dbus=1.6.18-0ubuntu4.5`

Binary Packages:

- `libdbus-1-3:amd64=1.6.18-0ubuntu4.5`

Licenses: (parsed from: `/usr/share/doc/libdbus-1-3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris dbus=1.6.18-0ubuntu4.5
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.6.18-0ubuntu4.5.dsc' dbus_1.6.18-0ubuntu4.5.dsc 2671 SHA256:df376491c0c47b9a4a87c5164a5687db3913dd542164dac9bbb6966a91a9b79e
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.6.18.orig.tar.gz' dbus_1.6.18.orig.tar.gz 1916553 SHA256:7085a0895a9eb11a952394cdbea6d8b4358e17cb991fed0e8fb85e2b9e686dcd
'http://archive.ubuntu.com/ubuntu/pool/main/d/dbus/dbus_1.6.18-0ubuntu4.5.debian.tar.gz' dbus_1.6.18-0ubuntu4.5.debian.tar.gz 85290 SHA256:d23474258a67b0a678e02259c85caa97d61d1730463295fb5b055b369ed2bf60
```

### `dpkg` source package: `debconf=1.5.51ubuntu2`

Binary Packages:

- `debconf=1.5.51ubuntu2`
- `debconf-i18n=1.5.51ubuntu2`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`, `/usr/share/doc/debconf-i18n/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.51ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.51ubuntu2.dsc' debconf_1.5.51ubuntu2.dsc 1426 SHA256:a2a94f0129c4eedb5df5f52cfe2ec7024aa190bcc991ad41d4c0e672040b8fb1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.51ubuntu2.tar.gz' debconf_1.5.51ubuntu2.tar.gz 1007569 SHA256:65856bb62c3fc9f1b827c6af51f82166df3b2ff5a9daecbc7e28aa99342af5fc
```

### `dpkg` source package: `debianutils=4.4`

Binary Packages:

- `debianutils=4.4`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.4
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.4.dsc' debianutils_4.4.dsc 1560 SHA256:e365ad42af528f46eb117ef244216aaf265372f2b92635b28452a8f0d981bb17
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.4.tar.gz' debianutils_4.4.tar.gz 272098 SHA256:190850cdd6b5302e0a1ba1aaed1bc7074d67d3bd8d04c613f242f7145afa53a6
```

### `dpkg` source package: `dh-python=1.20140128-1ubuntu8.2`

Binary Packages:

- `dh-python=1.20140128-1ubuntu8.2`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=1.20140128-1ubuntu8.2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_1.20140128-1ubuntu8.2.dsc' dh-python_1.20140128-1ubuntu8.2.dsc 2095 SHA256:46e1918eb6d52f34864fd6debec52e601c73124507050909ddde8794b3da7617
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_1.20140128.orig.tar.xz' dh-python_1.20140128.orig.tar.xz 54668 SHA256:e02c5f39b0ed09654973ad9ded6e28643078dd9a336e2e7d49f394cdeaae7e51
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_1.20140128-1ubuntu8.2.debian.tar.xz' dh-python_1.20140128-1ubuntu8.2.debian.tar.xz 8828 SHA256:e15e7a6462ea0fe8ccbe872e840c99b4e26e6a3e545dfbb1ee069df4d49be67b
```

### `dpkg` source package: `diffutils=1:3.3-1`

Binary Packages:

- `diffutils=1:3.3-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-1.dsc' diffutils_3.3-1.dsc 1427 SHA256:72df1fed003b47509a063dfa8aa89108c884cd3bf52a06ce40e1ffb61f5a256c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3.orig.tar.xz' diffutils_3.3.orig.tar.xz 1197832 SHA256:a25e89a8ab65fded1731e4186be1bb25cda967834b6df973599cdcd5abdfc19c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-1.debian.tar.gz' diffutils_3.3-1.debian.tar.gz 10584 SHA256:23765ea43cd1b4e5e504ce0984a16e27d5c01e9272cba489ebbebd217f227fc7
```

### `dpkg` source package: `djvulibre=3.5.25.4-3`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.25.4-3`
- `libdjvulibre-text=3.5.25.4-3`
- `libdjvulibre21:amd64=3.5.25.4-3`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.25.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.25.4-3.dsc' djvulibre_3.5.25.4-3.dsc 1728 SHA256:d86cbc780bf88610d88f2f5ab22187c3cfbc65c4e8538037134575e4ddb07fdc
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.25.4.orig.tar.gz' djvulibre_3.5.25.4.orig.tar.gz 3575460 SHA256:6d8b3414d8ec87c5a40d3dde6fee54beebee6cbf6ec56aa7851dfbca9aaa3f36
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.25.4-3.debian.tar.gz' djvulibre_3.5.25.4-3.debian.tar.gz 37541 SHA256:c887710a088e8a3e680437f3c21c4a0ab47a7bbb98d529c3e9ce7d640a6fadd5
```

### `dpkg` source package: `dpkg=1.17.5ubuntu5.7`

Binary Packages:

- `dpkg=1.17.5ubuntu5.7`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.17.5ubuntu5.7
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.17.5ubuntu5.7.dsc' dpkg_1.17.5ubuntu5.7.dsc 2215 SHA256:5337537eecf746c862c12b61508751448d727c37f83216980f5ccc27abf00b5e
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.17.5ubuntu5.7.tar.xz' dpkg_1.17.5ubuntu5.7.tar.xz 4019728 SHA256:7b1d8a24bfba2cbc1609bc4748b80b92ec924812baad3a6027e015bca5a702a9
```

### `dpkg` source package: `e2fsprogs=1.42.9-3ubuntu1.3`

Binary Packages:

- `comerr-dev=2.1-1.42.9-3ubuntu1.3`
- `e2fslibs:amd64=1.42.9-3ubuntu1.3`
- `e2fsprogs=1.42.9-3ubuntu1.3`
- `libcomerr2:amd64=1.42.9-3ubuntu1.3`
- `libss2:amd64=1.42.9-3ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.42.9-3ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.9-3ubuntu1.3.dsc' e2fsprogs_1.42.9-3ubuntu1.3.dsc 2129 SHA256:69483e35def900f5d8ba37546365002b8703ba0229800c936c09caf182e6f3d2
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.9.orig.tar.gz' e2fsprogs_1.42.9.orig.tar.gz 6069173 SHA256:2f92ac06e92fa00f2ada3ee67dad012d74d685537527ad1241d82f2d041f2802
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.9-3ubuntu1.3.debian.tar.gz' e2fsprogs_1.42.9-3ubuntu1.3.debian.tar.gz 137885 SHA256:541cf9e092ef6d6e45fddd5fa0b44903f597ec045cbb1358db109e994e97fceb
```

### `dpkg` source package: `eglibc=2.19-0ubuntu6.9`

Binary Packages:

- `libc-bin=2.19-0ubuntu6.9`
- `libc-dev-bin=2.19-0ubuntu6.9`
- `libc6:amd64=2.19-0ubuntu6.9`
- `libc6-dev:amd64=2.19-0ubuntu6.9`
- `multiarch-support=2.19-0ubuntu6.9`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris eglibc=2.19-0ubuntu6.9
'http://archive.ubuntu.com/ubuntu/pool/main/e/eglibc/eglibc_2.19-0ubuntu6.9.dsc' eglibc_2.19-0ubuntu6.9.dsc 5810 SHA256:32810667e46de5c38e7580d91a61e77a1e9cdb1e4f180e8378ac2ea4a279533d
'http://archive.ubuntu.com/ubuntu/pool/main/e/eglibc/eglibc_2.19.orig.tar.xz' eglibc_2.19.orig.tar.xz 12610800 SHA256:e5d30be72b702dffae527779af1be755f0dfbf13c171998a04f7265cd4da131f
'http://archive.ubuntu.com/ubuntu/pool/main/e/eglibc/eglibc_2.19-0ubuntu6.9.debian.tar.xz' eglibc_2.19-0ubuntu6.9.debian.tar.xz 1037188 SHA256:dd13d6ef1dc6fa6aba2277ad36a58709ff3973501dac1f8df3faed35b5c0f280
```

### `dpkg` source package: `eject=2.1.5+deb1+cvs20081104-13.1`

Binary Packages:

- `eject=2.1.5+deb1+cvs20081104-13.1`

Licenses: (parsed from: `/usr/share/doc/eject/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris eject=2.1.5+deb1+cvs20081104-13.1
'http://archive.ubuntu.com/ubuntu/pool/main/e/eject/eject_2.1.5+deb1+cvs20081104-13.1.dsc' eject_2.1.5+deb1+cvs20081104-13.1.dsc 2070 SHA256:62ba02264bc960e521ad85aba20a7e940c3922f2cd614d8387a83a4dabe1e9a3
'http://archive.ubuntu.com/ubuntu/pool/main/e/eject/eject_2.1.5+deb1+cvs20081104.orig.tar.gz' eject_2.1.5+deb1+cvs20081104.orig.tar.gz 120658 SHA256:f5c457b92d7bfc20924ebdc8515661222b40e036eae6e2fada4220d47884e9c1
'http://archive.ubuntu.com/ubuntu/pool/main/e/eject/eject_2.1.5+deb1+cvs20081104-13.1.diff.gz' eject_2.1.5+deb1+cvs20081104-13.1.diff.gz 140473 SHA256:9ca7be739556faab2c87e0f6815312e9c67b5907bf9d17d7a8e0ff93cf955820
```

### `dpkg` source package: `expat=2.1.0-4ubuntu1.3`

Binary Packages:

- `libexpat1:amd64=2.1.0-4ubuntu1.3`
- `libexpat1-dev:amd64=2.1.0-4ubuntu1.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.1.0-4ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0-4ubuntu1.3.dsc' expat_2.1.0-4ubuntu1.3.dsc 2279 SHA256:c9b112be49ffed29676b4188701ca79e13fc9183d1b52117a177a995bea6b1c9
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0.orig.tar.gz' expat_2.1.0.orig.tar.gz 562616 SHA256:823705472f816df21c8f6aa026dd162b280806838bb55b3432b0fb1fcca7eb86
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0-4ubuntu1.3.debian.tar.gz' expat_2.1.0-4ubuntu1.3.debian.tar.gz 24918 SHA256:1f05505bfd920ae2dca192b0a568b73b62ed9d9fd6d72a503227ae5705b89d8d
```

### `dpkg` source package: `fftw3=3.3.3-7ubuntu3`

Binary Packages:

- `libfftw3-double3:amd64=3.3.3-7ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.3-7ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.3-7ubuntu3.dsc' fftw3_3.3.3-7ubuntu3.dsc 2582 SHA256:496e417772b1491b733065431183e3f2adeb65fd0a300b0e3f750cef4ef95251
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.3.orig.tar.gz' fftw3_3.3.3.orig.tar.gz 3920661 SHA256:85cdfc0a0ba10d8fa4f0f8e733aac1a5936c859832a9e3d5c0731fb5c54a97f3
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.3-7ubuntu3.debian.tar.gz' fftw3_3.3.3-7ubuntu3.debian.tar.gz 16073 SHA256:4c4a2f4caa1e4dced6646c18f70d69a5fcf054b4c8a2022a4d39d8adc426a5e0
```

### `dpkg` source package: `file=1:5.14-2ubuntu3.3`

Binary Packages:

- `file=1:5.14-2ubuntu3.3`
- `libmagic1:amd64=1:5.14-2ubuntu3.3`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.14-2ubuntu3.3
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.14-2ubuntu3.3.dsc' file_5.14-2ubuntu3.3.dsc 2089 SHA256:6935686df3c0dfc9a5d936b167f33f9629aa0e1924703c6d68d5a486317bdbc5
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.14.orig.tar.gz' file_5.14.orig.tar.gz 648552 SHA256:461ba01dd0900a3b7c2dcd901b04903192c07887a9c1928af0be507572c77fe4
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.14-2ubuntu3.3.debian.tar.xz' file_5.14-2ubuntu3.3.debian.tar.xz 41356 SHA256:7400a64b2d8d9a7c288320d42d7a77a9626ed849aaa500e902a6387155d313c2
```

### `dpkg` source package: `findutils=4.4.2-7`

Binary Packages:

- `findutils=4.4.2-7`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.2`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.4.2-7
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.4.2-7.dsc' findutils_4.4.2-7.dsc 1967 SHA256:02cfd094ec168a2a1604822a6012fda1525a792d9834112e09293ec11ebfaae0
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.4.2.orig.tar.gz' findutils_4.4.2.orig.tar.gz 2149838 SHA256:434f32d171cbc0a5e72cfc5372c6fc4cb0e681f8dce566a0de5b6fccd702b62a
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.4.2-7.debian.tar.gz' findutils_4.4.2-7.debian.tar.gz 25449 SHA256:251b00023cab27e8d85b3844f1c69f009319d34d33aa4a996b183056c3cfe48a
```

### `dpkg` source package: `fontconfig=2.11.0-0ubuntu4.2`

Binary Packages:

- `fontconfig=2.11.0-0ubuntu4.2`
- `fontconfig-config=2.11.0-0ubuntu4.2`
- `libfontconfig1:amd64=2.11.0-0ubuntu4.2`
- `libfontconfig1-dev=2.11.0-0ubuntu4.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.11.0-0ubuntu4.2
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.0-0ubuntu4.2.dsc' fontconfig_2.11.0-0ubuntu4.2.dsc 2230 SHA256:8aa798708812fc7075b54ef61ac590b41c9a1c89417c3b851e0a0b4587643368
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.0.orig.tar.bz2' fontconfig_2.11.0.orig.tar.bz2 1541382 SHA256:cb0e0ef6f03bc8568e95653840bb07d5859dc89d7ce2cade9d94fcccf8c1a467
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.11.0-0ubuntu4.2.debian.tar.gz' fontconfig_2.11.0-0ubuntu4.2.debian.tar.gz 32363 SHA256:d14dfacc32e5e88e010c50164d4e1a19ba1d27c23f09e4ba718f51db72580a8e
```

### `dpkg` source package: `fonts-dejavu=2.34-1ubuntu1`

Binary Packages:

- `fonts-dejavu-core=2.34-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.34-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.34-1ubuntu1.dsc' fonts-dejavu_2.34-1ubuntu1.dsc 2522 SHA256:79352868caacd7cb287dfdce35b895a9ad6d28e711f049fbcaf4b62e09123627
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.34.orig.tar.bz2' fonts-dejavu_2.34.orig.tar.bz2 11329547 SHA256:b5ca9e671635a9fe04c791cdc82c707ba57380c2cc8de3f92451a039134b9027
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.34-1ubuntu1.debian.tar.gz' fonts-dejavu_2.34-1ubuntu1.debian.tar.gz 12581 SHA256:5edc433d65b330abb547455b22137326b8fa2e1bf09b7bcfdc5c0eeb8526a8e8
```

### `dpkg` source package: `freetype=2.5.2-1ubuntu2.5`

Binary Packages:

- `libfreetype6:amd64=2.5.2-1ubuntu2.5`
- `libfreetype6-dev=2.5.2-1ubuntu2.5`

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
$ apt-get source -qq --print-uris freetype=2.5.2-1ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.5.2-1ubuntu2.5.dsc' freetype_2.5.2-1ubuntu2.5.dsc 2173 SHA256:930c7ef28456568759b19af9478322c8bb56557bcaff4338a2d3de0206401f70
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.5.2.orig.tar.gz' freetype_2.5.2.orig.tar.gz 1971155 SHA256:5fda4996e43cfdf9b602a0eb5abde014f1a3c3b2d82bbb9b86942011c63f5c3a
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.5.2-1ubuntu2.5.diff.gz' freetype_2.5.2-1ubuntu2.5.diff.gz 85016 SHA256:cd28f23e989026e2a4a5e4715f919540857249013ee9ae70e7d845e830158e38
```

### `dpkg` source package: `fribidi=0.19.6-1`

Binary Packages:

- `libfribidi0:amd64=0.19.6-1`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris fribidi=0.19.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_0.19.6-1.dsc' fribidi_0.19.6-1.dsc 1900 SHA256:4a7603632a4ef1be1ee1c66d93b376646181d33989bf5bfdfc3cfee8a3b8ad36
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_0.19.6.orig.tar.bz2' fribidi_0.19.6.orig.tar.bz2 639022 SHA256:cba8b7423c817e5adf50d28ec9079d14eafcec9127b9e8c8f1960c5ad585e17d
'http://archive.ubuntu.com/ubuntu/pool/main/f/fribidi/fribidi_0.19.6-1.debian.tar.gz' fribidi_0.19.6-1.debian.tar.gz 7679 SHA256:a9e91880a3176b52d4e7cabf628e5df3820d8f07b0c2731761d74c04711ddf39
```

### `dpkg` source package: `gcc-4.8=4.8.4-2ubuntu1~14.04.3`

Binary Packages:

- `cpp-4.8=4.8.4-2ubuntu1~14.04.3`
- `g++-4.8=4.8.4-2ubuntu1~14.04.3`
- `gcc-4.8=4.8.4-2ubuntu1~14.04.3`
- `gcc-4.8-base:amd64=4.8.4-2ubuntu1~14.04.3`
- `libasan0:amd64=4.8.4-2ubuntu1~14.04.3`
- `libatomic1:amd64=4.8.4-2ubuntu1~14.04.3`
- `libgcc-4.8-dev:amd64=4.8.4-2ubuntu1~14.04.3`
- `libgomp1:amd64=4.8.4-2ubuntu1~14.04.3`
- `libitm1:amd64=4.8.4-2ubuntu1~14.04.3`
- `libquadmath0:amd64=4.8.4-2ubuntu1~14.04.3`
- `libstdc++-4.8-dev:amd64=4.8.4-2ubuntu1~14.04.3`
- `libstdc++6:amd64=4.8.4-2ubuntu1~14.04.3`
- `libtsan0:amd64=4.8.4-2ubuntu1~14.04.3`

Licenses: (parsed from: `/usr/share/doc/cpp-4.8/copyright`, `/usr/share/doc/g++-4.8/copyright`, `/usr/share/doc/gcc-4.8/copyright`, `/usr/share/doc/gcc-4.8-base/copyright`, `/usr/share/doc/libasan0/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libgcc-4.8-dev/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-4.8-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-4.8=4.8.4-2ubuntu1~14.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-4.8/gcc-4.8_4.8.4-2ubuntu1~14.04.3.dsc' gcc-4.8_4.8.4-2ubuntu1~14.04.3.dsc 13623 SHA256:9601f648504e37d678225d93cec1d6c213e57e1eadafbd979bc3691051832294
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-4.8/gcc-4.8_4.8.4.orig.tar.gz' gcc-4.8_4.8.4.orig.tar.gz 66451474 SHA256:0a714dd7a8415cb134c79784ff8b0a30da6d76afb998c21f6e95e1060d65466c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-4.8/gcc-4.8_4.8.4-2ubuntu1~14.04.3.diff.gz' gcc-4.8_4.8.4-2ubuntu1~14.04.3.diff.gz 1105598 SHA256:7d06787a3af90bdb7f417c47ed5da43d0aa265d1d49ca0a3bebf9bab8bada02f
```

### `dpkg` source package: `gcc-defaults=1.124ubuntu6`

Binary Packages:

- `cpp=4:4.8.2-1ubuntu6`
- `g++=4:4.8.2-1ubuntu6`
- `gcc=4:4.8.2-1ubuntu6`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.124ubuntu6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.124ubuntu6.dsc' gcc-defaults_1.124ubuntu6.dsc 2006 SHA256:b904064cd1ccb7bb3c9ba764d6ce1ab514b284292f91b43f78c1e7050638a604
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.124ubuntu6.tar.gz' gcc-defaults_1.124ubuntu6.tar.gz 65169 SHA256:293db41f365355469f9340210c3a97a2f5b40316389fc973ffef286b10036c2c
```

### `dpkg` source package: `gccgo-4.9=4.9.3-0ubuntu4`

Binary Packages:

- `gcc-4.9-base:amd64=4.9.3-0ubuntu4`
- `libgcc1:amd64=1:4.9.3-0ubuntu4`

Licenses: (parsed from: `/usr/share/doc/gcc-4.9-base/copyright`, `/usr/share/doc/libgcc1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gccgo-4.9=4.9.3-0ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-4.9/gccgo-4.9_4.9.3-0ubuntu4.dsc' gccgo-4.9_4.9.3-0ubuntu4.dsc 5121 SHA256:73297d31bf04527337fc651f7932fe0c1988155ba0161c038dfb2cd74db1b557
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-4.9/gccgo-4.9_4.9.3.orig.tar.gz' gccgo-4.9_4.9.3.orig.tar.gz 66772616 SHA256:9c02e40be799b2f5775d239646af781b8627db7abcbaf343223ca996413afc25
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-4.9/gccgo-4.9_4.9.3-0ubuntu4.diff.gz' gccgo-4.9_4.9.3-0ubuntu4.diff.gz 1003225 SHA256:afaa3366eee2e8552e89f90348a623ddcd8817ec415e2cd0fe061460cf706106
```

### `dpkg` source package: `gdbm=1.8.3-12build1`

Binary Packages:

- `libgdbm-dev=1.8.3-12build1`
- `libgdbm3:amd64=1.8.3-12build1`

Licenses: (parsed from: `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-12build1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-12build1.dsc' gdbm_1.8.3-12build1.dsc 1890 SHA256:54dd06a7cc031400016023a8ce24faf1f9ac9c858f909e1f515dea8032484a18
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-12build1.debian.tar.bz2' gdbm_1.8.3-12build1.debian.tar.bz2 15091 SHA256:5e511c9a6419501dd31e21af84431f41f8785e0f48d6475ebfc48fa49f20fdba
```

### `dpkg` source package: `gdk-pixbuf=2.30.7-0ubuntu1.6`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0=2.30.7-0ubuntu1.6`
- `libgdk-pixbuf2.0-0:amd64=2.30.7-0ubuntu1.6`
- `libgdk-pixbuf2.0-common=2.30.7-0ubuntu1.6`
- `libgdk-pixbuf2.0-dev=2.30.7-0ubuntu1.6`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-dev/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.30.7-0ubuntu1.6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.30.7-0ubuntu1.6.dsc' gdk-pixbuf_2.30.7-0ubuntu1.6.dsc 2921 SHA256:6761bb4d398c25e96cae902d6a5dba70d623cac2658aefca2c7cc7d459fcf510
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.30.7.orig.tar.xz' gdk-pixbuf_2.30.7.orig.tar.xz 1329096 SHA256:0aafc365eab1083a53f15e4828333b968219ffcb1a995ac6289c0147c9ffad06
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.30.7-0ubuntu1.6.debian.tar.gz' gdk-pixbuf_2.30.7-0ubuntu1.6.debian.tar.gz 21408 SHA256:6920d25bd0798d765bdc5f4e7c27fe979f8e52c20fe8cf325a6378cf84e93542
```

### `dpkg` source package: `geoip=1.6.0-1`

Binary Packages:

- `geoip-bin=1.6.0-1`
- `libgeoip-dev=1.6.0-1`
- `libgeoip1:amd64=1.6.0-1`

Licenses: (parsed from: `/usr/share/doc/geoip-bin/copyright`, `/usr/share/doc/libgeoip-dev/copyright`, `/usr/share/doc/libgeoip1/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris geoip=1.6.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/geoip/geoip_1.6.0-1.dsc' geoip_1.6.0-1.dsc 1889 SHA256:75e3db96d0217a0cd723ed850df5ddb2d58589c806e676111b20e9022e64b156
'http://archive.ubuntu.com/ubuntu/pool/main/g/geoip/geoip_1.6.0.orig.tar.gz' geoip_1.6.0.orig.tar.gz 160178 SHA256:61bed5907e9544d5b1071ea962a55154dd0827c04bd8a5814fb5863897c9a024
'http://archive.ubuntu.com/ubuntu/pool/main/g/geoip/geoip_1.6.0-1.debian.tar.gz' geoip_1.6.0-1.debian.tar.gz 16861 SHA256:47e5eaff3de44e6d1bef6923a257fe12127a577a22962fe52592540971af993d
```

### `dpkg` source package: `git=1:1.9.1-1ubuntu0.3`

Binary Packages:

- `git=1:1.9.1-1ubuntu0.3`
- `git-man=1:1.9.1-1ubuntu0.3`

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
$ apt-get source -qq --print-uris git=1:1.9.1-1ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_1.9.1-1ubuntu0.3.dsc' git_1.9.1-1ubuntu0.3.dsc 2794 SHA256:6ae143aab8f7b8e9814658c37d63cdcff9b42c3e26d7b0fbd627a4d91439a7e2
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_1.9.1.orig.tar.xz' git_1.9.1.orig.tar.xz 3384080 SHA256:f962fbce8c049f94ece1d1845cba1528c13ff82de7cc8d23cddb3d0c93c3a77b
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_1.9.1-1ubuntu0.3.debian.tar.gz' git_1.9.1-1ubuntu0.3.debian.tar.gz 616715 SHA256:46ab8fe3d9d3d06adea442a91bfddec59e13388f198c646d89c1dcee66b5a466
```

### `dpkg` source package: `glib2.0=2.40.2-0ubuntu1`

Binary Packages:

- `libglib2.0-0:amd64=2.40.2-0ubuntu1`
- `libglib2.0-bin=2.40.2-0ubuntu1`
- `libglib2.0-data=2.40.2-0ubuntu1`
- `libglib2.0-dev=2.40.2-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.40.2-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.40.2-0ubuntu1.dsc' glib2.0_2.40.2-0ubuntu1.dsc 3107 SHA256:6a7d0c35a8bac623ff18cfc9ae1746e05f9093e134ce79fb17f1297f1b4b4a3e
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.40.2.orig.tar.xz' glib2.0_2.40.2.orig.tar.xz 7001344 SHA256:e8ff8af2950897e805408480c454c415d1eade4e670ec5fb507f5e5853726c7a
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.40.2-0ubuntu1.debian.tar.xz' glib2.0_2.40.2-0ubuntu1.debian.tar.xz 64612 SHA256:f0ce12128142147d9ca99a7bac4591afde8095b8491a42b5cc506a1feae91a25
```

### `dpkg` source package: `gmp=2:5.1.3+dfsg-1ubuntu1`

Binary Packages:

- `libgmp10:amd64=2:5.1.3+dfsg-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:5.1.3+dfsg-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_5.1.3+dfsg-1ubuntu1.dsc' gmp_5.1.3+dfsg-1ubuntu1.dsc 1627 SHA256:7e592052ac0435e9e9b8ac43a4373678a26e40fa84e1d4075308b6d227fe2e9c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_5.1.3+dfsg.orig.tar.gz' gmp_5.1.3+dfsg.orig.tar.gz 3170839 SHA256:9287225330268148855421ebcc434aea1961e30b9c821028a3bba96dd1129cee
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_5.1.3+dfsg-1ubuntu1.debian.tar.gz' gmp_5.1.3+dfsg-1ubuntu1.debian.tar.gz 22621 SHA256:952795400f79b3e749a05d13d3eafd0930ce24e8fbde5e440d89e6060c41b361
```

### `dpkg` source package: `gnupg=1.4.16-1ubuntu2.4`

Binary Packages:

- `gnupg=1.4.16-1ubuntu2.4`
- `gpgv=1.4.16-1ubuntu2.4`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpgv/copyright`)

- `GPL-3`
- `GPL-3+ with OpenSSL exception`

Source:

```console
$ apt-get source -qq --print-uris gnupg=1.4.16-1ubuntu2.4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.16-1ubuntu2.4.dsc' gnupg_1.4.16-1ubuntu2.4.dsc 2354 SHA256:484156d1517096273053973420f965bb3941762d094d37878984220aad1604af
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.16.orig.tar.gz' gnupg_1.4.16.orig.tar.gz 5073484 SHA256:f3af2f9c34c305869ad38b4ee7ab9e1487f50884ee8d9d42cccb31e1ced5cdef
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.16-1ubuntu2.4.debian.tar.gz' gnupg_1.4.16-1ubuntu2.4.debian.tar.gz 56430 SHA256:dbc2738c30cdcedb459e0ff0a9d1ec42e7b238b96c4a9326cae84a0afdae6441
```

### `dpkg` source package: `gnutls26=2.12.23-12ubuntu2.5`

Binary Packages:

- `libgnutls-dev=2.12.23-12ubuntu2.5`
- `libgnutls-openssl27:amd64=2.12.23-12ubuntu2.5`
- `libgnutls26:amd64=2.12.23-12ubuntu2.5`
- `libgnutlsxx27:amd64=2.12.23-12ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/libgnutls-dev/copyright`, `/usr/share/doc/libgnutls-openssl27/copyright`, `/usr/share/doc/libgnutls26/copyright`, `/usr/share/doc/libgnutlsxx27/copyright`)

- `GFDL-1.3`
- `GPL`
- `LGPL`
- `LGPL-2.1`
- `The main library is licensed under GNU Lesser General Public`

Source:

```console
$ apt-get source -qq --print-uris gnutls26=2.12.23-12ubuntu2.5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls26/gnutls26_2.12.23-12ubuntu2.5.dsc' gnutls26_2.12.23-12ubuntu2.5.dsc 2722 SHA256:2d225e1190fac67640a39c2e95fe1659fb4e21d17478406939fa0ac71e2aa5ad
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls26/gnutls26_2.12.23.orig.tar.bz2' gnutls26_2.12.23.orig.tar.bz2 7279415 SHA256:dfa67a7e40727eb0913e75f3c44911d5d8cd58d1ead5acfe73dd933fc0d17ed2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls26/gnutls26_2.12.23-12ubuntu2.5.debian.tar.gz' gnutls26_2.12.23-12ubuntu2.5.debian.tar.gz 42150 SHA256:e8b72ef4da666eae5acf7fd083763f702f3c0596f73d430f8de2296ec852f86d
```

### `dpkg` source package: `gobject-introspection=1.40.0-1ubuntu0.2`

Binary Packages:

- `gir1.2-freedesktop=1.40.0-1ubuntu0.2`
- `gir1.2-glib-2.0=1.40.0-1ubuntu0.2`
- `libgirepository-1.0-1=1.40.0-1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.40.0-1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.40.0-1ubuntu0.2.dsc' gobject-introspection_1.40.0-1ubuntu0.2.dsc 3058 SHA256:9e0613a74a1c8440e0892a5a532c2faa3b5405e3eade403dc1417adfe2b27086
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.40.0.orig.tar.xz' gobject-introspection_1.40.0.orig.tar.xz 1286424 SHA256:96ea75e9679083e7fe39a105e810e2ead2d708abf189a5ba420bfccfffa24e98
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.40.0-1ubuntu0.2.debian.tar.xz' gobject-introspection_1.40.0-1ubuntu0.2.debian.tar.xz 21352 SHA256:7376bd02d12468c3bec4a3f5e6bce778df39ce3a58300664b697dd448189f25d
```

### `dpkg` source package: `graphite2=1.3.6-1ubuntu0.14.04.1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.6-1ubuntu0.14.04.1`

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
$ apt-get source -qq --print-uris graphite2=1.3.6-1ubuntu0.14.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.6-1ubuntu0.14.04.1.dsc' graphite2_1.3.6-1ubuntu0.14.04.1.dsc 2233 SHA256:7bb609bf3344b8ed19bc0c96a6dfa30a3e3e63fe2caff09b12bbe8850db61796
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.6.orig.tar.gz' graphite2_1.3.6.orig.tar.gz 3881106 SHA256:475e7657ac606ed8805518031729c1273cf7d9d422169ac6f7882e01d832af75
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.6-1ubuntu0.14.04.1.debian.tar.gz' graphite2_1.3.6-1ubuntu0.14.04.1.debian.tar.gz 9143 SHA256:8b080748a0af0fc5573b8823c89d25c105589011df7f6c1143d5ce3958a2b29c
```

### `dpkg` source package: `graphviz=2.36.0-0ubuntu3.1`

Binary Packages:

- `libcdt5=2.36.0-0ubuntu3.1`
- `libcgraph6=2.36.0-0ubuntu3.1`
- `libgraphviz-dev=2.36.0-0ubuntu3.1`
- `libgvc6=2.36.0-0ubuntu3.1`
- `libgvpr2=2.36.0-0ubuntu3.1`
- `libpathplan4=2.36.0-0ubuntu3.1`
- `libxdot4=2.36.0-0ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/libcdt5/copyright`, `/usr/share/doc/libcgraph6/copyright`, `/usr/share/doc/libgraphviz-dev/copyright`, `/usr/share/doc/libgvc6/copyright`, `/usr/share/doc/libgvpr2/copyright`, `/usr/share/doc/libpathplan4/copyright`, `/usr/share/doc/libxdot4/copyright`)

- `GPL-2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris graphviz=2.36.0-0ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphviz/graphviz_2.36.0-0ubuntu3.1.dsc' graphviz_2.36.0-0ubuntu3.1.dsc 2974 SHA256:b3cfe93fc8e0d63eb1547b8a9a91ff65b5bb5fe0f6776dd8c1d386c8d2f7fcc3
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphviz/graphviz_2.36.0.orig.tar.gz' graphviz_2.36.0.orig.tar.gz 23846318 SHA256:37fd66d8def158575c75c4f6dbf536839e4ee468aa59314eb472d1aecb076361
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphviz/graphviz_2.36.0-0ubuntu3.1.debian.tar.gz' graphviz_2.36.0-0ubuntu3.1.debian.tar.gz 72023 SHA256:2dc07dbe865d907ba6d0b33010612dc0d288e036df5bc040185057f1c9adbe36
```

### `dpkg` source package: `grep=2.16-1`

Binary Packages:

- `grep=2.16-1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.16-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.16-1.dsc' grep_2.16-1.dsc 1923 SHA256:648adab733a96826b0e804e9779e5c97ccc0809be4140ace0b4699a5eb5b232b
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.16.orig.tar.xz' grep_2.16.orig.tar.xz 1210192 SHA256:16dfeb5013d8c9f21f40ccec0936f2c1c6a014c828d30488f0d5c6ef7b551162
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.16-1.debian.tar.bz2' grep_2.16-1.debian.tar.bz2 13191 SHA256:4bd94480c8e3437aa058aed14db5f78234c6d820581c77e09b3bf82e73b92087
```

### `dpkg` source package: `gzip=1.6-3ubuntu1`

Binary Packages:

- `gzip=1.6-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-3ubuntu1.dsc' gzip_1.6-3ubuntu1.dsc 1279 SHA256:fbbbd8c04dacb7e1f1982f9a8805ed0a4c2ac205bfb19481be8828cfc57f91a1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-3ubuntu1.debian.tar.gz' gzip_1.6-3ubuntu1.debian.tar.gz 16107 SHA256:159c1bb8838ad53ee293a923598d100b06571b4efbeb6879646d5029130b650b
```

### `dpkg` source package: `harfbuzz=0.9.27-1ubuntu1.1`

Binary Packages:

- `libharfbuzz0b:amd64=0.9.27-1ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=0.9.27-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_0.9.27-1ubuntu1.1.dsc' harfbuzz_0.9.27-1ubuntu1.1.dsc 2673 SHA256:40ae71edf7e248e95b81ac3b40db1709afd2bc513a7c978e71a2550160333760
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_0.9.27.orig.tar.bz2' harfbuzz_0.9.27.orig.tar.bz2 1062180 SHA256:08584ae91c98d5b14d5f2c45b01410a12b030c9397bd73135bd2155297b447db
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_0.9.27-1ubuntu1.1.debian.tar.gz' harfbuzz_0.9.27-1ubuntu1.1.debian.tar.gz 8433 SHA256:fde8b041695af6a04923a8492c14437da72a0d7aef4688c5dce8fcb61d76826e
```

### `dpkg` source package: `heimdal=1.6~git20131207+dfsg-1ubuntu1.1`

Binary Packages:

- `libasn1-8-heimdal:amd64=1.6~git20131207+dfsg-1ubuntu1.1`
- `libgssapi3-heimdal:amd64=1.6~git20131207+dfsg-1ubuntu1.1`
- `libhcrypto4-heimdal:amd64=1.6~git20131207+dfsg-1ubuntu1.1`
- `libheimbase1-heimdal:amd64=1.6~git20131207+dfsg-1ubuntu1.1`
- `libheimntlm0-heimdal:amd64=1.6~git20131207+dfsg-1ubuntu1.1`
- `libhx509-5-heimdal:amd64=1.6~git20131207+dfsg-1ubuntu1.1`
- `libkrb5-26-heimdal:amd64=1.6~git20131207+dfsg-1ubuntu1.1`
- `libroken18-heimdal:amd64=1.6~git20131207+dfsg-1ubuntu1.1`
- `libwind0-heimdal:amd64=1.6~git20131207+dfsg-1ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris heimdal=1.6~git20131207+dfsg-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.6~git20131207+dfsg-1ubuntu1.1.dsc' heimdal_1.6~git20131207+dfsg-1ubuntu1.1.dsc 3229 SHA256:5b263b615453e14bec2a3fbfb6a220db117124ce182104c1e89bdf9920cc062d
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.6~git20131207+dfsg.orig.tar.gz' heimdal_1.6~git20131207+dfsg.orig.tar.gz 9207949 SHA256:339bc6c204b5fc3a3f3bf3a1595321b41c1d5c72596c7d1f73a92133fdb30ddb
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.6~git20131207+dfsg-1ubuntu1.1.debian.tar.xz' heimdal_1.6~git20131207+dfsg-1ubuntu1.1.debian.tar.xz 64560 SHA256:2c11ad1be74825414991b99f6ceea36aa428b07c338141c24ed19e3230264adc
```

### `dpkg` source package: `hicolor-icon-theme=0.13-1`

Binary Packages:

- `hicolor-icon-theme=0.13-1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.13-1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.13-1.dsc' hicolor-icon-theme_0.13-1.dsc 1259 SHA256:68c0f360fb2ac7775e32c5f14ac4356ef58aa38939b15b5572aef0ced9d70394
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.13.orig.tar.gz' hicolor-icon-theme_0.13.orig.tar.gz 40709 SHA256:a38b038915480d1ddd4e3c421562560a14d42ace0449a5acc07c50f57f9c3406
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.13-1.debian.tar.gz' hicolor-icon-theme_0.13-1.debian.tar.gz 3342 SHA256:ead36be120055516f938a0fd9075ccc51b4d14c2b93483a255b9ab1b5c4c51e7
```

### `dpkg` source package: `hostname=3.15ubuntu1`

Binary Packages:

- `hostname=3.15ubuntu1`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.15ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.15ubuntu1.dsc' hostname_3.15ubuntu1.dsc 931 SHA256:b281eb4b238c5de1c8c03d585ea5470ae8e39eadf7ebbe5993e41812433a5f49
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.15ubuntu1.tar.gz' hostname_3.15ubuntu1.tar.gz 13879 SHA256:d85728816111a3eeac24d7e8428a5e907dd4b170544017386111148e86b35ef6
```

### `dpkg` source package: `ifupdown=0.7.47.2ubuntu4.4`

Binary Packages:

- `ifupdown=0.7.47.2ubuntu4.4`

Licenses: (parsed from: `/usr/share/doc/ifupdown/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ifupdown=0.7.47.2ubuntu4.4
'http://archive.ubuntu.com/ubuntu/pool/main/i/ifupdown/ifupdown_0.7.47.2ubuntu4.4.dsc' ifupdown_0.7.47.2ubuntu4.4.dsc 1645 SHA256:9f47a912a64fdf5e8975588c1ab6ac451daf3d28934dac4e3f9062026adfd06d
'http://archive.ubuntu.com/ubuntu/pool/main/i/ifupdown/ifupdown_0.7.47.2ubuntu4.4.tar.xz' ifupdown_0.7.47.2ubuntu4.4.tar.xz 92404 SHA256:90de068aaa673292ccf277f4cc6f49649d1f1f96b745632d2d5dbc71890e91a7
```

### `dpkg` source package: `ilmbase=1.0.1-6ubuntu1`

Binary Packages:

- `libilmbase-dev=1.0.1-6ubuntu1`
- `libilmbase6:amd64=1.0.1-6ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ilmbase=1.0.1-6ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_1.0.1-6ubuntu1.dsc' ilmbase_1.0.1-6ubuntu1.dsc 1419 SHA256:0965f8a538c6c8322e1294b39c407569dd078867f222fdfd00137f021a6eaa77
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_1.0.1.orig.tar.gz' ilmbase_1.0.1.orig.tar.gz 463275 SHA256:4f14fc7b26a37a391ec5f979697148e6774bc36bc052de26e40ffabe401e397d
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_1.0.1-6ubuntu1.debian.tar.gz' ilmbase_1.0.1-6ubuntu1.debian.tar.gz 5881 SHA256:7e0b07b267fccdfcd6d8bdfa944b9b6560c9a0f6a877c248586b986823ffe5c0
```

### `dpkg` source package: `imagemagick=8:6.7.7.10-6ubuntu3.3`

Binary Packages:

- `imagemagick=8:6.7.7.10-6ubuntu3.3`
- `imagemagick-common=8:6.7.7.10-6ubuntu3.3`
- `libmagickcore-dev=8:6.7.7.10-6ubuntu3.3`
- `libmagickcore5:amd64=8:6.7.7.10-6ubuntu3.3`
- `libmagickcore5-extra:amd64=8:6.7.7.10-6ubuntu3.3`
- `libmagickwand-dev=8:6.7.7.10-6ubuntu3.3`
- `libmagickwand5:amd64=8:6.7.7.10-6ubuntu3.3`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-common/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickcore5/copyright`, `/usr/share/doc/libmagickcore5-extra/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`, `/usr/share/doc/libmagickwand5/copyright`)

- `Artistic`
- `GPL`
- `ImageMagick`
- `ImageMagick  `
- `ImageMagick        `
- `ImageMagick                                `
- `ImageMagickLicensePartEZXML`
- `ImageMagickLicensePartFIG`
- `ImageMagickLicensePartGsview`
- `ImageMagickLicensePartOpenSSH`
- `ImageMagickPartGraphicsMagick`
- `ImageMagickPartlibjpeg`
- `Magick++`
- `Magick++                                                                          `
- `Perllikelicence`
- `TatcherUlrichPublicDomain`

Source:

```console
$ apt-get source -qq --print-uris imagemagick=8:6.7.7.10-6ubuntu3.3
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.7.7.10-6ubuntu3.3.dsc' imagemagick_6.7.7.10-6ubuntu3.3.dsc 3239 SHA256:b5093c270141ed63bff770320f41e52de7c253299b4ef2c499ecde8b41ba02be
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.7.7.10.orig.tar.bz2' imagemagick_6.7.7.10.orig.tar.bz2 10473522 SHA256:05fb23824b1c90ac35259715c94c65fb5cda6969eb597a7637762d8cf3998fda
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.7.7.10-6ubuntu3.3.debian.tar.bz2' imagemagick_6.7.7.10-6ubuntu3.3.debian.tar.bz2 218989 SHA256:53f208aff4049cbd82a714695b0b43f9ce0f1cbf412b81b606ca019b96788abc
```

### `dpkg` source package: `init-system-helpers=1.14ubuntu1`

Binary Packages:

- `init-system-helpers=1.14ubuntu1`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.14ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.14ubuntu1.dsc' init-system-helpers_1.14ubuntu1.dsc 1918 SHA256:183537b98ed019ef80c813b4426570fffe3283c38239d4708724fc4e868cb7ad
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.14ubuntu1.tar.xz' init-system-helpers_1.14ubuntu1.tar.xz 15436 SHA256:c9f7e8c0d1ee2cdfb12b7a82ffee5a5c90e3d70478591d28803e011e8053a252
```

### `dpkg` source package: `initramfs-tools=0.103ubuntu4.6`

Binary Packages:

- `initramfs-tools=0.103ubuntu4.6`
- `initramfs-tools-bin=0.103ubuntu4.6`

Licenses: (parsed from: `/usr/share/doc/initramfs-tools/copyright`, `/usr/share/doc/initramfs-tools-bin/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris initramfs-tools=0.103ubuntu4.6
'http://archive.ubuntu.com/ubuntu/pool/main/i/initramfs-tools/initramfs-tools_0.103ubuntu4.6.dsc' initramfs-tools_0.103ubuntu4.6.dsc 1218 SHA256:d6a2a6d5e40de66b18eccf05eb2961acf6269187205b2cfb339663e58cd201eb
'http://archive.ubuntu.com/ubuntu/pool/main/i/initramfs-tools/initramfs-tools_0.103ubuntu4.6.tar.xz' initramfs-tools_0.103ubuntu4.6.tar.xz 94364 SHA256:20056eb1d0838eacd7c6d655cd4c234a6e8f4c7347d275fdddaec11f36b22751
```

### `dpkg` source package: `insserv=1.14.0-5ubuntu2`

Binary Packages:

- `insserv=1.14.0-5ubuntu2`

Licenses: (parsed from: `/usr/share/doc/insserv/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris insserv=1.14.0-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu2.dsc' insserv_1.14.0-5ubuntu2.dsc 2068 SHA256:961e801d0b7f90fbe92332622dcf5e2cce4f704d0a8620445459bfaec3cc007f
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0.orig.tar.gz' insserv_1.14.0.orig.tar.gz 53851 SHA256:da74dcf5225a00aa8aef4d5afc6a20e009b2ed9af328dabd55fef1cb3a32140e
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu2.debian.tar.gz' insserv_1.14.0-5ubuntu2.debian.tar.gz 55250 SHA256:d1cb4460a590864e858b21180dc24a72ba705f3eb75a27210f349b47de7a60d6
```

### `dpkg` source package: `iproute2=3.12.0-2ubuntu1`

Binary Packages:

- `iproute2=3.12.0-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=3.12.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/i/iproute2/iproute2_3.12.0-2ubuntu1.dsc' iproute2_3.12.0-2ubuntu1.dsc 2326 SHA256:5f9287e750a3e6dfbc272af3d2b35846939526262f776a2b32b8362ab77da663
'http://archive.ubuntu.com/ubuntu/pool/main/i/iproute2/iproute2_3.12.0.orig.tar.xz' iproute2_3.12.0.orig.tar.xz 425192 SHA256:44f600475d27a421688cda2294efec38513473a740c24ead78eb20005f08f111
'http://archive.ubuntu.com/ubuntu/pool/main/i/iproute2/iproute2_3.12.0-2ubuntu1.debian.tar.xz' iproute2_3.12.0-2ubuntu1.debian.tar.xz 27828 SHA256:859ceade5d3bc317a9085b5b98f17050025eef26607fe671c5b13a4abe2c312e
```

### `dpkg` source package: `iputils=3:20121221-4ubuntu1.1`

Binary Packages:

- `iputils-ping=3:20121221-4ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/iputils-ping/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris iputils=3:20121221-4ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/i/iputils/iputils_20121221-4ubuntu1.1.dsc' iputils_20121221-4ubuntu1.1.dsc 2127 SHA256:90d448fa7e9750fb00cd837e8bc37a909b21e706a812afd1d5840fa914be3584
'http://archive.ubuntu.com/ubuntu/pool/main/i/iputils/iputils_20121221.orig.tar.bz2' iputils_20121221.orig.tar.bz2 155344 SHA256:450f549fc5b620c23c5929aa6d54b7ddfc7ee1cb1e8efdc5e8bb21d8d0c5319f
'http://archive.ubuntu.com/ubuntu/pool/main/i/iputils/iputils_20121221-4ubuntu1.1.debian.tar.gz' iputils_20121221-4ubuntu1.1.debian.tar.gz 16143 SHA256:4eb3ca79e68dfc5f5e66df7be3113c230168fbca2420da232adadc6475056c6a
```

### `dpkg` source package: `isc-dhcp=4.2.4-7ubuntu12.8`

Binary Packages:

- `isc-dhcp-client=4.2.4-7ubuntu12.8`
- `isc-dhcp-common=4.2.4-7ubuntu12.8`

Licenses: (parsed from: `/usr/share/doc/isc-dhcp-client/copyright`, `/usr/share/doc/isc-dhcp-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris isc-dhcp=4.2.4-7ubuntu12.8
'http://archive.ubuntu.com/ubuntu/pool/main/i/isc-dhcp/isc-dhcp_4.2.4-7ubuntu12.8.dsc' isc-dhcp_4.2.4-7ubuntu12.8.dsc 2788 SHA256:9540d60625c3c78b5b2df94b65417314fe078a748202d7d2a0113206b46e61c7
'http://archive.ubuntu.com/ubuntu/pool/main/i/isc-dhcp/isc-dhcp_4.2.4.orig.tar.gz' isc-dhcp_4.2.4.orig.tar.gz 8063457 SHA256:a9f77eb26372ada936ec39d843e0fe8c898b7e6980341e76c8cda694748fbf9a
'http://archive.ubuntu.com/ubuntu/pool/main/i/isc-dhcp/isc-dhcp_4.2.4-7ubuntu12.8.debian.tar.xz' isc-dhcp_4.2.4-7ubuntu12.8.debian.tar.xz 108596 SHA256:d301a6a2c0a5944842ea4fcccb3e62b62e83d8644d0dcede618258f356717931
```

### `dpkg` source package: `isl=0.12.2-1`

Binary Packages:

- `libisl10:amd64=0.12.2-1`

Licenses: (parsed from: `/usr/share/doc/libisl10/copyright`)

- `2-clause BSD`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.12.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.12.2-1.dsc' isl_0.12.2-1.dsc 1222 SHA256:8596835c24f052e3b9e087949016c519d987d6dc0e71bea4ba15e241edb1fa2f
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.12.2.orig.tar.bz2' isl_0.12.2.orig.tar.bz2 1319434 SHA256:f4b3dbee9712850006e44f0db2103441ab3d13b406f77996d1df19ee89d11fb4
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.12.2-1.debian.tar.xz' isl_0.12.2-1.debian.tar.xz 15756 SHA256:582a3c1c804c9fb430bf5d2f2d5d82aa541704e796bec2389df697a7e80ad5e2
```

### `dpkg` source package: `jasper=1.900.1-14ubuntu3.3`

Binary Packages:

- `libjasper-dev=1.900.1-14ubuntu3.3`
- `libjasper1:amd64=1.900.1-14ubuntu3.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!


### `dpkg` source package: `jbigkit=2.0-2ubuntu4.1`

Binary Packages:

- `libjbig-dev:amd64=2.0-2ubuntu4.1`
- `libjbig0:amd64=2.0-2ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.0-2ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.0-2ubuntu4.1.dsc' jbigkit_2.0-2ubuntu4.1.dsc 2014 SHA256:e937095a9df8c90cb40124547748736cd76551cc4836ab5efdd242ccbd22c4bc
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.0.orig.tar.gz' jbigkit_2.0.orig.tar.gz 435027 SHA256:f6be61695d18d6315961e473eda92252fdecf9636903bfbf4766a2eeff1f17ee
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.0-2ubuntu4.1.debian.tar.gz' jbigkit_2.0-2ubuntu4.1.debian.tar.gz 9731 SHA256:2277ddfb492c68cac4753a39e71fb3a85452305066c4fb9e69f69593d1933f76
```

### `dpkg` source package: `jquery=1.7.2+dfsg-2ubuntu1`

Binary Packages:

- `libjs-jquery=1.7.2+dfsg-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libjs-jquery/copyright`)

- `BSD`
- `GPL-2`
- `MIT`
- `MIT,`

Source:

```console
$ apt-get source -qq --print-uris jquery=1.7.2+dfsg-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jquery/jquery_1.7.2+dfsg-2ubuntu1.dsc' jquery_1.7.2+dfsg-2ubuntu1.dsc 1444 SHA256:110e249a2c17b5579a33b043487521fd0eecedc846e729660aeb82107d91b860
'http://archive.ubuntu.com/ubuntu/pool/main/j/jquery/jquery_1.7.2+dfsg.orig.tar.gz' jquery_1.7.2+dfsg.orig.tar.gz 147053 SHA256:43384d8c975c723a3b7d6f46e7ff1518d161760e0781a37675eeda1a05a503fe
'http://archive.ubuntu.com/ubuntu/pool/main/j/jquery/jquery_1.7.2+dfsg-2ubuntu1.debian.tar.gz' jquery_1.7.2+dfsg-2ubuntu1.debian.tar.gz 6223 SHA256:eee58ccae90518388a4f395b5971a6aca3d14e83a33d5e406c4100b1593171d6
```

### `dpkg` source package: `json-c=0.11-3ubuntu1.2`

Binary Packages:

- `libjson-c2:amd64=0.11-3ubuntu1.2`
- `libjson0:amd64=0.11-3ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libjson-c2/copyright`, `/usr/share/doc/libjson0/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris json-c=0.11-3ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/json-c_0.11-3ubuntu1.2.dsc' json-c_0.11-3ubuntu1.2.dsc 2237 SHA256:9af735a940283c5fb26a9197fec66e421ddd5b13e8a23fd5375c4d9c28ccc66e
'http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/json-c_0.11.orig.tar.gz' json-c_0.11.orig.tar.gz 557263 SHA256:28dfc65145dc0d4df1dfe7701ac173c4e5f9347176c8983edbfac9149494448c
'http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/json-c_0.11-3ubuntu1.2.debian.tar.gz' json-c_0.11-3ubuntu1.2.debian.tar.gz 398415 SHA256:cf0d29f34bbd371e4d5da229be23f469fdfec2e55a890d84d964f1dcecc26d2c
```

### `dpkg` source package: `kbd=1.15.5-1ubuntu1`

Binary Packages:

- `kbd=1.15.5-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/kbd/copyright`)

- `GPL-`
- `GPL-2`
- `GPL-2+`
- `GPL-any`

Source:

```console
$ apt-get source -qq --print-uris kbd=1.15.5-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/k/kbd/kbd_1.15.5-1ubuntu1.dsc' kbd_1.15.5-1ubuntu1.dsc 2169 SHA256:0b50ff9692726045fc20f43de603d47713cce218e4f0c69282515350b3ec9675
'http://archive.ubuntu.com/ubuntu/pool/main/k/kbd/kbd_1.15.5.orig.tar.gz' kbd_1.15.5.orig.tar.gz 1730719 SHA256:e35fa29f690dbbfb721706b2c8edc760c697640904fec65e81194ae8840c5c62
'http://archive.ubuntu.com/ubuntu/pool/main/k/kbd/kbd_1.15.5-1ubuntu1.debian.tar.gz' kbd_1.15.5-1ubuntu1.debian.tar.gz 38337 SHA256:93895c5fc0279b8253a4f8c62e84997673598a25e3680bd95cf86f2ac03ebbda
```

### `dpkg` source package: `keyutils=1.5.6-1`

Binary Packages:

- `libkeyutils1:amd64=1.5.6-1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.6-1.dsc' keyutils_1.5.6-1.dsc 1873 SHA256:fa244386084fc6ea8e2928fac44f1331b39bd7b16af51aaf56d5fc0ca59e0525
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.6.orig.tar.bz2' keyutils_1.5.6.orig.tar.bz2 63782 SHA256:74a8277fc3a1235fa78e9748f563a70905e5eeb6c2672ebe74be070a6bdc5b0e
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.6-1.debian.tar.xz' keyutils_1.5.6-1.debian.tar.xz 6164 SHA256:e10975bad51268001644235a9e330eac6fdc4add20ef84b4546b8d91474458a0
```

### `dpkg` source package: `klibc=2.0.3-0ubuntu1.14.04.2`

Binary Packages:

- `klibc-utils=2.0.3-0ubuntu1.14.04.2`
- `libklibc=2.0.3-0ubuntu1.14.04.2`

Licenses: (parsed from: `/usr/share/doc/klibc-utils/copyright`, `/usr/share/doc/libklibc/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris klibc=2.0.3-0ubuntu1.14.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/k/klibc/klibc_2.0.3-0ubuntu1.14.04.2.dsc' klibc_2.0.3-0ubuntu1.14.04.2.dsc 2059 SHA256:f7cb0ee59aaf2899815dbe8aeab3a91f9a245d311440a82fa6c71dc1359eb667
'http://archive.ubuntu.com/ubuntu/pool/main/k/klibc/klibc_2.0.3.orig.tar.bz2' klibc_2.0.3.orig.tar.bz2 517788 SHA256:1f9a49c62faf3e166a8deee6c36ad0f4527bb4aa2050123853a4957802235dca
'http://archive.ubuntu.com/ubuntu/pool/main/k/klibc/klibc_2.0.3-0ubuntu1.14.04.2.debian.tar.xz' klibc_2.0.3-0ubuntu1.14.04.2.debian.tar.xz 20572 SHA256:44daef54221dc98fe668e547999eca4359b4c2b5a6d15583e8a7024058a2b7e1
```

### `dpkg` source package: `kmod=15-0ubuntu6`

Binary Packages:

- `kmod=15-0ubuntu6`
- `libkmod2:amd64=15-0ubuntu6`
- `module-init-tools=15-0ubuntu6`

Licenses: (parsed from: `/usr/share/doc/kmod/copyright`, `/usr/share/doc/libkmod2/copyright`, `/usr/share/doc/module-init-tools/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris kmod=15-0ubuntu6
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_15-0ubuntu6.dsc' kmod_15-0ubuntu6.dsc 1326 SHA256:91ee7326bf6916dd3a5f915c0e2f8e9175a6072ae0700cc77079617087361e65
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_15.orig.tar.xz' kmod_15.orig.tar.xz 1453996 SHA256:e8ef0ea7e1929b46aa681fe6ce58c5e62d0026289026ebfc63abae3b8fd5ca9e
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_15-0ubuntu6.debian.tar.gz' kmod_15-0ubuntu6.debian.tar.gz 14348 SHA256:5cbd3db804ae4b6ef3868ff344c23cad67d51938d8cefa42114d8d3a0bb78159
```

### `dpkg` source package: `krb5=1.12+dfsg-2ubuntu5.2`

Binary Packages:

- `krb5-multidev=1.12+dfsg-2ubuntu5.2`
- `libgssapi-krb5-2:amd64=1.12+dfsg-2ubuntu5.2`
- `libgssrpc4:amd64=1.12+dfsg-2ubuntu5.2`
- `libk5crypto3:amd64=1.12+dfsg-2ubuntu5.2`
- `libkadm5clnt-mit9:amd64=1.12+dfsg-2ubuntu5.2`
- `libkadm5srv-mit9:amd64=1.12+dfsg-2ubuntu5.2`
- `libkdb5-7:amd64=1.12+dfsg-2ubuntu5.2`
- `libkrb5-3:amd64=1.12+dfsg-2ubuntu5.2`
- `libkrb5-dev=1.12+dfsg-2ubuntu5.2`
- `libkrb5support0:amd64=1.12+dfsg-2ubuntu5.2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit9/copyright`, `/usr/share/doc/libkadm5srv-mit9/copyright`, `/usr/share/doc/libkdb5-7/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.12+dfsg-2ubuntu5.2
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.12+dfsg-2ubuntu5.2.dsc' krb5_1.12+dfsg-2ubuntu5.2.dsc 3285 SHA256:b4d6a90bb6be7aec5575a2514bcaa1571e507dda3c1bcb902d5abd2331cb5c39
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.12+dfsg.orig.tar.gz' krb5_1.12+dfsg.orig.tar.gz 11704009 SHA256:8ff375113692946790aea5b246b14609c1d21e9017c920ab129452415dc69dfa
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.12+dfsg-2ubuntu5.2.debian.tar.gz' krb5_1.12+dfsg-2ubuntu5.2.debian.tar.gz 138520 SHA256:90180cfcf570400345f7b3a6e1e07fc772ee02fc6338febe78c9363da55a22eb
```

### `dpkg` source package: `langpack-locales=2.13+git20120306-12.1`

Binary Packages:

- `locales=2.13+git20120306-12.1`

Licenses: (parsed from: `/usr/share/doc/locales/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris langpack-locales=2.13+git20120306-12.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/langpack-locales/langpack-locales_2.13+git20120306-12.1.dsc' langpack-locales_2.13+git20120306-12.1.dsc 1164 SHA256:a13f3f7ea1e0e00e5cf1e8106e0b6472336a2efd1e2d7ef18d28a4c55f5ccc2a
'http://archive.ubuntu.com/ubuntu/pool/main/l/langpack-locales/langpack-locales_2.13+git20120306.orig.tar.xz' langpack-locales_2.13+git20120306.orig.tar.xz 1202548 SHA256:33f7c7a110a66a0d856fcb976490ecfd2c6d82feaa08cce6ee32387fd454cd87
'http://archive.ubuntu.com/ubuntu/pool/main/l/langpack-locales/langpack-locales_2.13+git20120306-12.1.debian.tar.gz' langpack-locales_2.13+git20120306-12.1.debian.tar.gz 106760 SHA256:55cdbdf502c39d8613eb5cfcdee6816e9cb6eb62f2eaae7abc8584a905cc22f4
```

### `dpkg` source package: `lcms2=2.5-0ubuntu4.1`

Binary Packages:

- `liblcms2-2:amd64=2.5-0ubuntu4.1`
- `liblcms2-dev:amd64=2.5-0ubuntu4.1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.5-0ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.5-0ubuntu4.1.dsc' lcms2_2.5-0ubuntu4.1.dsc 1957 SHA256:3db3491e57ad31ce22ae27316cf9469a09e757f72846cb6586e6d316d63eb44d
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.5.orig.tar.gz' lcms2_2.5.orig.tar.gz 7000396 SHA256:6727772b44470a2111dba53b9ce4c952b87e7d1b72a31c5ebdf44ba6eb0aa72b
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.5-0ubuntu4.1.debian.tar.gz' lcms2_2.5-0ubuntu4.1.debian.tar.gz 23453 SHA256:e6a48b3a55587e6c7a86e50baac06e3029320b821e427167b8466b02f508cc7f
```

### `dpkg` source package: `less=458-2`

Binary Packages:

- `less=458-2`

Licenses: (parsed from: `/usr/share/doc/less/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris less=458-2
'http://archive.ubuntu.com/ubuntu/pool/main/l/less/less_458-2.dsc' less_458-2.dsc 1716 SHA256:cfc4a7e2767d3a6bd530e9e18879a8e1939b815c2b8df31e576c1cbcc8b90ed6
'http://archive.ubuntu.com/ubuntu/pool/main/l/less/less_458.orig.tar.bz2' less_458.orig.tar.bz2 250816 SHA256:5f6ec8e8074205f0285032a2de358488cbf5a38d5a6bb3390af9c3ff0eac85f6
'http://archive.ubuntu.com/ubuntu/pool/main/l/less/less_458-2.debian.tar.bz2' less_458-2.debian.tar.bz2 18660 SHA256:2161b78c64eff0dd6723626e839c6dd832b988a172aa137c04484754dc753980
```

### `dpkg` source package: `libarchive-extract-perl=0.70-1`

Binary Packages:

- `libarchive-extract-perl=0.70-1`

Licenses: (parsed from: `/usr/share/doc/libarchive-extract-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libarchive-extract-perl=0.70-1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive-extract-perl/libarchive-extract-perl_0.70-1.dsc' libarchive-extract-perl_0.70-1.dsc 2131 SHA256:da6b0549e4102e8c2ec7af329f99f71de5bb43ef58f85f3e0ba64196f2de147e
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive-extract-perl/libarchive-extract-perl_0.70.orig.tar.gz' libarchive-extract-perl_0.70.orig.tar.gz 27315 SHA256:591632f8211c1ca1801022dcdd09d6bc694bbf9f02222920e0059f21cb1f6dc1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive-extract-perl/libarchive-extract-perl_0.70-1.debian.tar.gz' libarchive-extract-perl_0.70-1.debian.tar.gz 1589 SHA256:f3dc3a4857760ad48e08c4ca8f2d52c93bd934ddb0e9e53e5037105d375db606
```

### `dpkg` source package: `libbsd=0.6.0-2ubuntu1`

Binary Packages:

- `libbsd0:amd64=0.6.0-2ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libbsd=0.6.0-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.6.0-2ubuntu1.dsc' libbsd_0.6.0-2ubuntu1.dsc 1442 SHA256:6a085d96da60152291ec89f355238b5137d31f3093ffc6c711f30813189d6a4a
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.6.0.orig.tar.xz' libbsd_0.6.0.orig.tar.xz 313388 SHA256:9e8f34ffa9c8579c87965a55a82d8ac37a1dc64858f717b7c49452ade277cc62
'http://archive.ubuntu.com/ubuntu/pool/main/libb/libbsd/libbsd_0.6.0-2ubuntu1.debian.tar.gz' libbsd_0.6.0-2ubuntu1.debian.tar.gz 17103 SHA256:63710e6c35d4cf38c8179a474f3791abb7bb94f5a235214a7a9b94a44cf67ff2
```

### `dpkg` source package: `libcap2=1:2.24-0ubuntu2`

Binary Packages:

- `libcap2:amd64=1:2.24-0ubuntu2`
- `libcap2-bin=1:2.24-0ubuntu2`
- `libpam-cap:amd64=1:2.24-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`, `/usr/share/doc/libpam-cap/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.24-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-0ubuntu2.dsc' libcap2_2.24-0ubuntu2.dsc 1464 SHA256:aa6d8d33ff04bfea259da3b18422d15cee4f13e0ed0f5e29401add7450e092c2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24.orig.tar.gz' libcap2_2.24.orig.tar.gz 73021 SHA256:3a9640e0712d545109cecef83c2614c68951e5fcf0fff4dac4df1a893c52bdbb
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-0ubuntu2.debian.tar.gz' libcap2_2.24-0ubuntu2.debian.tar.gz 9989 SHA256:4fff795f0ed38370f877ba8c0e506112048204b73c83ab2ce08fced4edef3662
```

### `dpkg` source package: `libcroco=0.6.8-2ubuntu1`

Binary Packages:

- `libcroco3:amd64=0.6.8-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libcroco3/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcroco=0.6.8-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.8-2ubuntu1.dsc' libcroco_0.6.8-2ubuntu1.dsc 1745 SHA256:98965b5a51ae550e2e3bc82d928ff8bdb6419704d71e2ba09ad06a2653cbceba
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.8.orig.tar.xz' libcroco_0.6.8.orig.tar.xz 464992 SHA256:ea6e1b858c55219cefd7109756bff5bc1a774ba7a55f7d3ccd734d6b871b8570
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.8-2ubuntu1.debian.tar.gz' libcroco_0.6.8-2ubuntu1.debian.tar.gz 7410 SHA256:04581081020bab613350eeeaea51913f42de9882ec8312b715a451ccc5850d59
```

### `dpkg` source package: `libdatrie=0.2.8-1`

Binary Packages:

- `libdatrie1:amd64=0.2.8-1`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.8-1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.8-1.dsc' libdatrie_0.2.8-1.dsc 2082 SHA256:4cea8f61d67778ae16fa24eb28c413b5c3cc3203f84a50ba0944956a9bba05a2
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.8.orig.tar.xz' libdatrie_0.2.8.orig.tar.xz 286428 SHA256:6a14d55c5687fc325216fffb5db0cf55d31b108cce65314a6d5c8042417ab7c2
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.8-1.debian.tar.gz' libdatrie_0.2.8-1.debian.tar.gz 7651 SHA256:7563b262c917cb507d17b35437a484c54c2964cff9994ffbbac1f78fb5f3c59b
```

### `dpkg` source package: `libdrm=2.4.67-1ubuntu0.14.04.1`

Binary Packages:

- `libdrm2:amd64=2.4.67-1ubuntu0.14.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libdrm=2.4.67-1ubuntu0.14.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.67-1ubuntu0.14.04.1.dsc' libdrm_2.4.67-1ubuntu0.14.04.1.dsc 3548 SHA256:17a5e251218df1f4b04e6e4b599ceaa59f233cec8f0fbf5778e11760cf2346c3
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.67.orig.tar.gz' libdrm_2.4.67.orig.tar.gz 957783 SHA256:4ae392513c4df30d88f10e69bf425a1dff960a5b4ccd4da621d9fc88523f7acb
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm_2.4.67-1ubuntu0.14.04.1.diff.gz' libdrm_2.4.67-1ubuntu0.14.04.1.diff.gz 37980 SHA256:d8d9f1b3b144d2f307e6362f2a4e7f8800797fa525bf3fa82a23836185cd14d5
```

### `dpkg` source package: `libedit=3.1-20130712-2`

Binary Packages:

- `libedit2:amd64=3.1-20130712-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20130712-2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20130712-2.dsc' libedit_3.1-20130712-2.dsc 1589 SHA256:dc5440ba3aabad54f4f7c91eb044816beb1a62150ce58b862c3f344183941b72
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20130712.orig.tar.gz' libedit_3.1-20130712.orig.tar.gz 483857 SHA256:5d9b1a9dd66f1fe28bbd98e4d8ed1a22d8da0d08d902407dcc4a0702c8d88a37
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20130712-2.debian.tar.bz2' libedit_3.1-20130712-2.debian.tar.bz2 21980 SHA256:8ac6d731a7d1f74192498682174311a1fe98073627740736257f2892bbf34ddd
```

### `dpkg` source package: `libelf=0.8.13-5`

Binary Packages:

- `libelfg0:amd64=0.8.13-5`

Licenses: (parsed from: `/usr/share/doc/libelfg0/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libelf=0.8.13-5
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libelf/libelf_0.8.13-5.dsc' libelf_0.8.13-5.dsc 1068 SHA256:cee33bd0bb5964e66bad8b405cccf9ffc8472e25b4e2b3119c15cfb3bc5ec9f7
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libelf/libelf_0.8.13.orig.tar.gz' libelf_0.8.13.orig.tar.gz 149591 SHA256:559073b1796bf961aeded2117dfb84eb71936f199ce49e8b40d8d6096ed01c84
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libelf/libelf_0.8.13-5.diff.gz' libelf_0.8.13-5.diff.gz 90192 SHA256:587f4d1dc689d1bc23e6bda5a76a33aa2f2566cc86382ee408d1acfe515f487b
```

### `dpkg` source package: `liberror-perl=0.17-1.1`

Binary Packages:

- `liberror-perl=0.17-1.1`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17-1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17-1.1.dsc' liberror-perl_0.17-1.1.dsc 1707 SHA256:b042cdc85fca61bbc96765dfa9dc1043319b0259485d502b26856addc2ad1969
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17.orig.tar.gz' liberror-perl_0.17.orig.tar.gz 17266 SHA256:2e8157981a77e87d37d26d8b6b3183560dddc541b491b0b32fcda010730b257c
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17-1.1.diff.gz' liberror-perl_0.17-1.1.diff.gz 3541 SHA256:ff276a25fc81edf38681f03a9f44346516226b5ab3c95f552d8d7f24686ab7d9
```

### `dpkg` source package: `libestr=0.1.9-0ubuntu2`

Binary Packages:

- `libestr0=0.1.9-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libestr0/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libestr=0.1.9-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libestr/libestr_0.1.9-0ubuntu2.dsc' libestr_0.1.9-0ubuntu2.dsc 1221 SHA256:c5b636403c3ece52666437126a014b136ca65302004064e0d3fa89c3252771ac
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libestr/libestr_0.1.9.orig.tar.gz' libestr_0.1.9.orig.tar.gz 330114 SHA256:822c6e2d01eaca1e72201f403a2ca01f3e86410b880e508e5204e3c2694d751a
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libestr/libestr_0.1.9-0ubuntu2.debian.tar.gz' libestr_0.1.9-0ubuntu2.debian.tar.gz 2662 SHA256:27445d455d55d9eb090473844b1f035e93d7ba9cf0c7d2338130b3c2af279d7e
```

### `dpkg` source package: `libevent=2.0.21-stable-1ubuntu1.14.04.1`

Binary Packages:

- `libevent-2.0-5:amd64=2.0.21-stable-1ubuntu1.14.04.1`
- `libevent-core-2.0-5:amd64=2.0.21-stable-1ubuntu1.14.04.1`
- `libevent-dev=2.0.21-stable-1ubuntu1.14.04.1`
- `libevent-extra-2.0-5:amd64=2.0.21-stable-1ubuntu1.14.04.1`
- `libevent-openssl-2.0-5:amd64=2.0.21-stable-1ubuntu1.14.04.1`
- `libevent-pthreads-2.0-5:amd64=2.0.21-stable-1ubuntu1.14.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libevent=2.0.21-stable-1ubuntu1.14.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.0.21-stable-1ubuntu1.14.04.1.dsc' libevent_2.0.21-stable-1ubuntu1.14.04.1.dsc 2487 SHA256:71827de67ff784320397ae7a3716b5d4f1cabde3621e28727a098d7c8957bc46
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.0.21-stable.orig.tar.gz' libevent_2.0.21-stable.orig.tar.gz 850772 SHA256:22a530a8a5ba1cb9c080cba033206b17dacd21437762155c6d30ee6469f574f5
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.0.21-stable-1ubuntu1.14.04.1.debian.tar.xz' libevent_2.0.21-stable-1ubuntu1.14.04.1.debian.tar.xz 10768 SHA256:7228520b88ea896bfa6daf699e1c14b8c25aef575ba7ca5184792cfd1e69c354
```

### `dpkg` source package: `libexif=0.6.21-1ubuntu1`

Binary Packages:

- `libexif-dev=0.6.21-1ubuntu1`
- `libexif12:amd64=0.6.21-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.21-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-1ubuntu1.dsc' libexif_0.6.21-1ubuntu1.dsc 1444 SHA256:7fd04203b7a15502b4cad008b607c4e2b8761dc05ddb85a73b8b37aa8c68cb2c
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21.orig.tar.gz' libexif_0.6.21.orig.tar.gz 2081615 SHA256:edb7eb13664cf950a6edd132b75e99afe61c5effe2f16494e6d27bc404b287bf
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-1ubuntu1.debian.tar.gz' libexif_0.6.21-1ubuntu1.debian.tar.gz 8566 SHA256:e4ab397844b5e636f29fa6bf64da298ed4f93622aa739aa3d8987a9b899e35ed
```

### `dpkg` source package: `libffi=3.1~rc1+r3.0.13-12ubuntu0.1`

Binary Packages:

- `libffi-dev:amd64=3.1~rc1+r3.0.13-12ubuntu0.1`
- `libffi6:amd64=3.1~rc1+r3.0.13-12ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.1~rc1+r3.0.13-12ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.1~rc1+r3.0.13-12ubuntu0.1.dsc' libffi_3.1~rc1+r3.0.13-12ubuntu0.1.dsc 2198 SHA256:cb5498b0b52063dfed0a38489195ef25f0136faee6999b61a5a1e76089c0a6c8
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.1~rc1+r3.0.13.orig.tar.gz' libffi_3.1~rc1+r3.0.13.orig.tar.gz 845747 SHA256:1dddde1400c3bcb7749d398071af88c3e4754058d2d4c0b3696c2f82dc5cf11c
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.1~rc1+r3.0.13-12ubuntu0.1.debian.tar.xz' libffi_3.1~rc1+r3.0.13-12ubuntu0.1.debian.tar.xz 48188 SHA256:260827506b832f348584a35e38c2ccee9deb5efcf859aebe8d7d25733256f108
```

### `dpkg` source package: `libgcrypt11=1.5.3-2ubuntu4.4`

Binary Packages:

- `libgcrypt11:amd64=1.5.3-2ubuntu4.4`
- `libgcrypt11-dev=1.5.3-2ubuntu4.4`

Licenses: (parsed from: `/usr/share/doc/libgcrypt11/copyright`, `/usr/share/doc/libgcrypt11-dev/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt11=1.5.3-2ubuntu4.4
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt11/libgcrypt11_1.5.3-2ubuntu4.4.dsc' libgcrypt11_1.5.3-2ubuntu4.4.dsc 2580 SHA256:0487f1b4333938bfa14969077a2031ab443ef2f63aed12abe8e912fb469fd8a9
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt11/libgcrypt11_1.5.3.orig.tar.bz2' libgcrypt11_1.5.3.orig.tar.bz2 1508530 SHA256:bcf5334e7da352c45de6aec5d2084ce9a1d30029ff4a4a5da13f1848874759d1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt11/libgcrypt11_1.5.3-2ubuntu4.4.debian.tar.gz' libgcrypt11_1.5.3-2ubuntu4.4.debian.tar.gz 32367 SHA256:ab2960a9eda97781d5562fe2b60b4e0b040d3a4d0dd8f0e651a17065a8ab994d
```

### `dpkg` source package: `libgd2=2.1.0-3ubuntu0.5`

Binary Packages:

- `libgd3:amd64=2.1.0-3ubuntu0.5`

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
$ apt-get source -qq --print-uris libgd2=2.1.0-3ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.1.0-3ubuntu0.5.dsc' libgd2_2.1.0-3ubuntu0.5.dsc 2412 SHA256:efdaca169a834fa04973d2b4f127ca091231fa733d6fd4e44874482ef8e93af9
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.1.0.orig.tar.xz' libgd2_2.1.0.orig.tar.xz 2004304 SHA256:fa6665dfe3d898019671293c84d77067a3d2ede50884dbcb6df899d508370e5a
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgd2/libgd2_2.1.0-3ubuntu0.5.debian.tar.gz' libgd2_2.1.0-3ubuntu0.5.debian.tar.gz 65462 SHA256:a7e26ad4aa7f368f67913412da7a3a06d1e8151d123894bc93dabaa6061772ff
```

### `dpkg` source package: `libgpg-error=1.12-0.2ubuntu1`

Binary Packages:

- `libgpg-error-dev=1.12-0.2ubuntu1`
- `libgpg-error0:amd64=1.12-0.2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error-dev/copyright`, `/usr/share/doc/libgpg-error0/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.12-0.2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.12-0.2ubuntu1.dsc' libgpg-error_1.12-0.2ubuntu1.dsc 1496 SHA256:c5c30cf6a7377676531c84917a6da3fa7b727efc46705b9c8cc92a00462fb711
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.12.orig.tar.bz2' libgpg-error_1.12.orig.tar.bz2 489266 SHA256:cafc9ed6a87c53a35175d5a1220a96ca386696eef2fa059cc0306211f246e55f
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.12-0.2ubuntu1.debian.tar.gz' libgpg-error_1.12-0.2ubuntu1.debian.tar.gz 6293 SHA256:15b955366b8effb49b592a9384e8ab7e1b6ddb9b9f3c804a58a8b69378b16218
```

### `dpkg` source package: `libice=2:1.0.8-2`

Binary Packages:

- `libice-dev:amd64=2:1.0.8-2`
- `libice6:amd64=2:1.0.8-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.8-2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.8-2.dsc' libice_1.0.8-2.dsc 2132 SHA256:296c379df1524f3435b9fc43e9eb28f274c0ebff7a5b17c605c2214a8916eae8
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.8.orig.tar.gz' libice_1.0.8.orig.tar.gz 438947 SHA256:8332018b07ec38a4a35a360b39f7391c58d053ce5f676aa457b1a686b0277cc0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.8-2.diff.gz' libice_1.0.8-2.diff.gz 15480 SHA256:1c0d0174a668ced313c2478d733318ba0769892bbf12def235e2261277916a8a
```

### `dpkg` source package: `libidn=1.28-1ubuntu2.1`

Binary Packages:

- `libidn11:amd64=1.28-1ubuntu2.1`
- `libidn11-dev=1.28-1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libidn11/copyright`, `/usr/share/doc/libidn11-dev/copyright`)

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
$ apt-get source -qq --print-uris libidn=1.28-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.28-1ubuntu2.1.dsc' libidn_1.28-1ubuntu2.1.dsc 2264 SHA256:7b111cff79738a91e3b553cd59f01e034a1800ad3d5eb7b157aeda249f360e27
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.28.orig.tar.gz' libidn_1.28.orig.tar.gz 3476317 SHA256:dd357a968449abc97c7e5fa088a4a384de57cb36564f9d4e0d898ecc6373abfb
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.28-1ubuntu2.1.debian.tar.gz' libidn_1.28-1ubuntu2.1.debian.tar.gz 47763 SHA256:511a2cfd43a0f3717152434d6735ddcddc12c85914b0b40e5df83a27bc9f0271
```

### `dpkg` source package: `libjpeg-turbo=1.3.0-0ubuntu2`

Binary Packages:

- `libjpeg-turbo8:amd64=1.3.0-0ubuntu2`
- `libjpeg-turbo8-dev:amd64=1.3.0-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

- `JPEG`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1.3.0-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.3.0-0ubuntu2.dsc' libjpeg-turbo_1.3.0-0ubuntu2.dsc 2247 SHA256:41cac9ac29d2697f1d15d61842ab837fc50078fbe7020a8715c7a0beb4d52f6f
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.3.0.orig.tar.gz' libjpeg-turbo_1.3.0.orig.tar.gz 1361603 SHA256:2657008cfc08aadbaca065bd9f8964b8a2c0abd03e73da5b5f09c1216be31234
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.3.0-0ubuntu2.debian.tar.gz' libjpeg-turbo_1.3.0-0ubuntu2.debian.tar.gz 27146 SHA256:f9d74e29affcc5930915b24054f5e831fcbfab11bf434501cf9359f09f9211fb
```

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

### `dpkg` source package: `liblocale-gettext-perl=1.05-7build3`

Binary Packages:

- `liblocale-gettext-perl=1.05-7build3`

Licenses: (parsed from: `/usr/share/doc/liblocale-gettext-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris liblocale-gettext-perl=1.05-7build3
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05-7build3.dsc' liblocale-gettext-perl_1.05-7build3.dsc 2207 SHA256:49269c06eb77bbe395fdcf7c6865f1c5b2303685e8f9b5ae87e7ef7bb90ce873
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05.orig.tar.gz' liblocale-gettext-perl_1.05.orig.tar.gz 7693 SHA256:27367f3dc1be79c9ed178732756e37e4cfce45f9e2a27ebf26e1f40d80124694
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05-7build3.debian.tar.gz' liblocale-gettext-perl_1.05-7build3.debian.tar.gz 5709 SHA256:d452e591f674de0d1e6560fca3a844c0170972c1e361185a12942b7961e0b0d1
```

### `dpkg` source package: `liblockfile=1.09-6ubuntu1`

Binary Packages:

- `liblockfile-bin=1.09-6ubuntu1`
- `liblockfile1:amd64=1.09-6ubuntu1`

Licenses: (parsed from: `/usr/share/doc/liblockfile-bin/copyright`, `/usr/share/doc/liblockfile1/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris liblockfile=1.09-6ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblockfile/liblockfile_1.09-6ubuntu1.dsc' liblockfile_1.09-6ubuntu1.dsc 1327 SHA256:332fe85b146ef917302ed6684388a185b316a8e2a59b7b7e0542cbd31c29d0da
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblockfile/liblockfile_1.09.orig.tar.gz' liblockfile_1.09.orig.tar.gz 32178 SHA256:16979eba05396365e1d6af7100431ae9d32f9bc063930d1de66298a0695f1b7f
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblockfile/liblockfile_1.09-6ubuntu1.debian.tar.bz2' liblockfile_1.09-6ubuntu1.debian.tar.bz2 8424 SHA256:0bcdbe4f5f6d39b172cc1226ead53fc9c104b0adfb70d58801a18d61be11e094
```

### `dpkg` source package: `liblog-message-simple-perl=0.10-1`

Binary Packages:

- `liblog-message-simple-perl=0.10-1`

Licenses: (parsed from: `/usr/share/doc/liblog-message-simple-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris liblog-message-simple-perl=0.10-1
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblog-message-simple-perl/liblog-message-simple-perl_0.10-1.dsc' liblog-message-simple-perl_0.10-1.dsc 2152 SHA256:d38b3dcea767bb34f1e661a2c19b86f1c220c1d9a02d0eddc76ae18f88c3613f
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblog-message-simple-perl/liblog-message-simple-perl_0.10.orig.tar.gz' liblog-message-simple-perl_0.10.orig.tar.gz 5717 SHA256:aa12d1a4c0ac260b94d448fa01feba242a8a85cb6cbfdc66432e3b5b468add96
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblog-message-simple-perl/liblog-message-simple-perl_0.10-1.debian.tar.gz' liblog-message-simple-perl_0.10-1.debian.tar.gz 1311 SHA256:716f36ecba5ce89db962b2326e155395c5a1e3ecbc8513a69dcab78e4ef5a01e
```

### `dpkg` source package: `liblqr=0.4.1-2ubuntu1`

Binary Packages:

- `liblqr-1-0:amd64=0.4.1-2ubuntu1`
- `liblqr-1-0-dev=0.4.1-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`, `/usr/share/doc/liblqr-1-0-dev/copyright`)

- `GPL-3`
- `GPLv3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris liblqr=0.4.1-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.1-2ubuntu1.dsc' liblqr_0.4.1-2ubuntu1.dsc 1380 SHA256:b8ac034b054ec65d9ba96f2efd94c9d09055bc6df1e1ee95cfab728c30e029cd
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.1.orig.tar.gz' liblqr_0.4.1.orig.tar.gz 437594 SHA256:3d8214babc70838aff8bbf81cc7809001e28252f1c3a5f8ad61f2c2c629b8908
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.1-2ubuntu1.diff.gz' liblqr_0.4.1-2ubuntu1.diff.gz 5744 SHA256:c316102c7fe372a9588026b942aef087082d5b03109fa833ec9e8332a40b3a02
```

### `dpkg` source package: `libmodule-pluggable-perl=5.1-1`

Binary Packages:

- `libmodule-pluggable-perl=5.1-1`

Licenses: (parsed from: `/usr/share/doc/libmodule-pluggable-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libmodule-pluggable-perl=5.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmodule-pluggable-perl/libmodule-pluggable-perl_5.1-1.dsc' libmodule-pluggable-perl_5.1-1.dsc 2186 SHA256:c85da4b7e21a95f92d9bbf25f9c382698d25536edb7f3d30e7025e01e9cd91a6
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmodule-pluggable-perl/libmodule-pluggable-perl_5.1.orig.tar.gz' libmodule-pluggable-perl_5.1.orig.tar.gz 29418 SHA256:e2dc354043bb16f1f3df8c4bb26070b26e594819f218cf8b8ac19e79c720916f
'http://archive.ubuntu.com/ubuntu/pool/main/libm/libmodule-pluggable-perl/libmodule-pluggable-perl_5.1-1.debian.tar.gz' libmodule-pluggable-perl_5.1-1.debian.tar.gz 1699 SHA256:4e3c2b6a7b934598a6d73cfa0ca2f35f21651ba30201a0461ca3da43dd8fb5d0
```

### `dpkg` source package: `libnih=1.0.3-4ubuntu25`

Binary Packages:

- `libnih-dbus1:amd64=1.0.3-4ubuntu25`
- `libnih1:amd64=1.0.3-4ubuntu25`

Licenses: (parsed from: `/usr/share/doc/libnih-dbus1/copyright`, `/usr/share/doc/libnih1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libnih=1.0.3-4ubuntu25
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnih/libnih_1.0.3-4ubuntu25.dsc' libnih_1.0.3-4ubuntu25.dsc 2337 SHA256:01d5bd66e21faae94ce69c9b05d87f0ef97bc6f2a88c735b440c007a9bde61ef
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnih/libnih_1.0.3.orig.tar.gz' libnih_1.0.3.orig.tar.gz 1187624 SHA256:897572df7565c0a90a81532671e23c63f99b4efde2eecbbf11e7857fbc61f405
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnih/libnih_1.0.3-4ubuntu25.diff.gz' libnih_1.0.3-4ubuntu25.diff.gz 268373 SHA256:cfd56ef6b0a67142cc3aaf5a4aa62a4d5f3c4ed5034316fd390396474f9258f3
```

### `dpkg` source package: `libpng=1.2.50-1ubuntu2.14.04.2`

Binary Packages:

- `libpng12-0:amd64=1.2.50-1ubuntu2.14.04.2`
- `libpng12-dev=1.2.50-1ubuntu2.14.04.2`

Licenses: (parsed from: `/usr/share/doc/libpng12-0/copyright`, `/usr/share/doc/libpng12-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpng=1.2.50-1ubuntu2.14.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng_1.2.50-1ubuntu2.14.04.2.dsc' libpng_1.2.50-1ubuntu2.14.04.2.dsc 2118 SHA256:81c74ca4d5c69f1dbe010a1a8d41f8068610a8d0a14f14b4c0a0db81d853cf3d
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng_1.2.50.orig.tar.xz' libpng_1.2.50.orig.tar.xz 539152 SHA256:4724f81f8c92ac7f360ad1fbf173396ea7c535923424db9fbaff07bfd9d8e8e7
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng_1.2.50-1ubuntu2.14.04.2.debian.tar.bz2' libpng_1.2.50-1ubuntu2.14.04.2.debian.tar.bz2 21186 SHA256:88b21af6520f704cd60406740256f53a46beafb9790ab8427e3c03cbea7f94cf
```

### `dpkg` source package: `libpod-latex-perl=0.61-1`

Binary Packages:

- `libpod-latex-perl=0.61-1`

Licenses: (parsed from: `/usr/share/doc/libpod-latex-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libpod-latex-perl=0.61-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpod-latex-perl/libpod-latex-perl_0.61-1.dsc' libpod-latex-perl_0.61-1.dsc 2102 SHA256:a2be8be9a67928e3db5808d744792506b1eb9970b2c48ecf4b7ad5f13e1c3761
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpod-latex-perl/libpod-latex-perl_0.61.orig.tar.gz' libpod-latex-perl_0.61.orig.tar.gz 32618 SHA256:15a840ea1c8a76cd3c865fbbf2fec33b03615c0daa50f9c800c54e0cf0659d46
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpod-latex-perl/libpod-latex-perl_0.61-1.debian.tar.gz' libpod-latex-perl_0.61-1.debian.tar.gz 1733 SHA256:df7afa5f5bfc0c54a72a4641ae915e5c13106a741535f4028555921f01ca42b3
```

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

### `dpkg` source package: `librsvg=2.40.2-1`

Binary Packages:

- `gir1.2-rsvg-2.0=2.40.2-1`
- `librsvg2-2:amd64=2.40.2-1`
- `librsvg2-common:amd64=2.40.2-1`
- `librsvg2-dev=2.40.2-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.40.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.2-1.dsc' librsvg_2.40.2-1.dsc 2703 SHA256:5256105ec98c9f864e4759c1efb9f44bd991c5460a9561565dba9e76ee068200
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.2.orig.tar.xz' librsvg_2.40.2.orig.tar.xz 506048 SHA256:48049b643294636df7de1a4b997414d699666f5dc44776945c218a257d2a291c
'http://archive.ubuntu.com/ubuntu/pool/main/libr/librsvg/librsvg_2.40.2-1.debian.tar.xz' librsvg_2.40.2-1.debian.tar.xz 13832 SHA256:079094dfcaa8a819223b2c5a05239f1fd5ef283eef338208302c65cc7aff8203
```

### `dpkg` source package: `libselinux=2.2.2-1ubuntu0.1`

Binary Packages:

- `libselinux1:amd64=2.2.2-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.2.2-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.2.2-1ubuntu0.1.dsc' libselinux_2.2.2-1ubuntu0.1.dsc 2503 SHA256:80989583dcb2f83a4e983dad1844fc8ad65b1a3f02a7fef3bd92929c70f226bb
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.2.2.orig.tar.gz' libselinux_2.2.2.orig.tar.gz 171013 SHA256:30ab363416806da907b86b97f1d31c252473e3200358bb1570f563c8312b5a3e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.2.2-1ubuntu0.1.debian.tar.xz' libselinux_2.2.2-1ubuntu0.1.debian.tar.xz 23272 SHA256:bee7db76734afdc53f0b43917c23d1ba459bcf51ef8a503522509603b2201c6d
```

### `dpkg` source package: `libsemanage=2.2-1`

Binary Packages:

- `libsemanage-common=2.2-1`
- `libsemanage1:amd64=2.2-1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.2-1.dsc' libsemanage_2.2-1.dsc 2080 SHA256:e45dd4d550ef87838e4ec5ff81e7d90298e0d33e0d82524fc118dd90eb3557a9
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.2.orig.tar.gz' libsemanage_2.2.orig.tar.gz 138208 SHA256:11f60bfa0f1c6063cd9bd99ce0cb4acc9d6d9e9b8d7743d39e847bcd7803bd75
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.2-1.debian.tar.gz' libsemanage_2.2-1.debian.tar.gz 16184 SHA256:2a831efc81eff624d80aae3cd50e4460788e2179a035ffdc760781884066c45b
```

### `dpkg` source package: `libsepol=2.2-1ubuntu0.1`

Binary Packages:

- `libsepol1:amd64=2.2-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.2-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.2-1ubuntu0.1.dsc' libsepol_2.2-1ubuntu0.1.dsc 1796 SHA256:e9b32bf57f6e1c0f4eafa75dcdf2e682c52f70978d76789a994fab5f3ce544b4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.2.orig.tar.gz' libsepol_2.2.orig.tar.gz 209622 SHA256:77a4b27006295805bdbd7f240038cb32a49be1d60847d413899501702933fc0f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.2-1ubuntu0.1.debian.tar.xz' libsepol_2.2-1ubuntu0.1.debian.tar.xz 12992 SHA256:5a901f01f3f03b110bee09ca0813f5e3afc308744778604004166869b08c5cc7
```

### `dpkg` source package: `libsigsegv=2.10-2`

Binary Packages:

- `libsigsegv2:amd64=2.10-2`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.10-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.10-2.dsc' libsigsegv_2.10-2.dsc 2165 SHA256:6d0be02f6b47570df4bd4b1ddc09850545886af8aceb7f19641b00ace714f9aa
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.10.orig.tar.gz' libsigsegv_2.10.orig.tar.gz 402279 SHA256:8460a4a3dd4954c3d96d7a4f5dd5bc4d9b76f5754196aa245287553b26d2199a
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.10-2.debian.tar.gz' libsigsegv_2.10-2.debian.tar.gz 6289 SHA256:7efbff558beb1a5ca7ead1e8771d2f9df8521f2c07eda5583992da9525a5ff38
```

### `dpkg` source package: `libsm=2:1.2.1-2`

Binary Packages:

- `libsm-dev:amd64=2:1.2.1-2`
- `libsm6:amd64=2:1.2.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.1-2.dsc' libsm_1.2.1-2.dsc 2131 SHA256:ceb0ece00e8343a555a0eaffc712c926c43b2fbf363f6d92589cdd54d2479945
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.1.orig.tar.gz' libsm_1.2.1.orig.tar.gz 405702 SHA256:c7f3660fd5c0ea80ef311e46261eca7c3025ad02c17e545d690a73d70deec7d5
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.1-2.diff.gz' libsm_1.2.1-2.diff.gz 15411 SHA256:cc8cc250f80ffefd644d3619a148bc8cc14c1bc6a5e3331266de356236950153
```

### `dpkg` source package: `libtasn1-6=3.4-3ubuntu0.4`

Binary Packages:

- `libtasn1-6:amd64=3.4-3ubuntu0.4`
- `libtasn1-6-dev=3.4-3ubuntu0.4`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`, `/usr/share/doc/libtasn1-6-dev/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=3.4-3ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_3.4-3ubuntu0.4.dsc' libtasn1-6_3.4-3ubuntu0.4.dsc 2477 SHA256:37f4e952f06ae3c12f729a6adb8c6b1becbcd7a50dd2fc3322d44820f185eee1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_3.4.orig.tar.gz' libtasn1-6_3.4.orig.tar.gz 1844115 SHA256:f353507a458fe2372b791016a056c95946eebfc7256b49013851f134a5e6acc8
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_3.4-3ubuntu0.4.debian.tar.gz' libtasn1-6_3.4-3ubuntu0.4.debian.tar.gz 68565 SHA256:5ae639db91228a1232c73bfda07484bd456b577090e1f33c5b973fcf2350f8b5
```

### `dpkg` source package: `libterm-ui-perl=0.42-1`

Binary Packages:

- `libterm-ui-perl=0.42-1`

Licenses: (parsed from: `/usr/share/doc/libterm-ui-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libterm-ui-perl=0.42-1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libterm-ui-perl/libterm-ui-perl_0.42-1.dsc' libterm-ui-perl_0.42-1.dsc 2068 SHA256:50d0e629750be73ccf424c1ea05e3beb2f61268961fe54e1de322deb581429ad
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libterm-ui-perl/libterm-ui-perl_0.42.orig.tar.gz' libterm-ui-perl_0.42.orig.tar.gz 12276 SHA256:380d1ad5c56a9375182eb3051fd3f350137ceac1517a95ffecb8107c1d4fb7ea
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libterm-ui-perl/libterm-ui-perl_0.42-1.debian.tar.gz' libterm-ui-perl_0.42-1.debian.tar.gz 1744 SHA256:43803d1531609ba7008ff4f6b553bfad63c0ff28628abaaa11cf73b450ef8329
```

### `dpkg` source package: `libtext-charwidth-perl=0.04-7build3`

Binary Packages:

- `libtext-charwidth-perl=0.04-7build3`

Licenses: (parsed from: `/usr/share/doc/libtext-charwidth-perl/copyright`)

- `Artistic`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libtext-charwidth-perl=0.04-7build3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-7build3.dsc' libtext-charwidth-perl_0.04-7build3.dsc 1948 SHA256:6b5d012f41f6c7e9a5fb86b5e39e86a649a501806ef6094c7bb7bce448b7c30c
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04.orig.tar.bz2' libtext-charwidth-perl_0.04.orig.tar.bz2 8327 SHA256:2990c13c3f4a5479d7dbc5a94b86c23798cf0dc7df54ffe54e065f072558b6ed
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-7build3.debian.tar.bz2' libtext-charwidth-perl_0.04-7build3.debian.tar.bz2 3387 SHA256:296f9df6e68bd3c8ba6cc9c45f4a86f2b77f677826f72ee032b9e6d89e9f2b0c
```

### `dpkg` source package: `libtext-iconv-perl=1.7-5build2`

Binary Packages:

- `libtext-iconv-perl=1.7-5build2`

Licenses: (parsed from: `/usr/share/doc/libtext-iconv-perl/copyright`)

- `Artistic`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libtext-iconv-perl=1.7-5build2
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-iconv-perl/libtext-iconv-perl_1.7-5build2.dsc' libtext-iconv-perl_1.7-5build2.dsc 1909 SHA256:ae268938ebb2b944546c1f693fed2739184463f87ee58dc4c42e58081f2d937b
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-iconv-perl/libtext-iconv-perl_1.7.orig.tar.bz2' libtext-iconv-perl_1.7.orig.tar.bz2 9977 SHA256:815c5169b7afc40bc6f681b4c615ff8fb0e073d87422280c8c759a4666567490
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-iconv-perl/libtext-iconv-perl_1.7-5build2.debian.tar.bz2' libtext-iconv-perl_1.7-5build2.debian.tar.bz2 3281 SHA256:34f85db9d72af1fa53fb30564c8d1a96d04fb293d1d7546823e104038e8aec60
```

### `dpkg` source package: `libtext-soundex-perl=3.4-1build1`

Binary Packages:

- `libtext-soundex-perl=3.4-1build1`

Licenses: (parsed from: `/usr/share/doc/libtext-soundex-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `other`

Source:

```console
$ apt-get source -qq --print-uris libtext-soundex-perl=3.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-soundex-perl/libtext-soundex-perl_3.4-1build1.dsc' libtext-soundex-perl_3.4-1build1.dsc 2142 SHA256:3fa4197245239a9c699e2d18984b36c04e4e8de07fccde07c9f96d00c7cf1cd4
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-soundex-perl/libtext-soundex-perl_3.4.orig.tar.gz' libtext-soundex-perl_3.4.orig.tar.gz 9024 SHA256:2e56bb4324ee0186b908b3bd78463643affe7295624af0628e81491e910283d9
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-soundex-perl/libtext-soundex-perl_3.4-1build1.debian.tar.gz' libtext-soundex-perl_3.4-1build1.debian.tar.gz 1695 SHA256:4016a916f527512474b618d9006facc13de57b71070b791cbea347c254c745bc
```

### `dpkg` source package: `libtext-wrapi18n-perl=0.06-7`

Binary Packages:

- `libtext-wrapi18n-perl=0.06-7`

Licenses: (parsed from: `/usr/share/doc/libtext-wrapi18n-perl/copyright`)

- `Artistic`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtext-wrapi18n-perl=0.06-7
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-7.dsc' libtext-wrapi18n-perl_0.06-7.dsc 1156 SHA256:777dd5309172c3fa6ccea73b3c821cf6533ddb72b4adbe4def9d45fd8902b544
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06.orig.tar.gz' libtext-wrapi18n-perl_0.06.orig.tar.gz 3797 SHA256:432c2a801efe9f12d631124c1163439eac4c99449ba13d80133c45ecacc627f5
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-7.diff.gz' libtext-wrapi18n-perl_0.06-7.diff.gz 3031 SHA256:fae1a435e8b2604bf78666e58e4603728990495db302a9799d63cb099e3b4001
```

### `dpkg` source package: `libthai=0.1.20-3`

Binary Packages:

- `libthai-data=0.1.20-3`
- `libthai0:amd64=0.1.20-3`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.20-3
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.20-3.dsc' libthai_0.1.20-3.dsc 2129 SHA256:2bc1de71b4c1fdcaec8d346c26a2dfee5acb981834831bbfb7a06e3e286c4b5c
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.20.orig.tar.xz' libthai_0.1.20.orig.tar.xz 383820 SHA256:5a107f5a4dc5433ec6deb744435a4d8dc89daec0a189b9c76a90648fda0ef7ed
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.20-3.debian.tar.gz' libthai_0.1.20-3.debian.tar.gz 11341 SHA256:054b70c706a078ba2038836d130a057326ff402df2b4da6c6acaff3390f9b70b
```

### `dpkg` source package: `libtool=2.4.2-1.7ubuntu1`

Binary Packages:

- `libltdl-dev:amd64=2.4.2-1.7ubuntu1`
- `libltdl7:amd64=2.4.2-1.7ubuntu1`
- `libtool=2.4.2-1.7ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.2-1.7ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.2-1.7ubuntu1.dsc' libtool_2.4.2-1.7ubuntu1.dsc 1471 SHA256:20cfd4572f2572e1777b348e617b622245c28c7b784befe646e29e714d2e5d51
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.2.orig.tar.gz' libtool_2.4.2.orig.tar.gz 2632347 SHA256:b38de44862a987293cd3d8dfae1c409d514b6c4e794ebc93648febf9afc38918
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.2-1.7ubuntu1.debian.tar.gz' libtool_2.4.2-1.7ubuntu1.debian.tar.gz 19655 SHA256:e4db54a9333ad8a57093454e4f889a496f3af7788afd05d9f4c15cb62b6793e5
```

### `dpkg` source package: `libusb=2:0.1.12-23.3ubuntu1`

Binary Packages:

- `libusb-0.1-4:amd64=2:0.1.12-23.3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libusb-0.1-4/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libusb=2:0.1.12-23.3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-23.3ubuntu1.dsc' libusb_0.1.12-23.3ubuntu1.dsc 1356 SHA256:d49dc91d6516d4d5f2019fe15da1dafac85c0138219818e7019ff0e7decb9c70
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12.orig.tar.gz' libusb_0.1.12.orig.tar.gz 389343 SHA256:37f6f7d9de74196eb5fc0bbe0aea9b5c939de7f500acba3af6fd643f3b538b44
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-23.3ubuntu1.debian.tar.gz' libusb_0.1.12-23.3ubuntu1.debian.tar.gz 564145 SHA256:47d0299844bd0fce95e7488fe7ef0b77954e71045b2df0308984dd2e2b9fa27c
```

### `dpkg` source package: `libvpx=1.3.0-2`

Binary Packages:

- `libvpx1:amd64=1.3.0-2`

Licenses: (parsed from: `/usr/share/doc/libvpx1/copyright`)

- `Artistic`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libvpx=1.3.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.3.0-2.dsc' libvpx_1.3.0-2.dsc 1463 SHA256:ac1927d54736a44f73ef05e4fc8c290092728ee6b53bb06ee8a6f0f040797172
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.3.0.orig.tar.bz2' libvpx_1.3.0.orig.tar.bz2 2077846 SHA256:bd5af97b74d53a111b48852dfcd1791b2c758f1fe972833b363fe34a83a7750a
'http://archive.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx_1.3.0-2.debian.tar.gz' libvpx_1.3.0-2.debian.tar.gz 10857 SHA256:e63632aa78955eed7b2040d336091dc7a1f1d46398ce1b5f956e9e20c93c08a1
```

### `dpkg` source package: `libwebp=0.4.0-4`

Binary Packages:

- `libwebp-dev:amd64=0.4.0-4`
- `libwebp5:amd64=0.4.0-4`
- `libwebpdemux1:amd64=0.4.0-4`
- `libwebpmux1:amd64=0.4.0-4`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp5/copyright`, `/usr/share/doc/libwebpdemux1/copyright`, `/usr/share/doc/libwebpmux1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.4.0-4
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.4.0-4.dsc' libwebp_0.4.0-4.dsc 1398 SHA256:f47a36f7c23b54c4d5aaa664a1ca74b9f59659fc04a85e0fc638720c5a7d4c04
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.4.0.orig.tar.gz' libwebp_0.4.0.orig.tar.gz 887880 SHA256:31913577e96386556855b41d210736449445fe96cfbe9289014e9b8afa944d69
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.4.0-4.debian.tar.gz' libwebp_0.4.0-4.debian.tar.gz 3782 SHA256:6e7bcb4285b4d3b8cf08d8772c3043ab6e2907c1cbcabf04339bbdb56aaeffe2
```

### `dpkg` source package: `libwmf=0.2.8.4-10.3ubuntu1.14.04.1`

Binary Packages:

- `libwmf-dev=0.2.8.4-10.3ubuntu1.14.04.1`
- `libwmf0.2-7:amd64=0.2.8.4-10.3ubuntu1.14.04.1`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.8.4-10.3ubuntu1.14.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-10.3ubuntu1.14.04.1.dsc' libwmf_0.2.8.4-10.3ubuntu1.14.04.1.dsc 2225 SHA256:bd16079f5aa1fa392b05d25b21b9a1dca709743228325c134c0c2179c8a8acc5
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4.orig.tar.gz' libwmf_0.2.8.4.orig.tar.gz 2169375 SHA256:5b345c69220545d003ad52bfd035d5d6f4f075e65204114a9e875e84895a7cf8
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwmf/libwmf_0.2.8.4-10.3ubuntu1.14.04.1.debian.tar.gz' libwmf_0.2.8.4-10.3ubuntu1.14.04.1.debian.tar.gz 12707 SHA256:753b84354928fccbc77836e83e722f6eb4cc05408200551807e1d90991570ba1
```

### `dpkg` source package: `libx11=2:1.6.2-1ubuntu2`

Binary Packages:

- `libx11-6:amd64=2:1.6.2-1ubuntu2`
- `libx11-data=2:1.6.2-1ubuntu2`
- `libx11-dev:amd64=2:1.6.2-1ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.2-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.2-1ubuntu2.dsc' libx11_1.6.2-1ubuntu2.dsc 1946 SHA256:1ac50ecc1e33826bb3ae42ba59694b86464db889c9d3485ee4e19ed7e8251c89
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.2.orig.tar.gz' libx11_1.6.2.orig.tar.gz 3119924 SHA256:b93739bcd517723121f508bcaf0c213c1bae9c5eacffdca571ff0d86c30ead3e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.2-1ubuntu2.diff.gz' libx11_1.6.2-1ubuntu2.diff.gz 82749 SHA256:db2640ec0df1f57ea4160d0fcbe3629f82fa6049860c933e32eb4bdb41676019
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

### `dpkg` source package: `libxcb=1.10-2ubuntu1`

Binary Packages:

- `libxcb-render0:amd64=1.10-2ubuntu1`
- `libxcb-render0-dev:amd64=1.10-2ubuntu1`
- `libxcb-shm0:amd64=1.10-2ubuntu1`
- `libxcb-shm0-dev:amd64=1.10-2ubuntu1`
- `libxcb1:amd64=1.10-2ubuntu1`
- `libxcb1-dev:amd64=1.10-2ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.10-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.10-2ubuntu1.dsc' libxcb_1.10-2ubuntu1.dsc 6363 SHA256:6cdaaeb8c0ea201f842d7d07354cbc8c7676d9c483ba4f8d2f3577e2e0242070
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.10.orig.tar.gz' libxcb_1.10.orig.tar.gz 601241 SHA256:c4cd324ac7bf810e95b1c1b56f413b13850eaa1d7eca60ddc46c61ac9d5f4441
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.10-2ubuntu1.diff.gz' libxcb_1.10-2ubuntu1.diff.gz 26114 SHA256:768e0a19aa0ed7aa4c4cd4f5761bac25e150cfaeeeec7bc7da2fafe70fd6ea1b
```

### `dpkg` source package: `libxdmcp=1:1.1.1-1`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.1-1`
- `libxdmcp6:amd64=1:1.1.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.1-1.dsc' libxdmcp_1.1.1-1.dsc 2102 SHA256:1713ac047ad1d235fe51476f2224d0dc0f170e9623c0735d1941c474942b24d3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.1.orig.tar.gz' libxdmcp_1.1.1.orig.tar.gz 376525 SHA256:ae6e677911e2696a2976b2f565f116ba9ce99e89cc7e140c4a791270c3aff96f
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.1-1.diff.gz' libxdmcp_1.1.1-1.diff.gz 14891 SHA256:bb79bc8439d63d5bed6bf7544f1ed14b4606c246f724523da2fa921cc9929f19
```

### `dpkg` source package: `libxext=2:1.3.2-1ubuntu0.0.14.04.1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.2-1ubuntu0.0.14.04.1`
- `libxext6:amd64=2:1.3.2-1ubuntu0.0.14.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.2-1ubuntu0.0.14.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.2-1ubuntu0.0.14.04.1.dsc' libxext_1.3.2-1ubuntu0.0.14.04.1.dsc 2376 SHA256:2915d91d7142356e479cdc26a086e7ff3d00cd0735dc1c31f7258fae195febb0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.2.orig.tar.gz' libxext_1.3.2.orig.tar.gz 464673 SHA256:7b770217633236977008b1fb39715a4f0a35836c760996066300bdeac1e3956c
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.2-1ubuntu0.0.14.04.1.diff.gz' libxext_1.3.2-1ubuntu0.0.14.04.1.diff.gz 19647 SHA256:11d50d360cf97a7df56dded8750b8e2d1d996e3f06962213eafbb7b34d49e494
```

### `dpkg` source package: `libxml2=2.9.1+dfsg1-3ubuntu4.8`

Binary Packages:

- `libxml2:amd64=2.9.1+dfsg1-3ubuntu4.8`
- `libxml2-dev:amd64=2.9.1+dfsg1-3ubuntu4.8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.1+dfsg1-3ubuntu4.8
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.1+dfsg1-3ubuntu4.8.dsc' libxml2_2.9.1+dfsg1-3ubuntu4.8.dsc 2713 SHA256:81c18158a8e335691e8fd88f8aa7e45ab2d2a1ee9011c7e6b48331fad2534b96
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.1+dfsg1.orig.tar.gz' libxml2_2.9.1+dfsg1.orig.tar.gz 3793894 SHA256:f3ec5256412192f74833286c4490672500b232ed1c9195214db2c641df064a28
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.1+dfsg1-3ubuntu4.8.debian.tar.gz' libxml2_2.9.1+dfsg1-3ubuntu4.8.debian.tar.gz 62044 SHA256:f56fdd231994787d0cd2cb16d5fdb697b797e0f1b57f9a920345ddfc74fb6201
```

### `dpkg` source package: `libxpm=1:3.5.10-1`

Binary Packages:

- `libxpm4:amd64=1:3.5.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.10-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.10-1.dsc' libxpm_3.5.10-1.dsc 2123 SHA256:629c05036046b706b4c2254d264a231dc1e3423f7c1dfaa57994115e0cffc3b4
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.10.orig.tar.gz' libxpm_3.5.10.orig.tar.gz 505139 SHA256:f73f06928a140fd2090c439d1d55c6682095044495af6bf886f8e66cf21baee5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxpm/libxpm_3.5.10-1.diff.gz' libxpm_3.5.10-1.diff.gz 15461 SHA256:6ffce2a378b594130d4ac422c2ce0221e4d774b3aa678aed3628927f705524fe
```

### `dpkg` source package: `libxrender=1:0.9.8-1build0.14.04.1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.8-1build0.14.04.1`
- `libxrender1:amd64=1:0.9.8-1build0.14.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.8-1build0.14.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.8-1build0.14.04.1.dsc' libxrender_0.9.8-1build0.14.04.1.dsc 2281 SHA256:1148fd40c5480267d993cab23bde230723c0b71aef9889b193e1b75f72ced54f
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.8.orig.tar.gz' libxrender_0.9.8.orig.tar.gz 363551 SHA256:c3acffff4cd5c91585e8c4fdf1ec29fc234482f661ed548112b4d52db19963d1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.8-1build0.14.04.1.diff.gz' libxrender_0.9.8-1build0.14.04.1.diff.gz 18943 SHA256:89bb744e3b8836e5b9bca3a99a5229eed3858640812a1fcda0a810cf8e48ebcb
```

### `dpkg` source package: `libxslt=1.1.28-2build1`

Binary Packages:

- `libxslt1-dev:amd64=1.1.28-2build1`
- `libxslt1.1:amd64=1.1.28-2build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.28-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.28-2build1.dsc' libxslt_1.1.28-2build1.dsc 1695 SHA256:6d7be74614da8e619da88f13b682d88e0f42f65a808352059e1b1e2da6aba0a1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.28.orig.tar.gz' libxslt_1.1.28.orig.tar.gz 3435907 SHA256:5fc7151a57b89c03d7b825df5a0fae0a8d5f05674c0e7cf2937ecec4d54a028c
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.28-2build1.debian.tar.gz' libxslt_1.1.28-2build1.debian.tar.gz 35893 SHA256:93668199e1a2247b1407dc782e4958afea120e934f01255dd1a74e918edf8f3f
```

### `dpkg` source package: `libxt=1:1.1.4-1`

Binary Packages:

- `libxt-dev:amd64=1:1.1.4-1`
- `libxt6:amd64=1:1.1.4-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.1.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.4-1.dsc' libxt_1.1.4-1.dsc 2130 SHA256:2158838b3cc889d51bc267c2a1832b753a38a507b22274daa5b9341d88b2109e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.4.orig.tar.gz' libxt_1.1.4.orig.tar.gz 950463 SHA256:823109a0d14dfaef7ede1b3fd28318078daa2cc2f005c439a21c33bdac3d3784
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.4-1.diff.gz' libxt_1.1.4-1.diff.gz 11246 SHA256:4414e80a2d36a7122de644d3fe67dadbd12a636d80366eda9b6840f1c7d328bc
```

### `dpkg` source package: `libyaml=0.1.4-3ubuntu3.1`

Binary Packages:

- `libyaml-0-2:amd64=0.1.4-3ubuntu3.1`
- `libyaml-dev:amd64=0.1.4-3ubuntu3.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)
  If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.4-3ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.4-3ubuntu3.1.dsc' libyaml_0.1.4-3ubuntu3.1.dsc 2046 SHA256:4f0729be77b16a3a6c4e3b27ab0cce060c8a15e88640ed2e5e8fe38ba6240c27
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.4.orig.tar.gz' libyaml_0.1.4.orig.tar.gz 471759 SHA256:7bf81554ae5ab2d9b6977da398ea789722e0db75b86bffdaeb4e66d961de6a37
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.4-3ubuntu3.1.debian.tar.gz' libyaml_0.1.4-3ubuntu3.1.debian.tar.gz 6404 SHA256:816422e1c743180409aff9247f3a298c8f98260d91da29c7315ce8bd576d53c2
```

### `dpkg` source package: `linux=3.13.0-107.154`

Binary Packages:

- `linux-libc-dev:amd64=3.13.0-107.154`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

