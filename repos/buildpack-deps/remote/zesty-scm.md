## `buildpack-deps:zesty-scm`

```console
$ docker pull buildpack-deps@sha256:558aaca9bfa16e991885a3180ed6fcb450d26f31529409c4c7354fb201280921
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89498444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d3566520d4e710db7e57d26ed5398f44726d2d552a1f7f6c45994eb0e9ea6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:22:25 GMT
ADD file:94a0566394ac9766d151c52101cff87f96da6cae0b5f41d46f594673fab4da2c in / 
# Tue, 20 Jun 2017 23:22:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:22:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:22:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:23:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:23:15 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:24:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 02:52:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 02:53:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:19cb2bca2aca987341d3e6a6d833b6038b9d659f24a4a546971178f3287f30fb`  
		Last Modified: Tue, 20 Jun 2017 23:35:40 GMT  
		Size: 38.0 MB (37963396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ccedcbf3f87631342d821bf3d910439a81eeae761d3fc6358a09a91b71093`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6449dd44f2655df824a9a7bc27ae50fca28ea03a3348beefdd5e9783f7b9e689`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09719d1aba4ad7e72b61a4bafb7bc1ee1dcc6bab71144e99661fbf7598aa5cd8`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0d7f3ddeb81003a37dd64e93d71cc7067ceade18bcd9c5458bcb154930d47f`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f861a1d7c468fae3f864ff97e39a491e4c2c3241a7a7b74e111eb87a82fbfc0`  
		Last Modified: Wed, 21 Jun 2017 01:24:41 GMT  
		Size: 7.6 MB (7573657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d36812ccffe524249470970d8abbbcc2244913e1228f16b8cded88d622df7d`  
		Last Modified: Fri, 07 Jul 2017 03:36:17 GMT  
		Size: 44.0 MB (43959057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
