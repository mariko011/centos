## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:6793fef6eb975d42cb70c645d1fe688bd1dcb09be54465759a6f5c0c348429fb
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.7 MB (98678490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b917a3116c0714b7f98e806455cf4fe3ac745333f307b94c9bcd1718195748`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:07:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:08:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407122a4c7987ec6046035f06c795cf86a0ab4e2e621bfad6f347a8b2183a22f`  
		Last Modified: Thu, 15 Dec 2016 19:44:37 GMT  
		Size: 7.2 MB (7239208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc6d3486e993c6a7a35eb6d6b45fd65af58d38b02e2a01a6ba87630b69c4508`  
		Last Modified: Thu, 15 Dec 2016 19:45:15 GMT  
		Size: 41.2 MB (41219419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
