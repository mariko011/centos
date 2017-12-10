## `buildpack-deps:bionic-scm`

```console
$ docker pull buildpack-deps@sha256:a921f848d3249fe06e704af61ab7d5a73ef28b75daa180fe8f5e649e0629c182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:1840c291d082f990ca4d48963db414da79c5c70ef508b35992a8d741937d44f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89812324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5247bb5d8e5f129862c08125f494304904edffdc6db2ae830d5a136fc1258b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 21:58:49 GMT
ADD file:4f66e9d880cdde359f64c9423bebfcb08662b30c4ef8042b019c1270d311b308 in / 
# Fri, 17 Nov 2017 21:58:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:58:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:58:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:58:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:58:52 GMT
CMD ["/bin/bash"]
# Sat, 09 Dec 2017 01:41:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Dec 2017 01:41:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Dec 2017 01:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e1431537f6d312c5ed238e1116b2f63ad47203ad5e03f695391a00f75517efb1`  
		Last Modified: Fri, 17 Nov 2017 22:00:28 GMT  
		Size: 36.0 MB (36017823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e318c3f4b1de94a78950d4a6fc7682515062b41f7d2b0deeb866073060b0da0`  
		Last Modified: Fri, 17 Nov 2017 22:00:23 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77eaecc130c6c13106780b5d18192fd5241c4162e3f7f06e3b0bdc6ed92160d`  
		Last Modified: Fri, 17 Nov 2017 22:00:23 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d315640310c8f2e6d3a6abcd779e58dd5fa228d5fddb4d966efe3cdb9a87c3`  
		Last Modified: Fri, 17 Nov 2017 22:00:23 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02830adeac1de366c6d5e1da708225efb5749ced0799898d2a715c680ee6294f`  
		Last Modified: Fri, 17 Nov 2017 22:00:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0048ac95e0e0cfa55c6fa6022f7faf730575c8915d2ad117459e07885ba21b`  
		Last Modified: Sat, 09 Dec 2017 01:45:04 GMT  
		Size: 6.1 MB (6058588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de00f9b86b7daaa29d8b19a0bd083c6279cd56daa2e5ae72e32986983a7f1293`  
		Last Modified: Sat, 09 Dec 2017 01:45:32 GMT  
		Size: 47.7 MB (47733664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a2ccb3361d0abba537d53cfd45cafdea1e1a9839d4bf0f02e7f999a733084a2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80785340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ebc67973cc6b95429e0db2566177491466e2169ba22f945b97937b6917da28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:18 GMT
ADD file:bcd586ce20c40eb5dc1f34cbdc2604e88966ea683538604a7e65c1fa494b33f4 in / 
# Fri, 17 Nov 2017 22:08:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:22 GMT
CMD ["/bin/bash"]
# Sat, 09 Dec 2017 01:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Dec 2017 01:08:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Dec 2017 01:09:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5c8ac4ce78715b00ba2a37425fc0ab448770d8f5af1ec19a4ee2cc9dc9c8c84`  
		Last Modified: Fri, 17 Nov 2017 22:11:16 GMT  
		Size: 31.9 MB (31940819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c76382cb7292a13e059c2b786f8aa51eaee4113ddb7331be408ea3df3fb20`  
		Last Modified: Fri, 17 Nov 2017 22:11:07 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b689d6fdf4b35646aef0f54505bd063ba21ace4509f40ca2897ca308ef1461`  
		Last Modified: Fri, 17 Nov 2017 22:11:07 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123e3273c208fc7f247854196cdc614c2815d630a3304f5126ba701e8416161b`  
		Last Modified: Fri, 17 Nov 2017 22:11:07 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5771861c30634ae881f8bd31e0def38e619896e9cc84e1e0c35c05a939b927d4`  
		Last Modified: Fri, 17 Nov 2017 22:11:08 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa38424712fe39a305b5c4a07f752000fe9a9e781b8204bb962a7318cbac77a9`  
		Last Modified: Sat, 09 Dec 2017 01:12:38 GMT  
		Size: 5.1 MB (5098547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef9d1e65fb91cec0301dc43ad1334865243dc15e6daf687d6472e85fa58c0aa`  
		Last Modified: Sat, 09 Dec 2017 01:13:04 GMT  
		Size: 43.7 MB (43743700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d3a157946397117058358bc38f9507a9def5d7429a9e3686865f3f0648d3ed76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84369649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd17b73f68f48603f6582c7e5a5585c73082ef9dee5f62ffe344b4c61bd91cf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:57 GMT
ADD file:209a6a2d89604cebe2bfb75535390a9e648e592e04be140ec7915762436355a7 in / 
# Fri, 17 Nov 2017 22:08:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:09:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:09:04 GMT
CMD ["/bin/bash"]
# Sat, 09 Dec 2017 10:32:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Dec 2017 10:32:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Dec 2017 10:34:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1a36b4caec0c8e708c3a13961c8cb3ddf7d590acc6b5855d4578f1e4be7ceef7`  
		Last Modified: Fri, 17 Nov 2017 22:13:30 GMT  
		Size: 33.2 MB (33165593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f905d4df3e4b29857ea936b2d5c07677730539411558a452148fbb93a72ca852`  
		Last Modified: Fri, 17 Nov 2017 22:13:19 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0c5dac716ba80b2cd6cd6b34f98a805dbbc591de45ae242337dd80a4f1299d`  
		Last Modified: Fri, 17 Nov 2017 22:13:20 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed99b836ebb9b60ef13078b7dc8427d3223e8444358dd3f84fff81a62599230`  
		Last Modified: Fri, 17 Nov 2017 22:13:19 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e0865b1be4014d8fbe178df1597fcdf93fe89d1caf324449cef725f1959984`  
		Last Modified: Fri, 17 Nov 2017 22:13:19 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13c31b66aa3957077c5620d4cc70e58c84e4600808fab422ed63f523f9e4b65`  
		Last Modified: Sat, 09 Dec 2017 10:44:46 GMT  
		Size: 5.3 MB (5336426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e176c5de8b2d51189a8ede5908761b6abdf229c7e1dd9b0ab515bb581bf7b99d`  
		Last Modified: Sat, 09 Dec 2017 10:45:26 GMT  
		Size: 45.9 MB (45865393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:810aab9780c02c15bf32c853002bd87087fb82d78816dd1056a11481bc426afb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92418986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd380905a88ddeeb60e0b0da912ec93cf99e59c6ea4b5dd4927c68a0c92b573f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:42:57 GMT
ADD file:d4487873017166222870077f9f99d2bfbae9ed51e46eac7ae757ded340dd987e in / 
# Fri, 17 Nov 2017 22:42:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:42:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:42:59 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:43:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:43:00 GMT
CMD ["/bin/bash"]
# Sun, 10 Dec 2017 00:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 10 Dec 2017 00:09:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 10 Dec 2017 00:12:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f1aae8bfcd7b51d02f3cba891d4b7fe5a536116db99f1d9f11d00d46f445c7b1`  
		Last Modified: Fri, 17 Nov 2017 22:53:19 GMT  
		Size: 36.8 MB (36845693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d263e45b47b6b9008889f49091d7e1267f7c9bbac4b5e924f45ae8abc6adf0aa`  
		Last Modified: Fri, 17 Nov 2017 22:53:09 GMT  
		Size: 835.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655a8ce2df18a26b123c7def52150481253f4edfe7f9a4f0c0fdf2e943131af8`  
		Last Modified: Fri, 17 Nov 2017 22:53:09 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d60b633f2b3d3f2f5e7e97d4c939a583e65a4e44e2245ab2dcb9f30037a4e3`  
		Last Modified: Fri, 17 Nov 2017 22:53:09 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc12d5de26160c087d08eb47dd1c574868c6850443e6862ab30e0d90d887408e`  
		Last Modified: Fri, 17 Nov 2017 22:53:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c47278bb5d0f49cb7976e9ce0841630b484e9ed9cf9bc66202a40f57a17e643`  
		Last Modified: Sun, 10 Dec 2017 00:25:17 GMT  
		Size: 6.1 MB (6115699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0ba43eb13af7babea31eeecf19e4c40bd0123ad7e85108980d85aa289adf69`  
		Last Modified: Sun, 10 Dec 2017 00:30:09 GMT  
		Size: 49.5 MB (49455353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:839ae321169fcb3ec5fd331aa818591b05d4329088b41ae0aa4b3f42bdbb6369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (101029809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2439f127da44e92baaa04c4e1a27d5453fb644ea503ee14deb23ad46acdf9c29`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:30 GMT
ADD file:d0fa195319ec70231bcbd05b83962f5c44dafd951e0835eb585c101d7ff2aba7 in / 
# Fri, 17 Nov 2017 22:08:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:49 GMT
CMD ["/bin/bash"]
# Sat, 09 Dec 2017 16:47:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Dec 2017 16:47:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Dec 2017 16:50:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6aa090c93c761d685415f1941ce73d6dfa3b8243f1a9988c400b608eb012afc6`  
		Last Modified: Fri, 17 Nov 2017 22:11:28 GMT  
		Size: 39.6 MB (39554355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36cfa18ef0509165790a1a5a758dcf8acfa0d189732fea4c04a3e248e0c8d99`  
		Last Modified: Fri, 17 Nov 2017 22:11:18 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407775ef05997b7fcfe26d6f7b82c295a19cec161854cb24c4d5055169a39b73`  
		Last Modified: Fri, 17 Nov 2017 22:11:19 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33db2c7554f2f796fd49a101c1f138c7994fe265cfa02efb9285d12749dd687`  
		Last Modified: Fri, 17 Nov 2017 22:11:18 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5811ecf4ecbebc3416072ee2a01b6d09acb27905f95ddfe4dc946f3d5dbaf5ac`  
		Last Modified: Fri, 17 Nov 2017 22:11:19 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d36499b8b9eec29fb3dd9f9c78d0c3d07e53ed9b6f34bd4d2284319c3ff5d`  
		Last Modified: Sat, 09 Dec 2017 17:03:23 GMT  
		Size: 6.1 MB (6136103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63b467141a9a84acfcb6494218d3fe546f33de0f301803a290e09124ab3844c`  
		Last Modified: Sat, 09 Dec 2017 17:03:50 GMT  
		Size: 55.3 MB (55337092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0ab35e5ab6172c67c450f1ce5d33f6e7924f0c2155dd6832c244d3c61dc11081
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88419269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e3f6471aa0310096bbccfd0f8971356abe4c8815d49e8d031ad35c2fe84da82`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:07:45 GMT
ADD file:4b503918f19e7431ad489daa2533e626e633e5f2eec0c35b3ace9fc08359f790 in / 
# Fri, 17 Nov 2017 22:07:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:07:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:07:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:07:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:07:48 GMT
CMD ["/bin/bash"]
# Sat, 09 Dec 2017 17:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Dec 2017 17:36:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Dec 2017 17:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48351622ff38a67181c37c8d012bc964caacfc6cab19e16ec69ffc13b5be6df4`  
		Last Modified: Fri, 17 Nov 2017 22:09:09 GMT  
		Size: 35.0 MB (35005067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c84538e447e0f17f111715c8469a2fcadbc775f6a1a791528ed426c052123`  
		Last Modified: Fri, 17 Nov 2017 22:09:01 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74633c0961831a1a27164b3e48383fb98b9ac8dad89c2e4dc34d59da7cefbb80`  
		Last Modified: Fri, 17 Nov 2017 22:09:01 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f771c9c379a968fbfc96f4be6e22527d6093d17cf42092a238806cae64a56`  
		Last Modified: Fri, 17 Nov 2017 22:09:01 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ac03d818b49c9bb18da146121b289d12ee76255bcf0af5b82a196c821b9cf4`  
		Last Modified: Fri, 17 Nov 2017 22:09:01 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a22ae4fb0012eadd3eba80e0b059389fa3ceda61de12bc162c205c89c775016`  
		Last Modified: Sat, 09 Dec 2017 17:39:53 GMT  
		Size: 5.7 MB (5744742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8102cb46f36fe1cee03b4a42069ade5543716d89087b4c7fb6108386c2e3354`  
		Last Modified: Sat, 09 Dec 2017 17:40:11 GMT  
		Size: 47.7 MB (47667228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
