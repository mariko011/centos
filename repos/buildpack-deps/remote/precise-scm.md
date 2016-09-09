## `buildpack-deps:precise-scm`

```console
$ docker pull buildpack-deps@sha256:425ea27f7ada55c1e93717a5738bdb5f0f50cd664df0156e560df1540cd96f4a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise-scm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75098683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e63874e38c1ad942a377ab27812cd6582487e1f083dcb8480da27a1f40257b62`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:04 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in /
# Fri, 26 Aug 2016 18:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:21 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 18:51:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:51:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdbc48ff694c1f28e349a0df1e8a0680b4ca2349f8a7ffb92054021ba855049`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 57.9 KB (57934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b89518fcb84072fbf348d79632b0218ebc633499af9d28ad8ef22ef64d8664`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24f10461f800446cd4fd61cecb58472338cb47443ab6e3b71e9aea48dc1c667`  
		Last Modified: Fri, 26 Aug 2016 18:52:08 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f76cfd9cb68c9ad04dfa12be2599e74677feab8e7f99061e153516dddd14d58`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bbb9120f73b13c4ef8d488ebeee31545ade15f8a0e89e0457366c75cdc87b8`  
		Last Modified: Fri, 26 Aug 2016 20:01:07 GMT  
		Size: 5.1 MB (5111100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb659e40587819201e3a1b830660d917efff2adfd8447744a8d24736c9703561`  
		Last Modified: Fri, 26 Aug 2016 20:01:25 GMT  
		Size: 30.8 MB (30846511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
