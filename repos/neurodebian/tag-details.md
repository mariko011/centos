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
$ docker pull neurodebian@sha256:4bb2bb6e10c2b0996dff20bfb2a9f5d648bd1d516eda9e2cb68fcf3aee6fc5a9
```

-	Platforms:
	-	linux; amd64

### `neurodebian:trusty` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65770583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2039cb971121a651240f970412dede78eb5bf984115bc1772c5455a3a8ea807a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:38:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 02:31:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Fri, 16 Dec 2016 02:31:15 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411160c515739dbd4604866b059b43fb14507022f2ac9221e14ab1a855c21682`  
		Last Modified: Wed, 21 Dec 2016 18:22:39 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5502389dba470fc14cd1e0ee470de0613cfe85e4cdfef773b9b56aa4a1ee90ba`  
		Last Modified: Wed, 21 Dec 2016 18:22:39 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61c6bf2bdbf80a4312e0430c6643e412318fec7b411ed685f5cf9e73f08b9db`  
		Last Modified: Wed, 21 Dec 2016 18:22:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd14.04`

```console
$ docker pull neurodebian@sha256:4bb2bb6e10c2b0996dff20bfb2a9f5d648bd1d516eda9e2cb68fcf3aee6fc5a9
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd14.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65770583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2039cb971121a651240f970412dede78eb5bf984115bc1772c5455a3a8ea807a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:38:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 02:31:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Fri, 16 Dec 2016 02:31:15 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411160c515739dbd4604866b059b43fb14507022f2ac9221e14ab1a855c21682`  
		Last Modified: Wed, 21 Dec 2016 18:22:39 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5502389dba470fc14cd1e0ee470de0613cfe85e4cdfef773b9b56aa4a1ee90ba`  
		Last Modified: Wed, 21 Dec 2016 18:22:39 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61c6bf2bdbf80a4312e0430c6643e412318fec7b411ed685f5cf9e73f08b9db`  
		Last Modified: Wed, 21 Dec 2016 18:22:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:xenial`

```console
$ docker pull neurodebian@sha256:c759c86065410e032944be588a315ec419fb52d7e004939f20b9c57db1888df5
```

-	Platforms:
	-	linux; amd64

### `neurodebian:xenial` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50223481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105f8ec48bc8ef487fd566fd6f16ba313745307bde41f0948a2f91b3d4ccc86e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:31:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 02:31:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Fri, 16 Dec 2016 02:31:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d19aadf797acae0a011bf612a6e4ffc08c2b88c7a37c5daa18e7b0cae6e28a`  
		Last Modified: Wed, 21 Dec 2016 18:23:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3973c135a3c4913fbab69c8182fb479d907f9b5c5cea7b8f93c9409cb442aa4`  
		Last Modified: Wed, 21 Dec 2016 18:23:47 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85267c2fe6108d6564c5cde5e0bccffe385b290b652f29940851335536079691`  
		Last Modified: Wed, 21 Dec 2016 18:23:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.04`

```console
$ docker pull neurodebian@sha256:c759c86065410e032944be588a315ec419fb52d7e004939f20b9c57db1888df5
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50223481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105f8ec48bc8ef487fd566fd6f16ba313745307bde41f0948a2f91b3d4ccc86e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:31:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 02:31:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Fri, 16 Dec 2016 02:31:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d19aadf797acae0a011bf612a6e4ffc08c2b88c7a37c5daa18e7b0cae6e28a`  
		Last Modified: Wed, 21 Dec 2016 18:23:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3973c135a3c4913fbab69c8182fb479d907f9b5c5cea7b8f93c9409cb442aa4`  
		Last Modified: Wed, 21 Dec 2016 18:23:47 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85267c2fe6108d6564c5cde5e0bccffe385b290b652f29940851335536079691`  
		Last Modified: Wed, 21 Dec 2016 18:23:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:yakkety`

```console
$ docker pull neurodebian@sha256:7b2984bc827d27994117a4f574e01dbf7288800b869f5b3772cd9f65bbb08246
```

-	Platforms:
	-	linux; amd64

### `neurodebian:yakkety` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151b18cc50d3a6690782c579ef2f89eb75fe1df5f1b40cad1df6a4422714713b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:42 GMT
ADD file:ff4f3a76739749954953d154cef97ec1066cdbe3d69d871e35b26d22921a8766 in / 
# Thu, 15 Dec 2016 17:45:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:47 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:31:37 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 02:31:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Fri, 16 Dec 2016 02:31:41 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian yakkety main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel yakkety main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:a694de2ff4f905c590b2499cb72beb52543535412fd0208919241fa3854e51e3`  
		Last Modified: Thu, 15 Dec 2016 17:50:47 GMT  
		Size: 40.8 MB (40767865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83592e4393780d3ec9c48df950b72bfc1601ca304ccb0c8ffb9daa7519ea716`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c987dfa597e6778266cbc4a308f7b0b59bbeafb45afa65b70db8f76007d8d84f`  
		Last Modified: Thu, 15 Dec 2016 17:50:32 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f2d4cb80ea00b5ae57ba227733a315d7900612b6189f9634965527cb1f6d7f`  
		Last Modified: Thu, 15 Dec 2016 17:50:34 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bc31a5976cb3a5279e0244cba618193fbaa46d19fa1b52fbce001abc5a963c`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96214b1237f7e81b2f71d39ec5a4187ba3a039ded7754e9419e6bc609643ec78`  
		Last Modified: Wed, 21 Dec 2016 18:24:25 GMT  
		Size: 3.2 MB (3159518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a701810e053e161f29cfb6a87a9d818d6f7555960c00741fcc23ec1664df88`  
		Last Modified: Wed, 21 Dec 2016 18:24:25 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f503eef0c625b0f7d399f3e606d7f75a6f1cab79bd52acd2288aa18c43f930`  
		Last Modified: Wed, 21 Dec 2016 18:24:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.10`

```console
$ docker pull neurodebian@sha256:7b2984bc827d27994117a4f574e01dbf7288800b869f5b3772cd9f65bbb08246
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43933051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151b18cc50d3a6690782c579ef2f89eb75fe1df5f1b40cad1df6a4422714713b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:42 GMT
ADD file:ff4f3a76739749954953d154cef97ec1066cdbe3d69d871e35b26d22921a8766 in / 
# Thu, 15 Dec 2016 17:45:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:47 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:31:37 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 02:31:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Fri, 16 Dec 2016 02:31:41 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian yakkety main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel yakkety main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:a694de2ff4f905c590b2499cb72beb52543535412fd0208919241fa3854e51e3`  
		Last Modified: Thu, 15 Dec 2016 17:50:47 GMT  
		Size: 40.8 MB (40767865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83592e4393780d3ec9c48df950b72bfc1601ca304ccb0c8ffb9daa7519ea716`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c987dfa597e6778266cbc4a308f7b0b59bbeafb45afa65b70db8f76007d8d84f`  
		Last Modified: Thu, 15 Dec 2016 17:50:32 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f2d4cb80ea00b5ae57ba227733a315d7900612b6189f9634965527cb1f6d7f`  
		Last Modified: Thu, 15 Dec 2016 17:50:34 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bc31a5976cb3a5279e0244cba618193fbaa46d19fa1b52fbce001abc5a963c`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96214b1237f7e81b2f71d39ec5a4187ba3a039ded7754e9419e6bc609643ec78`  
		Last Modified: Wed, 21 Dec 2016 18:24:25 GMT  
		Size: 3.2 MB (3159518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a701810e053e161f29cfb6a87a9d818d6f7555960c00741fcc23ec1664df88`  
		Last Modified: Wed, 21 Dec 2016 18:24:25 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f503eef0c625b0f7d399f3e606d7f75a6f1cab79bd52acd2288aa18c43f930`  
		Last Modified: Wed, 21 Dec 2016 18:24:25 GMT  
		Size: 238.0 B  
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
