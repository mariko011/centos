## `buildpack-deps:yakkety-curl`

```console
$ docker pull buildpack-deps@sha256:e899e8947437134b54f431d651653c8a38da1c5be80afa1d4b0413f2b119f208
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49667763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e822fca68b41a51c6bf95434ac93c57c827a6dc9e290e1e143f0989c5ede1bf7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:17:26 GMT
ADD file:0ef16a3f41673e08936332e3fc6e0f274347d10b1dd46b5327df0ee18f02e8b3 in / 
# Fri, 02 Jun 2017 16:17:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:17:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:17:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:17:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:17:33 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:62f959364870c00a62465c8fd1e66042521cfd1295a3b9e4b974c68f6571753d`  
		Last Modified: Fri, 02 Jun 2017 16:25:47 GMT  
		Size: 42.6 MB (42623555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f405834a6531db41aa7575e05311f67686fd194eea885e606027f1bd35ed0`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d10a21395fd67fa485eafbf5d01e8432a0b2e17ea882a7144744730ea42d6f3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1614b55dc6cf1538d3ae1cd59beef15056db1e2a92c4e1364835dcbe10fff3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613c15d05cfae809241c607929dcbe2329e8beac970b9991d10eed5987ddbd88`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e2023272231e466105234d5f0592ae1ffd8ba104a64c19c91b07e3be13fafd`  
		Last Modified: Fri, 02 Jun 2017 17:36:50 GMT  
		Size: 7.0 MB (7041860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
