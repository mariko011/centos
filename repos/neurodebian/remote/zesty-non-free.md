## `neurodebian:zesty-non-free`

```console
$ docker pull neurodebian@sha256:d3c4ba78adfa0e557cbf60008794039e28d76a27d716e992977eb454fa619c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:zesty-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:94fcb4395f962c958bd4be858c9cfb5d02e1d4da7b771f2564a35ae8d36168bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (42007598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e211f813697dc5d758282d2de5c3655cb3b17609369517aba29302fd87e526c5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:35 GMT
ADD file:7695c82efcabf2b3ad4c608b200c506d9a16d22ebb6a823742a83fc3b5bc1f31 in / 
# Fri, 17 Nov 2017 21:59:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:38 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:39:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:39:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Sat, 18 Nov 2017 00:39:16 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian zesty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel zesty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Sat, 18 Nov 2017 00:39:25 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:0bbeb3f34b714172c2d2a30a26bec5f9f179d3714ae36e192b66cb2c0d8d0594`  
		Last Modified: Fri, 17 Nov 2017 22:02:10 GMT  
		Size: 38.6 MB (38600735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8d5f4c517a89e3d5ad5da69592d7d67fa9fa6fff5e0d2ffb6d73b2c2436fa5`  
		Last Modified: Fri, 17 Nov 2017 22:02:06 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cd377f217253b5f29a3e014c6b5852cc5d5fbd5ffe30c6a5cf48d999e65aee`  
		Last Modified: Fri, 17 Nov 2017 22:02:04 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d05a759781ff464a9b2aa8167a99877ce8803341bff8dfc337840227f9ca4`  
		Last Modified: Fri, 17 Nov 2017 22:02:05 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f358380db9ed7655eeba0f239421be152c9140ee0aaf5d3aaeb92bcd2e065937`  
		Last Modified: Fri, 17 Nov 2017 22:02:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490f1e6359849698d9bc92d3317ce1046818216f53fbec72bccc63a90ca4f1ab`  
		Last Modified: Sat, 18 Nov 2017 00:41:37 GMT  
		Size: 3.4 MB (3400784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44996e769418080b72083f58924077a3279d0f516acf0a62018500404e90b29c`  
		Last Modified: Sat, 18 Nov 2017 00:41:37 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f843ca5b7aed09bbf3b77efa8341c0a267bd4cd3cfeed3bf8d3e7627aefb7e9b`  
		Last Modified: Sat, 18 Nov 2017 00:41:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405e0adebe50cab92a20d35299da690cd8a47fe80b1852dcf20c8e4b7a21f309`  
		Last Modified: Sat, 18 Nov 2017 00:41:56 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
