## `buildpack-deps:yakkety-curl`

```console
$ docker pull buildpack-deps@sha256:25d7ce72add22bc5c0a82201b80e0ef8b30fd0814ee4bba1580c6f85b4b1a3a8
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47057601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002854bd2c130adb490955e1a2150c8ecdb23c4d833b6bfa53c37884967d2126`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:31 GMT
ADD file:f9c0b953c5c3d33456690d14c6c1182472ae782b3d3dec1ec95758a481d374bb in / 
# Thu, 13 Oct 2016 21:13:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:35 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:40:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8e21f82d32cfaaedd3f070809d7f9c1ee5cb094c0eec544a85e9ad23bfdc4a07`  
		Last Modified: Thu, 13 Oct 2016 21:16:42 GMT  
		Size: 40.2 MB (40191167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d6ba364cfb6b0cf009db8f719d62b46987757d480ab963d1b517df8516b193`  
		Last Modified: Thu, 13 Oct 2016 21:16:29 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451f851c9d9fdb5762b09b292598feabff5140ae582bceee5bc95d3e991a183a`  
		Last Modified: Thu, 13 Oct 2016 21:16:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e763f0d444770ce8f947683179235c6284615d94e055e4c90f0de406095a61`  
		Last Modified: Thu, 13 Oct 2016 21:16:30 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b112a925308fbb8d40fb35836f424f96d5b505a04308d304765631c2c5018e4e`  
		Last Modified: Thu, 13 Oct 2016 21:16:30 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c6eb0799d1eb2500993769895cfeb876cfa3dc3df018f86350ee6b9d47b5e4`  
		Last Modified: Tue, 08 Nov 2016 18:41:00 GMT  
		Size: 6.9 MB (6864168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
