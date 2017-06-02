## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:d5244a87cbe9f4bc3d8979b2bf1505f2aaa57053a5ecf3f8e724dc596c9c3c97
```

-	Platforms:
	-	linux; amd64

### `ubuntu:rolling` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37733053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d40961099da4da723cfdbcbded2a519b7e0b6c226bf2845b4bd628a2de1510`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:18:19 GMT
ADD file:8a34103fd0d5ba2249a68982a5b014f98a23ac4c0aa5272edc50fd43ed815058 in / 
# Fri, 02 Jun 2017 16:18:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:18:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:18:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:18:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3a60afdc1b87f7442bee5d2f735e0dea80d10f509cbc50b5b7bb6e5db03df044`  
		Last Modified: Fri, 02 Jun 2017 16:27:50 GMT  
		Size: 37.7 MB (37730783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d0385528d58296244ebf6fdf45c8fc710618b95c6fcaed5aa37f5a59a58a67`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d008b46e10bab6283606ce8dc497db29d84123a5abe373273c5ea859969e74`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 440.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866eb2fcfdf00d1d079e44ac1da049d40f43448941dc015308ac62148d2ee6ba`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45f7c925a98e816a67df94e506248441a913c7b5664908a17f5ab6d73b8a186`  
		Last Modified: Fri, 02 Jun 2017 16:27:34 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
