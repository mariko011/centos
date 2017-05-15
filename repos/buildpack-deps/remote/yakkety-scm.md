## `buildpack-deps:yakkety-scm`

```console
$ docker pull buildpack-deps@sha256:90d00cb1a789864247fe208cdc8f4c40b28f0537ee08f9881c37fc8adfc301f3
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.8 MB (92750096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b27e2cd4c22702859b75fc2157411d3a13201e53ff50b6690735e08643343fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:44:25 GMT
ADD file:9e2eabb7b05f940d68140837f1ece7fc6850820bd4122716910cff0bf68f0aeb in / 
# Mon, 15 May 2017 16:44:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:44:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:44:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:44:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:44:32 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 17:27:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 17:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:869d7e479fb806bc6dd4a699dbabbe1195e8aaaf0d93db34cd95d6ed99f1e72c`  
		Last Modified: Mon, 15 May 2017 16:50:49 GMT  
		Size: 42.6 MB (42594839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde8cc75da46cf424a03c821ce9873ab3a54263c9d5dcfab87e95993650e820`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d18efd03befb8d6d68e2ea3d2008c5bb827a9f322d8b8c4540a05c003d992f`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ed9114795ec37d3e3bb7184f91d295a16cafaef52eb4209e8e49e1519717b0`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ec97b2b19c22d93ec61e470d48209e569f0fb1d56335da1edc08c4b0257e5c`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ae77bda9e62fba086d540a9148d6a214cc693f48b62899d9e91c51f59d531b`  
		Last Modified: Mon, 15 May 2017 17:59:11 GMT  
		Size: 7.0 MB (7041960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e61226e53d6296c00a689d3d8eb1eac4aa26aefc4369bc8888089a66a0948e`  
		Last Modified: Mon, 15 May 2017 18:00:00 GMT  
		Size: 43.1 MB (43110952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
