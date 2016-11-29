## `ubuntu:precise`

```console
$ docker pull ubuntu@sha256:65e7041a861f38f71859da0c51bd0925f34b66d2ee0dbd882c9f4bb1ae0424a8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:precise` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39132104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c669f0ad611f4395cbdc73a8df48545164774ae1ae3faa5dac0c9dd2d536e58b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:03:49 GMT
ADD file:a3d0097ddbc8a27e05498f1e3fb6351807e7790ae4f6f8b241414852e9bb59b8 in / 
# Tue, 29 Nov 2016 20:03:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:03:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:03:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:03:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:03:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:27bc2519292c00ae75a5bdedf65ba858915d849ee52146f5c200b6da64be6ab7`  
		Last Modified: Tue, 29 Nov 2016 20:05:40 GMT  
		Size: 39.1 MB (39072905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7519d1c0da9d754f72f0b1d3cd6f213bf79ae228421d5718e99de183597d1deb`  
		Last Modified: Tue, 29 Nov 2016 20:05:29 GMT  
		Size: 57.9 KB (57937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7b1958fef8e821277399b98da7444b446a85c5cddfa2f735a30f653dbc03ab`  
		Last Modified: Tue, 29 Nov 2016 20:05:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca73fb38841778a617d87e59f929eac69085013dd6644f389751017223fcdf56`  
		Last Modified: Tue, 29 Nov 2016 20:05:29 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21de44fd704b6e1d4f888026052339ff5954c1d518e22f8ff2046a71f5502fd0`  
		Last Modified: Tue, 29 Nov 2016 20:05:29 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
