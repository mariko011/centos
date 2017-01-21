<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `neurodebian`

-	[`neurodebian:precise`](#neurodebianprecise)
-	[`neurodebian:nd12.04`](#neurodebiannd1204)
-	[`neurodebian:trusty`](#neurodebiantrusty)
-	[`neurodebian:nd14.04`](#neurodebiannd1404)
-	[`neurodebian:xenial`](#neurodebianxenial)
-	[`neurodebian:nd16.04`](#neurodebiannd1604)
-	[`neurodebian:yakkety`](#neurodebianyakkety)
-	[`neurodebian:nd16.10`](#neurodebiannd1610)
-	[`neurodebian:wheezy`](#neurodebianwheezy)
-	[`neurodebian:nd70`](#neurodebiannd70)
-	[`neurodebian:jessie`](#neurodebianjessie)
-	[`neurodebian:nd80`](#neurodebiannd80)
-	[`neurodebian:stretch`](#neurodebianstretch)
-	[`neurodebian:nd90`](#neurodebiannd90)
-	[`neurodebian:sid`](#neurodebiansid)
-	[`neurodebian:nd`](#neurodebiannd)

## `neurodebian:precise`

```console
$ docker pull neurodebian@sha256:591d240003add19c906af054971f6fc962e56169c2b000f99ee80bc630e07272
```

-	Platforms:
	-	linux; amd64

### `neurodebian:precise` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39142024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9989b4baafa42f5aa723436799cf16656105265d803f0926bddb863f1ec34d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:38:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:38:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Thu, 15 Dec 2016 18:38:10 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian precise main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel precise main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac6598689d22c2ad00132f48d45678c3d1f249c0b9f7c68ddd9247fc9fec30e`  
		Last Modified: Wed, 21 Dec 2016 18:20:58 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948afa7db48d63311a3d869940ea7ffe96f943daa98d2eaae34479b9acc8c3f2`  
		Last Modified: Wed, 21 Dec 2016 18:20:58 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7450ac01cc4936b12218b0541840c45c08e1f6e3d52c1efd58b29540ea33f0ba`  
		Last Modified: Wed, 21 Dec 2016 18:20:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd12.04`

```console
$ docker pull neurodebian@sha256:591d240003add19c906af054971f6fc962e56169c2b000f99ee80bc630e07272
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd12.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39142024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9989b4baafa42f5aa723436799cf16656105265d803f0926bddb863f1ec34d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:38:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:38:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Thu, 15 Dec 2016 18:38:10 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian precise main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel precise main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac6598689d22c2ad00132f48d45678c3d1f249c0b9f7c68ddd9247fc9fec30e`  
		Last Modified: Wed, 21 Dec 2016 18:20:58 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948afa7db48d63311a3d869940ea7ffe96f943daa98d2eaae34479b9acc8c3f2`  
		Last Modified: Wed, 21 Dec 2016 18:20:58 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7450ac01cc4936b12218b0541840c45c08e1f6e3d52c1efd58b29540ea33f0ba`  
		Last Modified: Wed, 21 Dec 2016 18:20:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:trusty`

```console
$ docker pull neurodebian@sha256:61b4957ac272a94434dc9c1228a85f2e83157b4085952e8775d5661b813531e7
```

-	Platforms:
	-	linux; amd64

### `neurodebian:trusty` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65770232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18da2fbcc6007595685ac6641cf0d0c1cf20f2702705f373bc701984761bd3b5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:36:41 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:36:43 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Sat, 21 Jan 2017 00:36:44 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb6280b1598e5be98f1e050bf8ce675716ceb6ff2b4f5588b709989d1f27647`  
		Last Modified: Sat, 21 Jan 2017 00:37:58 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d288ccb66ec2eb19b8604b4822faaf55027f3ff523d9d63a02b10687b1ac54`  
		Last Modified: Sat, 21 Jan 2017 00:37:58 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd1bf8fae315237dfb1513b2d2c7c6fdca123067141d8456e31a4450e02966e`  
		Last Modified: Sat, 21 Jan 2017 00:37:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd14.04`

```console
$ docker pull neurodebian@sha256:61b4957ac272a94434dc9c1228a85f2e83157b4085952e8775d5661b813531e7
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd14.04` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65770232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18da2fbcc6007595685ac6641cf0d0c1cf20f2702705f373bc701984761bd3b5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:36:41 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:36:43 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Sat, 21 Jan 2017 00:36:44 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb6280b1598e5be98f1e050bf8ce675716ceb6ff2b4f5588b709989d1f27647`  
		Last Modified: Sat, 21 Jan 2017 00:37:58 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d288ccb66ec2eb19b8604b4822faaf55027f3ff523d9d63a02b10687b1ac54`  
		Last Modified: Sat, 21 Jan 2017 00:37:58 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd1bf8fae315237dfb1513b2d2c7c6fdca123067141d8456e31a4450e02966e`  
		Last Modified: Sat, 21 Jan 2017 00:37:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:xenial`

```console
$ docker pull neurodebian@sha256:1b22ba27194a7b034518d3279773fafd4b14b1c6e4194d0895bf39512345f3ec
```

-	Platforms:
	-	linux; amd64

### `neurodebian:xenial` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50313984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5231af45ff4ec1f1edbcd58b033251fa6375bd23513a61276dedb15b335c646`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:36:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:36:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Sat, 21 Jan 2017 00:36:52 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4cc153ccda020c1e99d5c75461a64b5fadb6df2b0cb61a9dbc7b284a9ec9ef`  
		Last Modified: Sat, 21 Jan 2017 00:38:33 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ab0dee71170084a12fef6b0dea6246f1c824323278823111e508d26fb0be05`  
		Last Modified: Sat, 21 Jan 2017 00:38:33 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345b3f1ef022fb1c7b93aa8eb9716a13594355b907752b289ae7ed6444b00f0b`  
		Last Modified: Sat, 21 Jan 2017 00:38:32 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.04`

```console
$ docker pull neurodebian@sha256:1b22ba27194a7b034518d3279773fafd4b14b1c6e4194d0895bf39512345f3ec
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.04` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50313984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5231af45ff4ec1f1edbcd58b033251fa6375bd23513a61276dedb15b335c646`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:36:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:36:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Sat, 21 Jan 2017 00:36:52 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4cc153ccda020c1e99d5c75461a64b5fadb6df2b0cb61a9dbc7b284a9ec9ef`  
		Last Modified: Sat, 21 Jan 2017 00:38:33 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ab0dee71170084a12fef6b0dea6246f1c824323278823111e508d26fb0be05`  
		Last Modified: Sat, 21 Jan 2017 00:38:33 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345b3f1ef022fb1c7b93aa8eb9716a13594355b907752b289ae7ed6444b00f0b`  
		Last Modified: Sat, 21 Jan 2017 00:38:32 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:yakkety`

```console
$ docker pull neurodebian@sha256:53e9343067cfb4ca42f246ebe38f348f8b41b1eb2d403e4b01d632dc7ba0fb24
```

-	Platforms:
	-	linux; amd64

### `neurodebian:yakkety` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44010623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d9740588b5a8dbbae160a20d2fb5b534a5a637f471907d550e4d1c5db34ce3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:44:28 GMT
ADD file:eef57983bd66e3a118b47ebd754411714df861fd12aa9f292e26583747593d02 in / 
# Fri, 20 Jan 2017 21:44:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:44:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:45:02 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:37:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:37:08 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Sat, 21 Jan 2017 00:37:09 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian yakkety main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel yakkety main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:3a635c0fcefb5e1b7ea3963fb6e6b1124194e5914e7402937308ed44f7758700`  
		Last Modified: Fri, 20 Jan 2017 21:52:24 GMT  
		Size: 40.8 MB (40845445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3f7e9b4869ed2f872ffed29cc28109f5e789b37cc2714eed877fbf22ce65fa`  
		Last Modified: Fri, 20 Jan 2017 21:52:12 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad323864e1f85d17700ba6cdd9dfb704129f2bad61ae64c90de31a932ab95293`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d3fc870200efe46f0279de5d616e596980e49ff35ad023e07928fdff7f6d5f`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69d6ff0e5688af3aeefc9af3b6365eaeed61d00ffcc9f5bbef9e998a1440db`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14ae16f92b9d86863aafad39cfe8af2cc8c7b56070891b294c9a4d0a357817e`  
		Last Modified: Sat, 21 Jan 2017 00:39:08 GMT  
		Size: 3.2 MB (3159512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1ec0213fb9951876d0b88a08e7554251609c28e31d240e487fbb32e9d62def`  
		Last Modified: Sat, 21 Jan 2017 00:39:07 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7758cc9d895fff407288555e549c51a0f6e93532dcd1c7c8f55cb2fd3d68cd6f`  
		Last Modified: Sat, 21 Jan 2017 00:39:07 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.10`

```console
$ docker pull neurodebian@sha256:53e9343067cfb4ca42f246ebe38f348f8b41b1eb2d403e4b01d632dc7ba0fb24
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44010623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d9740588b5a8dbbae160a20d2fb5b534a5a637f471907d550e4d1c5db34ce3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:44:28 GMT
ADD file:eef57983bd66e3a118b47ebd754411714df861fd12aa9f292e26583747593d02 in / 
# Fri, 20 Jan 2017 21:44:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:44:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:45:02 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:37:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:37:08 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Sat, 21 Jan 2017 00:37:09 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian yakkety main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel yakkety main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:3a635c0fcefb5e1b7ea3963fb6e6b1124194e5914e7402937308ed44f7758700`  
		Last Modified: Fri, 20 Jan 2017 21:52:24 GMT  
		Size: 40.8 MB (40845445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3f7e9b4869ed2f872ffed29cc28109f5e789b37cc2714eed877fbf22ce65fa`  
		Last Modified: Fri, 20 Jan 2017 21:52:12 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad323864e1f85d17700ba6cdd9dfb704129f2bad61ae64c90de31a932ab95293`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d3fc870200efe46f0279de5d616e596980e49ff35ad023e07928fdff7f6d5f`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69d6ff0e5688af3aeefc9af3b6365eaeed61d00ffcc9f5bbef9e998a1440db`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14ae16f92b9d86863aafad39cfe8af2cc8c7b56070891b294c9a4d0a357817e`  
		Last Modified: Sat, 21 Jan 2017 00:39:08 GMT  
		Size: 3.2 MB (3159512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1ec0213fb9951876d0b88a08e7554251609c28e31d240e487fbb32e9d62def`  
		Last Modified: Sat, 21 Jan 2017 00:39:07 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7758cc9d895fff407288555e549c51a0f6e93532dcd1c7c8f55cb2fd3d68cd6f`  
		Last Modified: Sat, 21 Jan 2017 00:39:07 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:c00da1b65bde95a3e75c77b9b3a5530e3d8b443411d48bce902555a3d52c25be
```

-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37288039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5491069ec5a3f1c93d6f0cfde2a261073a61111ff4a004ecbac114f85ce57dc3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:38:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:38:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Tue, 17 Jan 2017 18:38:30 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3a80cb90e8a006f8cf5820dff634c60de50eec42a813c1b29b0b5cbb262a37`  
		Last Modified: Wed, 18 Jan 2017 05:22:17 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f5fe68b1bf15cfc84ff25b0f9b7d69ffb5b9c0a72eb31f701e50a2b084f17d`  
		Last Modified: Wed, 18 Jan 2017 05:22:17 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e79cc7f4ffb5cf6714d521d899135d5a26e584d2853dd093a9dd984794acba`  
		Last Modified: Wed, 18 Jan 2017 05:22:17 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd70`

```console
$ docker pull neurodebian@sha256:c00da1b65bde95a3e75c77b9b3a5530e3d8b443411d48bce902555a3d52c25be
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd70` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37288039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5491069ec5a3f1c93d6f0cfde2a261073a61111ff4a004ecbac114f85ce57dc3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:38:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:38:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Tue, 17 Jan 2017 18:38:30 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3a80cb90e8a006f8cf5820dff634c60de50eec42a813c1b29b0b5cbb262a37`  
		Last Modified: Wed, 18 Jan 2017 05:22:17 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f5fe68b1bf15cfc84ff25b0f9b7d69ffb5b9c0a72eb31f701e50a2b084f17d`  
		Last Modified: Wed, 18 Jan 2017 05:22:17 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e79cc7f4ffb5cf6714d521d899135d5a26e584d2853dd093a9dd984794acba`  
		Last Modified: Wed, 18 Jan 2017 05:22:17 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:e818031f35e0d15e9d211756ee29cc9b7149d9cc673ba1b7d46f0bfa84e1c4cc
```

-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51364775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc121c6580bffdc6e68f173756bda2498793b6e976bfdda5d6523815dff7e057`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:06:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:06:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Tue, 17 Jan 2017 18:06:53 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad03a9c319c9cc2d9eeb1302a57b6329f0079b8ac7f485ea97684dd23bdb1aa`  
		Last Modified: Wed, 18 Jan 2017 05:21:33 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0c2720d43335d4f97488a4502f69d08089cde1ca23372054d20ac793baf3b`  
		Last Modified: Wed, 18 Jan 2017 05:21:34 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92226e5a168b8e9062a00913f15cb69b74e66eea3c0b7bf6e79e140f4fc4d7d9`  
		Last Modified: Wed, 18 Jan 2017 05:21:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd80`

```console
$ docker pull neurodebian@sha256:e818031f35e0d15e9d211756ee29cc9b7149d9cc673ba1b7d46f0bfa84e1c4cc
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd80` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51364775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc121c6580bffdc6e68f173756bda2498793b6e976bfdda5d6523815dff7e057`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 18:06:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:06:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Tue, 17 Jan 2017 18:06:53 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad03a9c319c9cc2d9eeb1302a57b6329f0079b8ac7f485ea97684dd23bdb1aa`  
		Last Modified: Wed, 18 Jan 2017 05:21:33 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0c2720d43335d4f97488a4502f69d08089cde1ca23372054d20ac793baf3b`  
		Last Modified: Wed, 18 Jan 2017 05:21:34 GMT  
		Size: 3.1 KB (3131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92226e5a168b8e9062a00913f15cb69b74e66eea3c0b7bf6e79e140f4fc4d7d9`  
		Last Modified: Wed, 18 Jan 2017 05:21:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:b00bb6b606691ec26e7d085f5a5e9ec0dedf34e532118e49cebc30ad62e0ebd8
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49979366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cc457b4c2a10281d9679a7b70ee6fadb901e5d1eab5757f74aad45578b8113`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:13:38 GMT
ADD file:b8661e5bd7179ac7b23f0013637df93301390246609d446f45217ead261c33bf in / 
# Tue, 13 Dec 2016 22:13:43 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 20:53:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 21:18:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Wed, 14 Dec 2016 21:18:10 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:ca67a6a92c6d53b4eea40b8e1f63130784c8751379ffdc08b680768c57e510bc`  
		Last Modified: Tue, 13 Dec 2016 22:23:25 GMT  
		Size: 43.7 MB (43673589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e90be1ed2e21cee1a28521e30a6f70d22d584ad01c3f4109b5146002a9a1224`  
		Last Modified: Wed, 14 Dec 2016 21:24:47 GMT  
		Size: 6.3 MB (6302410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3262aa487958d866f37f3b73a9181c5395b611eab911ffa52338cf1933bc6142`  
		Last Modified: Wed, 14 Dec 2016 21:24:43 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7727f024c0e4aeaa70cfffd37b75f56f7cf6474902f652bf041a4238766a38e`  
		Last Modified: Wed, 14 Dec 2016 21:24:42 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd90`

```console
$ docker pull neurodebian@sha256:b00bb6b606691ec26e7d085f5a5e9ec0dedf34e532118e49cebc30ad62e0ebd8
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd90` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49979366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cc457b4c2a10281d9679a7b70ee6fadb901e5d1eab5757f74aad45578b8113`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:13:38 GMT
ADD file:b8661e5bd7179ac7b23f0013637df93301390246609d446f45217ead261c33bf in / 
# Tue, 13 Dec 2016 22:13:43 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 20:53:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 21:18:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Wed, 14 Dec 2016 21:18:10 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:ca67a6a92c6d53b4eea40b8e1f63130784c8751379ffdc08b680768c57e510bc`  
		Last Modified: Tue, 13 Dec 2016 22:23:25 GMT  
		Size: 43.7 MB (43673589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e90be1ed2e21cee1a28521e30a6f70d22d584ad01c3f4109b5146002a9a1224`  
		Last Modified: Wed, 14 Dec 2016 21:24:47 GMT  
		Size: 6.3 MB (6302410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3262aa487958d866f37f3b73a9181c5395b611eab911ffa52338cf1933bc6142`  
		Last Modified: Wed, 14 Dec 2016 21:24:43 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7727f024c0e4aeaa70cfffd37b75f56f7cf6474902f652bf041a4238766a38e`  
		Last Modified: Wed, 14 Dec 2016 21:24:42 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:7bc608be720610ed5e6e1a97decab042ef4c3d493d37fb69bbb2f4658f4584c5
```

-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50250339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1894cb62fef5005dfeb95e93908af94a3bb3741f0e71aa926056231da73669`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 21:18:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 21:20:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Wed, 14 Dec 2016 21:20:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220c04629b2396201aa005a4276b6c6db53b62196848081129209fd822919833`  
		Last Modified: Wed, 14 Dec 2016 21:25:26 GMT  
		Size: 6.4 MB (6380034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06296a153007d57c9c03477f755af5d2e4887628971815a370e5e290be76d47`  
		Last Modified: Wed, 14 Dec 2016 21:25:26 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc82b0db0b9a371f03e1acd7026323df3d851f243c053d491fff26983c5cd844`  
		Last Modified: Wed, 14 Dec 2016 21:25:25 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:7bc608be720610ed5e6e1a97decab042ef4c3d493d37fb69bbb2f4658f4584c5
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50250339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1894cb62fef5005dfeb95e93908af94a3bb3741f0e71aa926056231da73669`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 21:18:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 21:20:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Wed, 14 Dec 2016 21:20:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220c04629b2396201aa005a4276b6c6db53b62196848081129209fd822919833`  
		Last Modified: Wed, 14 Dec 2016 21:25:26 GMT  
		Size: 6.4 MB (6380034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06296a153007d57c9c03477f755af5d2e4887628971815a370e5e290be76d47`  
		Last Modified: Wed, 14 Dec 2016 21:25:26 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc82b0db0b9a371f03e1acd7026323df3d851f243c053d491fff26983c5cd844`  
		Last Modified: Wed, 14 Dec 2016 21:25:25 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
