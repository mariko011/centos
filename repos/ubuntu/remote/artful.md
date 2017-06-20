## `ubuntu:artful`

```console
$ docker pull ubuntu@sha256:1db2680203d6f0b6803bdbc7e978b4a6120d62c0d70137d07c3815ddd38e7a87
```

-	Platforms:
	-	linux; amd64

### `ubuntu:artful` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37194666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cd123799e2cb7f93bb6cde48288f10c7556bfc248f6a6a14e7af4d14b7dc8a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:13:58 GMT
ADD file:ebdeda024c30477d2928d2e6bb92dd39a9fb8276e8864d44372816356ad82158 in / 
# Tue, 20 Jun 2017 23:14:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:14:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:14:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:14:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:14:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8af00e88d4bc788983893e4beb7dd920debaad51ba3a3d479c315c2c1791294e`  
		Last Modified: Tue, 20 Jun 2017 23:24:17 GMT  
		Size: 37.2 MB (37192449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fe2e3fa5a4438d2b37e645440995117d1db0ca7977520d81d541cd69194cb`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 813.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eea1299fe194aa023a6ef3636a94a090c7ce31ad5a75d2b98bad1c5ad1640a`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffaa8c18e8b4b47964eef54cc19fd1120a3b7b809574056f932b1efacb54e1be`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839f90116431fe664c6f33df088eec97c669ea108c699e59e0d721632ba32281`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
