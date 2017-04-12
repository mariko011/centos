## `buildpack-deps:yakkety-scm`

```console
$ docker pull buildpack-deps@sha256:5edbdd87f2abf0b6e4f886de2f9c74dc4ed646df4ef1a343d9918b32fe6d56bf
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90564338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf67beba0ad329f9969af723af79ce879f5ec1660f6bcf6e94bc56c9470b197d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:07:06 GMT
ADD file:4afa503afe7779330611bc54340d54372943bc9fd939c00e0a6edb04046298f8 in / 
# Wed, 12 Apr 2017 21:07:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:07:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:07:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:07:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:07:13 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:53:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:30179d74c3a2da80004c9ff946c16dd00c186fb3b0ce8e29860730e37a708395`  
		Last Modified: Mon, 27 Mar 2017 16:24:09 GMT  
		Size: 41.3 MB (41298281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eedd999b59eec479b3b34cb8f46979d2aa318b500f31d801c186247af5cb4f`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 827.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155740d76144b4c90ec30a18e4653d5d73eb3316154bb2b648ef4f3adea65ace`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1b1466d64c1a346efd40bd6b9860ec94da89af209573de350d7eb39a1a5581`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01af7eecc784109c1f0e92c092f273a32fea14b9897bf8a54e2311f750432a45`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840365c0e29f7e2b5e15d33037f0626359179b794225344076a79ab8eba14e92`  
		Last Modified: Wed, 12 Apr 2017 22:15:16 GMT  
		Size: 6.9 MB (6867116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0943babc68731b57b32058245860fb6d0440968904b76cff94f48b9a6c60cb44`  
		Last Modified: Wed, 12 Apr 2017 22:16:48 GMT  
		Size: 42.4 MB (42396569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
