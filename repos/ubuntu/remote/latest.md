## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:f3a61450ae43896c4332bda5e78b453f4a93179045f20c8181043b26b5e79028
```

-	Platforms:
	-	linux; amd64

### `ubuntu:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46795242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b3f317ec734a73deca91b34c2b1e3dd7454650da9c8ef3047d29a873865178`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:56:51 GMT
ADD file:141408db9037263a47322d1d78006be6a93927ac912bf14cd85100aa91da0421 in / 
# Mon, 24 Apr 2017 22:57:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:57:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:57:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:57:10 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:aafe6b5e13de557451e1781fe7276620275625f970015cbd10036ab7d8ae27c0`  
		Last Modified: Thu, 20 Apr 2017 10:34:07 GMT  
		Size: 46.8 MB (46792902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2b43a726608d3835aa027bbe181624789130c212eb191baa481f1d788a0676`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bdd1e546d21240bd4c3e4e29032a38f18102d780a78686508d40fe01c60158`  
		Last Modified: Mon, 24 Apr 2017 23:02:16 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198342c3e05101bb56b0a585dc34e39346ece39ee5d39287cda24b1fb445fed`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56970a44fd409805e3872cac236d29f5eed1a45e189bb765bcd2163c915f384`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
