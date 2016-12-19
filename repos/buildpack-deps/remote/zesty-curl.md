## `buildpack-deps:zesty-curl`

```console
$ docker pull buildpack-deps@sha256:b556acd3bed6e12d4a539927b32d6587e765fc88fc5f684f19d8b2daf9d95286
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47524210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2eb0ff000b24146cecaf07509db2007dc4c877331f33340eea6a9bd3f4c4b33`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:46:02 GMT
ADD file:a4279f4ee2861af7518186263feb2a8333c7cf8303c475d96303dd04222e4519 in / 
# Thu, 15 Dec 2016 17:46:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:46:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:46:06 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:46:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:46:07 GMT
CMD ["/bin/bash"]
# Mon, 19 Dec 2016 19:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ce4f579c9e5c1e26e77eaf66ada2de95bdf7f8e24a8f77657d75b8c53deb8f1c`  
		Last Modified: Thu, 15 Dec 2016 17:51:52 GMT  
		Size: 40.6 MB (40566166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7a643dd167249d2d5e0f54d4913fa7fd80321638f2d9028f15ba7826ac0c2e`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0be28b4f064551cd2d6bf4b9be812f68ca47319f121d44a273a33e6ba4f9489`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6d28e03d70f31d7c6926715daa4818186990a0340f4604bedcab5fd0d8a3f`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39c77ca25aeb5e9a9dae365abd1bf6fafddc9e8d59e321d54b9a3341dc35a68`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf020a5bd70ea44befd62ec0bd45e927839b67d9e1179c3cf2b4b2fb5ac741`  
		Last Modified: Mon, 19 Dec 2016 20:50:43 GMT  
		Size: 7.0 MB (6955810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
