## `buildpack-deps:yakkety-scm`

```console
$ docker pull buildpack-deps@sha256:1bb77d1c424fc707aaafa55803666481cdd43377b63d4e4af31a2fef3664b68e
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89792860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5f1c4ec4cefdcd88a4e4ae4b737270d5db3aa2afbc1634a7689047937f5c3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:49 GMT
ADD file:14806b8752e91a83840748bfe109e72fd6a0bb46d515efaa382e3466fa6eeed7 in / 
# Wed, 16 Nov 2016 20:58:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:58 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 22:59:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 23:00:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:25b6149a69f5a436d60c27d23045078f3e1aaf7c2ac8e6154e6ba798faf6c830`  
		Last Modified: Wed, 16 Nov 2016 21:03:17 GMT  
		Size: 40.5 MB (40531854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34e687942c00a4535e01e5ffea6f1b309f3e40f0c424a107a917bfcd3ba9e4b`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e5856a7b1d7c9ab49aa1dfd8478cb1f41d292ee592130ac4c6ddaefc64bc26`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d15c8fc681d2851c073a9b4c919ad0e3eab4408fe7104debafaf5e63b2d32`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5cee6940ad94eb78b84031edf9bb8b6a1d360b7639ce81c9bb0eac877a352`  
		Last Modified: Wed, 16 Nov 2016 21:02:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f53fc2781821391f988bbb211e469ea53e85ec41ea400f46a3cf47cbdd2ca3`  
		Last Modified: Wed, 16 Nov 2016 23:11:37 GMT  
		Size: 6.9 MB (6864479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac24cf2135a08d61d87c3125399595e3cde7edc12887dc72a74dc6ba2f7b5209`  
		Last Modified: Wed, 16 Nov 2016 23:12:12 GMT  
		Size: 42.4 MB (42394236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
