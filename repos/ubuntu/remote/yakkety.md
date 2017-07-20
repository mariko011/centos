## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:8dc9652808dc091400d7d5983949043a9f9c7132b15c14814275d25f94bca18a
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42788756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3f705d307c7c225398e04d4c4f8512f64eb8a65959a1fb4514dfde18a047e7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Jul 2017 17:15:38 GMT
ADD file:6cd9e0a52cd1520005b0cfac3ca7e19b37e4c6f053561015a554c51619617f6f in / 
# Thu, 20 Jul 2017 17:15:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:15:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:15:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:15:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:15:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dca7be20e546564ad2c985dae3c8b0a259454f5637e98b59a3ca6509432ccd01`  
		Last Modified: Mon, 10 Jul 2017 14:35:54 GMT  
		Size: 42.8 MB (42786408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bca54f5968c2bdb0d8516e6c2ca4d8f181326a06ff6efee8b4f5e1a36826b8`  
		Last Modified: Thu, 20 Jul 2017 17:19:28 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61464f23390e7d30cddfd10a22f27ae6f8f69cc4c1662af2c775f9d657266016`  
		Last Modified: Thu, 20 Jul 2017 17:19:28 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99f0bcd5dc8b557254a1a18c6b78866b9bf460ab1bf2c73cc6aca210408dc67`  
		Last Modified: Thu, 20 Jul 2017 17:19:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120db6f90955814bab93a8ca1f19cbcad473fc22833f52f4d29d066135fd10b6`  
		Last Modified: Thu, 20 Jul 2017 17:19:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
