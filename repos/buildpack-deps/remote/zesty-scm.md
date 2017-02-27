## `buildpack-deps:zesty-scm`

```console
$ docker pull buildpack-deps@sha256:30d62bb23f3e840fdb037331a2b46e17ccd4be6bb550591bfc447050eb3a67b7
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90481272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141bc6d6852d544dd5a38cdab96ab19fecc46ffa39d9aa0570beaba209c5ef5e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:43:20 GMT
ADD file:04beb1a85cc00543677619a5f64d30523b8f61cee7074a2d2f7a9466f02b51ca in / 
# Mon, 27 Feb 2017 19:43:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:43:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:43:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:43:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:43:50 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:34:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:dc8785c9f730e32bf9173713b3f4f5458b7aafbad3780b47c45d20a08311783b`  
		Last Modified: Mon, 27 Feb 2017 19:52:54 GMT  
		Size: 40.7 MB (40691303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5225b7cdc70e7748e2e8527a20dc85633fe2293f3b26d8e31172752f068737`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f946cd1dcc8394b06989bd54fa83ee6052d6f1ed532472e1d47c1ac2e9e77f6`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69688ab1f2e9dc694d7e4d369b20a307dbb91226085030a1694ac017321cfc0a`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559068fd143f67492000be277e11604af320389b8dc03f4f7feef7112c462936`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd52132588daa3be78973af726b832327f39c062f43c1d3c6aca2452fe6a72a4`  
		Last Modified: Mon, 27 Feb 2017 22:12:05 GMT  
		Size: 7.0 MB (6966844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d44b978657f496816577f01c5c94275bec8bdfe98a97427cffe4694520f08c`  
		Last Modified: Mon, 27 Feb 2017 22:12:42 GMT  
		Size: 42.8 MB (42820889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
