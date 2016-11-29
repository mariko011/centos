## `buildpack-deps:precise-scm`

```console
$ docker pull buildpack-deps@sha256:d0cc5381147b3776dabee3103ace69f30bd56f5ca8a34a216e1af1be4b0f7764
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75090198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d7eab7cb13d8b77e0a837aa6c61852008144140166d09cdc8dc592f0d2bde6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:03:49 GMT
ADD file:a3d0097ddbc8a27e05498f1e3fb6351807e7790ae4f6f8b241414852e9bb59b8 in / 
# Tue, 29 Nov 2016 20:03:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:03:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:03:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:03:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:03:53 GMT
CMD ["/bin/bash"]
# Tue, 29 Nov 2016 22:10:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 22:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:27bc2519292c00ae75a5bdedf65ba858915d849ee52146f5c200b6da64be6ab7`  
		Last Modified: Tue, 29 Nov 2016 20:05:40 GMT  
		Size: 39.1 MB (39072905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7519d1c0da9d754f72f0b1d3cd6f213bf79ae228421d5718e99de183597d1deb`  
		Last Modified: Tue, 29 Nov 2016 20:05:29 GMT  
		Size: 57.9 KB (57937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7b1958fef8e821277399b98da7444b446a85c5cddfa2f735a30f653dbc03ab`  
		Last Modified: Tue, 29 Nov 2016 20:05:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca73fb38841778a617d87e59f929eac69085013dd6644f389751017223fcdf56`  
		Last Modified: Tue, 29 Nov 2016 20:05:29 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21de44fd704b6e1d4f888026052339ff5954c1d518e22f8ff2046a71f5502fd0`  
		Last Modified: Tue, 29 Nov 2016 20:05:29 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba9e4d407cdc8433c21cc4c505c287d50a812147e88f34f5faaec9b9698205b`  
		Last Modified: Tue, 29 Nov 2016 22:32:05 GMT  
		Size: 5.1 MB (5111566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb190f40d15e8ee7955e1e4b1da756c1bdce236df791c94e6f400634144b4b5`  
		Last Modified: Tue, 29 Nov 2016 22:32:37 GMT  
		Size: 30.8 MB (30846528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
