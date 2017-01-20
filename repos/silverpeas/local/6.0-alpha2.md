# `silverpeas:6.0-alpha2`

## Docker Metadata

- Image ID: `sha256:4f5b54ab4f6e66747d711be761190a8eccd9849ceb899ab03cc96ea73f3f2680`
- Created: `2017-01-20T00:35:59.167869439Z`
- Arch: `linux`/`amd64`
- Command: `["/opt/run.sh"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `TERM=xterm`
  - `LANG=en_US.UTF-8`
  - `LANGUAGE=en_US.UTF-8`
  - `LC_ALL=en_US.UTF-8`
  - `JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64`
  - `SILVERPEAS_HOME=/opt/silverpeas`
  - `JBOSS_HOME=/opt/wildfly`
  - `SILVERPEAS_VERSION=6.0-alpha2`
  - `WILDFLY_VERSION=10.1.0`

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

### `dpkg` source package: `alsa-lib=1.1.0-0ubuntu1`

Binary Packages:

- `libasound2:amd64=1.1.0-0ubuntu1`
- `libasound2-data=1.1.0-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libasound2/copyright`, `/usr/share/doc/libasound2-data/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris alsa-lib=1.1.0-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.1.0-0ubuntu1.dsc' alsa-lib_1.1.0-0ubuntu1.dsc 1894 SHA256:17f7b1432cd6b2b1f5573658d42744fe7adeafd5aad482c9ee0be30869ef27f7
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.1.0.orig.tar.bz2' alsa-lib_1.1.0.orig.tar.bz2 929874 SHA256:dfde65d11e82b68f82e562ab6228c1fb7c78854345d3c57e2c68a9dd3dae1f15
'http://archive.ubuntu.com/ubuntu/pool/main/a/alsa-lib/alsa-lib_1.1.0-0ubuntu1.debian.tar.xz' alsa-lib_1.1.0-0ubuntu1.debian.tar.xz 53828 SHA256:216445e0a62424c36080e4ef7eca6ad5c4bfe12f1258e52c1d98e53d212efac3
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

### `dpkg` source package: `apt=1.2.15ubuntu0.2`

Binary Packages:

- `apt=1.2.15ubuntu0.2`
- `libapt-pkg5.0:amd64=1.2.15ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.2.15ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.2.15ubuntu0.2.dsc' apt_1.2.15ubuntu0.2.dsc 2472 SHA256:e1ec3b1a7b8695bea6577f6c3a0717eaabc62c7cc8a003db94ef5cb2a0b2061f
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.2.15ubuntu0.2.tar.xz' apt_1.2.15ubuntu0.2.tar.xz 2057736 SHA256:b2cf7179055373709e4e95e87b87d642ece1aadf2898ed619377478a2affb50c
```

### `dpkg` source package: `atk1.0=2.18.0-1`

Binary Packages:

- `libatk1.0-0:amd64=2.18.0-1`
- `libatk1.0-data=2.18.0-1`

Licenses: (parsed from: `/usr/share/doc/libatk1.0-0/copyright`, `/usr/share/doc/libatk1.0-data/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris atk1.0=2.18.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/atk1.0/atk1.0_2.18.0-1.dsc' atk1.0_2.18.0-1.dsc 2738 SHA256:3d58e1e9e653705df8a092ed6942e2e518b1e539196e467fc60f20721ccaa84c
'http://archive.ubuntu.com/ubuntu/pool/main/a/atk1.0/atk1.0_2.18.0.orig.tar.xz' atk1.0_2.18.0.orig.tar.xz 687932 SHA256:ce6c48d77bf951083029d5a396dd552d836fff3c1715d3a7022e917e46d0c92b
'http://archive.ubuntu.com/ubuntu/pool/main/a/atk1.0/atk1.0_2.18.0-1.debian.tar.xz' atk1.0_2.18.0-1.debian.tar.xz 10520 SHA256:84ebc674126d71a27994b856274d05c801782ab4cbd3b78351c987525243ed1d
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

### `dpkg` source package: `avahi=0.6.32~rc+dfsg-1ubuntu2`

Binary Packages:

- `libavahi-client3:amd64=0.6.32~rc+dfsg-1ubuntu2`
- `libavahi-common-data:amd64=0.6.32~rc+dfsg-1ubuntu2`
- `libavahi-common3:amd64=0.6.32~rc+dfsg-1ubuntu2`
- `libavahi-glib1:amd64=0.6.32~rc+dfsg-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`, `/usr/share/doc/libavahi-glib1/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.6.32~rc+dfsg-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32~rc+dfsg-1ubuntu2.dsc' avahi_0.6.32~rc+dfsg-1ubuntu2.dsc 4408 SHA256:7bd0cfe91355e01836f8535b51efea1853b96c5ccf2f7dcf8508f9f613d935b9
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32~rc+dfsg.orig.tar.gz' avahi_0.6.32~rc+dfsg.orig.tar.gz 665175 SHA256:84f609611323613c8635146d1a93be0914f1f7a8027d1d5e71cbbab156741dac
'http://archive.ubuntu.com/ubuntu/pool/main/a/avahi/avahi_0.6.32~rc+dfsg-1ubuntu2.debian.tar.xz' avahi_0.6.32~rc+dfsg-1ubuntu2.debian.tar.xz 31772 SHA256:cf53b2d0685ca7a8abb0fdc23b4d5875640bdd27b2715bea25b9dff657aaf451
```

### `dpkg` source package: `base-files=9.4ubuntu4.3`

Binary Packages:

- `base-files=9.4ubuntu4.3`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=9.4ubuntu4.3
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.4ubuntu4.3.dsc' base-files_9.4ubuntu4.3.dsc 1557 SHA256:d11ddec0ad1599faeef008b23f7f4c29d95f2d83ff99b36bd010725c29b368a8
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.4ubuntu4.3.tar.xz' base-files_9.4ubuntu4.3.tar.xz 62960 SHA256:8b57107c1da1d31718271466d12d253bd6944f2e60d5abcf9c48cdd6aa7affc2
```

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
