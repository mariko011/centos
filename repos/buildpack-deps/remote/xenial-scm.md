## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:77fde190b8980dfcf0c6b41d021e8b89d48cd2d8d329a64802e8d5859e4ebc65
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-scm` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98231290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc67f3f3c2ba0cb9387097e288b62e51d98c2431912cf75cc71ae7e926cb2db4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:50:09 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in /
# Fri, 26 Aug 2016 18:50:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:50:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:50:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:50:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:50:27 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 18:59:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 19:00:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82659f8f1b7628b94f8919ece229321a16ec0b7139cf289e010b7c064f603516`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19118ca682dcd394eeed77409fbac93d9fa94c0bcff633344dc0a71ead74a66`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8296858250fed454169c737c0706958c8a4a130e0bfdca3cf869fa767a19b4f1`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e0251a0e2ccc2fedbdf51dd44f851622f504c7ddfad56ce0f1c63e1101cb20`  
		Last Modified: Fri, 26 Aug 2016 18:55:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b43462677fd51823619440fca0e3749fa4dbe069b55495eb66276444fc466`  
		Last Modified: Fri, 26 Aug 2016 20:02:14 GMT  
		Size: 7.3 MB (7283318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29b28b3afeb51e4686c674545209df99695f51b58f432a5c62a02b5c051ae5f`  
		Last Modified: Fri, 26 Aug 2016 20:02:59 GMT  
		Size: 41.2 MB (41213190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
