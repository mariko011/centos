## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:1a2754f249e1f28cdeb233c7b49cd5bea01dcbe24090131d984ad945af9e2a32
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98293199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b664a4c8b9349f892eb0154e5b16e0209b8b3da04e43940051b56857aa0b7952`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:04:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:04:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ad3903d5b884ddf48fb01141fdada55625d94c0b31fba7a82e9eb5964e97d`  
		Last Modified: Mon, 19 Sep 2016 17:11:16 GMT  
		Size: 7.3 MB (7282860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629a2b1089bb84b30b0092d31f79e06698d6ef8a92f7462b4f3f304d76158d41`  
		Last Modified: Mon, 19 Sep 2016 17:11:42 GMT  
		Size: 41.2 MB (41213402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
