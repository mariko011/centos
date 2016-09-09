## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:adf86e80f32207cf056884a43c81ea6ac016786804a53e9a1ec4d6ccc4784169
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38661613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4290257892c81c96e2c3cbaf4a965873bdbb3da21cca40549e4a20354976c109`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:50:47 GMT
ADD file:4129088380d8c54cbb9b6f3499246785b46ec2f7a98ff7164ff438f1713984bd in /
# Fri, 26 Aug 2016 18:50:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:50:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:50:59 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:51:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:51:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f583af237fda4b58cc915a396ebda2f5b70ff2eb414fae363d15dc5839adb790`  
		Last Modified: Fri, 26 Aug 2016 18:56:49 GMT  
		Size: 38.7 MB (38659368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3c71f0cd1be4b7325bfbed108eb201096ac0d6e51bfbee5bec6620ddb404d3`  
		Last Modified: Fri, 26 Aug 2016 18:56:35 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6821ef4963983cd8dee14e1c92cc84d7ccd3c8a7b7b7272802bdb88a9a6570a`  
		Last Modified: Fri, 26 Aug 2016 18:56:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505805ea72be433807b287fcdfbc2d5b48b046bde34586bcaac5d961b375c61d`  
		Last Modified: Fri, 26 Aug 2016 18:56:37 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9cafb0d27b5357597cf2fe4ba0e4d08f0009d5cf38953a30298ab2867ecc87`  
		Last Modified: Fri, 26 Aug 2016 18:56:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
