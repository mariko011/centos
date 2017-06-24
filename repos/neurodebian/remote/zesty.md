## `neurodebian:zesty`

```console
$ docker pull neurodebian@sha256:1da82a5e484d2025c2a3cee1e0bfe7bea1dd9c650edba3def0b9c71919fdb5dd
```

-	Platforms:
	-	linux; amd64

### `neurodebian:zesty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41238066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f28a567d41a4be4bbb34181a102fed565c6ba6d201111b30b8d2beb0a9d5b6c`
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
# Fri, 23 Jun 2017 00:51:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:51:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:51:14 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian zesty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel zesty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
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
	-	`sha256:ecff5ee7824a68e781e0746606db2dc5de7629811c6720a2d62c3952113df360`  
		Last Modified: Sat, 24 Jun 2017 13:44:25 GMT  
		Size: 3.3 MB (3268965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c506f95cb84db944c75093bce06ccedd846f4ef63a0f576a7413d1e0d0e6942e`  
		Last Modified: Sat, 24 Jun 2017 13:44:24 GMT  
		Size: 3.1 KB (3135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac89120bece2463580d7d58fdfcc08c73155057fde720512dd990650d5c4437`  
		Last Modified: Sat, 24 Jun 2017 13:44:25 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
