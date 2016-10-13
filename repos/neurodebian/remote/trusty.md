## `neurodebian:trusty`

```console
$ docker pull neurodebian@sha256:91357ae9e095f6ba919e04c03a91dba99c73c23a104d1d8199d2ee8b6ab11ebf
```

-	Platforms:
	-	linux; amd64

### `neurodebian:trusty` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65791210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a87a01ec67b8f6a2f8e149ceb7b3b72084e9b694a4b2db18d5a3ba638fa11d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 22:01:02 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Thu, 13 Oct 2016 22:01:03 GMT
RUN echo 'deb http://neuro.debian.net/debian trusty main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:04 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:05 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel trusty main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:06 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8e2b509dcaad161b30a66ea1273afbaabe04906bfab8d7a886a67f1ca1d725`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd33b9541271e698e6897ad6d8d7f31ff8ea9176288a99d8fea33354fe68d42`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67b3347fe9039c3bbdd35dd486c23592c2a99bcf7f1380304d7b01963eec7f6`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe17865e01d71b8bfb1f07ad750a6e9de9aed88fc8547d8f5db4db96be103c9`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 14.8 KB (14777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
