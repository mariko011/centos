## `buildpack-deps:bionic`

```console
$ docker pull buildpack-deps@sha256:07042b7ad56dea3f0a839af686ce2352d88370fa983d49323aa7af0d25dff5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v7

### `buildpack-deps:bionic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:353c9c5f91d2a50e5d506c017c4f1ae6e8e42af3c4c9fb80dc7e21508483684c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220471928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a9167d1376d989d5663d3b7088e67ac43d9b3d0aa5f22947902302214b5258`
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
# Sat, 09 Dec 2017 01:10:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a26d2230560af1e77f46554d266f3d08a8a4a74ba92c7e8a0c6f6a027863adce`  
		Last Modified: Sat, 09 Dec 2017 01:13:55 GMT  
		Size: 139.7 MB (139686588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
