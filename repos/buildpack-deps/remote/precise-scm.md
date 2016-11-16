## `buildpack-deps:precise-scm`

```console
$ docker pull buildpack-deps@sha256:56fba08a143510f03899d6ce4a77635ae2ca9a586805beb9a03d77c9535b9827
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75088749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540f13ce3fad307f69b23c6ee4597a5615ee60c5f999614498bf44c4dda60856`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:20 GMT
ADD file:918588bc20de203f9564552c8d27b53f0c5358a4849132fbe8a7cee90009cda5 in / 
# Wed, 16 Nov 2016 20:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 22:56:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 22:57:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6ec4d0dfee224fd6853b7d735d5b8d95501ca9c50ac4c04a06f3fcab170a606`  
		Last Modified: Tue, 08 Nov 2016 12:49:34 GMT  
		Size: 39.1 MB (39071562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16bbaf4c0bda8f4079d59c64b10ec39ed14f8a3478cd129adc0c61d16d2b28d`  
		Last Modified: Wed, 16 Nov 2016 20:59:20 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfd0f7e92b6366c41feb9d70d897bd9cdd36d5cef28bb78a2859c2116dfce29`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82d8e42dc0a99c6b4a477e072955033dd6c9a7a2f0b50dcb9b96d21eb18a04`  
		Last Modified: Wed, 16 Nov 2016 20:59:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af144ef32a67fbcb29a87ffa7e32ce4735c8bd262e734e9f761de2085b842a4b`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caaf0643c0670de3b02219459438025b347895bbad28b4551a6908936360c02f`  
		Last Modified: Wed, 16 Nov 2016 23:08:49 GMT  
		Size: 5.1 MB (5111369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d7a344ff635e7a01c27527f04f31765b6045af4602d80a38b2545387028ffc`  
		Last Modified: Wed, 16 Nov 2016 23:09:20 GMT  
		Size: 30.8 MB (30846622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
