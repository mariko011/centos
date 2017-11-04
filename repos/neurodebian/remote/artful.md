## `neurodebian:artful`

```console
$ docker pull neurodebian@sha256:69c4d621aa240598497275c7591e233857cab49e8faadb29172d3086aedd276a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:artful` - linux; amd64

```console
$ docker pull neurodebian@sha256:bee3ca6129db916137e3d25c7e2851ed795bf32f3be97e4e1f99b4cac849bb0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41054060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227ecb7ff8978395b2c91baaede7277001589990e62a110d0385d4dcadc9b210`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:44:56 GMT
ADD file:c5fd97d776dc13116460fbfe9516f1a028ba5788ea39ee71d8e9cfe7caed676f in / 
# Sat, 04 Nov 2017 09:44:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:44:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:01 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 20:28:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:28:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Sat, 04 Nov 2017 20:28:30 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:d26cfb4142faf488780cb8080f737aa1e5db91805163d83448842f64084bb724`  
		Last Modified: Thu, 19 Oct 2017 16:50:57 GMT  
		Size: 39.2 MB (39215977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9061f2867f7e61c3f5420eb574ba2fa334667501e4fff59037fff42e236126cf`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f09e6daf78c64326ce6338926259c67a94bda705094f4f5a4de7ffa760d7b`  
		Last Modified: Sat, 04 Nov 2017 09:45:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fae7d54d2d8cfbed3fb28e0d50d4d1c7efc8c74cfe0a932f8de266e9ac19b18`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69eda9a0dde47b44b877d1c561a490c6f581f4185be674d0228d0000c5c9c5`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bc52b07e6286b6d7514cd4e23aa394cf681d30c48496fb9beaafff96cd688c`  
		Last Modified: Sat, 04 Nov 2017 20:32:44 GMT  
		Size: 1.8 MB (1832435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748167c81d66948c0948893152e7261a1f07e1a4d812c5508bf565bc16a00940`  
		Last Modified: Sat, 04 Nov 2017 20:32:43 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bd1faac35cb4af1455eed56c91d79756763ed5a14983e3a06afe5b3f4a3d69`  
		Last Modified: Sat, 04 Nov 2017 20:32:43 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
