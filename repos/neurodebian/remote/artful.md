## `neurodebian:artful`

```console
$ docker pull neurodebian@sha256:6195b5079ef1b1a342305549cd98d6998ffd6a80361c764208a6dd20370fc438
```

-	Platforms:
	-	linux; amd64

### `neurodebian:artful` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40472234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4192aa84a003c0fded842d6abca41588a393026c839606b5576e13f7b4ea632d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:14:41 GMT
ADD file:08785f4740adaeb9a1a8b154a00cdea90a9a5fb0885d46245453c22b37f12088 in / 
# Fri, 02 Jun 2017 16:14:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:14:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:14:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:14:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:14:48 GMT
CMD ["/bin/bash"]
# Wed, 14 Jun 2017 18:38:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 18:39:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Jun 2017 18:40:10 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:0ad24ecd3a1bbd7d16f82037481f12f2d5b403de8de48901db112bc4e7300459`  
		Last Modified: Fri, 02 Jun 2017 16:19:03 GMT  
		Size: 37.1 MB (37131508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cead5d213df0f47c988a611205f91ec03602f17f6a750311396a640b1f147d92`  
		Last Modified: Fri, 02 Jun 2017 16:18:52 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31ef5fc21cac5518e6acd97ed12a4b7aed79fe96231d77cc72c13daf49d22ba`  
		Last Modified: Fri, 02 Jun 2017 16:18:52 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4e5313d29a6b3d010ba900f40583ea846f609815d938060d4df893db380c04`  
		Last Modified: Fri, 02 Jun 2017 16:18:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f6ff956f5e58555aa18ae58863fa9f2ff56c3f4022b1ccdc72da7fa070a08e`  
		Last Modified: Fri, 02 Jun 2017 16:18:52 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f9c033508600f6187c59183e400e2a438106e337e14a62026299cbb538f478`  
		Last Modified: Wed, 14 Jun 2017 19:19:09 GMT  
		Size: 3.3 MB (3335133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7d277a482b926fd07a2ee5f8b4fc2336bca12ef41bd8d4f274a7ffb586f8b6`  
		Last Modified: Wed, 14 Jun 2017 19:19:08 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764d09cc512cf437a696da13ac2f07ef8bf41d89150389a09460fc05c1f94dab`  
		Last Modified: Wed, 14 Jun 2017 19:19:07 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
