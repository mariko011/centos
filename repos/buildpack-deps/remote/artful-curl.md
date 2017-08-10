## `buildpack-deps:artful-curl`

```console
$ docker pull buildpack-deps@sha256:19e02755fd25d13fb3e9d62e920223a39aee03cfe78d363f8b3c80f41568c920
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:artful-curl` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (45002962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6878d05d7541cd8f8600ce6947bf6073c917adcf0917c150caf64d4384e1dce9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:07 GMT
ADD file:2a1e5e38d6c5ea2409d79033b3fae8ee040d6cc93e603452995ecbd5e7279857 in / 
# Thu, 10 Aug 2017 20:13:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:10 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 20:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:39:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:fa25c181d49926efafed99906f587bbc8cf45431269fad25a93d18b3989d0105`  
		Last Modified: Thu, 10 Aug 2017 20:14:04 GMT  
		Size: 39.0 MB (38951300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce23f691728aeb0909044b8a135b337d71e622b2416fa40bdf0c875902d9ca`  
		Last Modified: Thu, 10 Aug 2017 20:13:58 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4d7e2c4339834d7e2df7a274270a5df53c2317690cf165759f8ae272b5b504`  
		Last Modified: Thu, 10 Aug 2017 20:13:58 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9af7838ade9b019e3a8c056ebe52dfa2fdf06dfcbde7fa7dc776652f476535`  
		Last Modified: Thu, 10 Aug 2017 20:13:58 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445d97ff05603473b155917c9593b026fe62eba6f62445afca53883b92da85a7`  
		Last Modified: Thu, 10 Aug 2017 20:13:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0066a2ede63543bb66dd1066dd3625044f48c540c4ad4e51b54b10c9010d8bf`  
		Last Modified: Thu, 10 Aug 2017 20:50:23 GMT  
		Size: 6.0 MB (6049446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
