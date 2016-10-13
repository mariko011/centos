## `couchbase:community-4.1.0`

```console
$ docker pull couchbase@sha256:6b3b4458f1d7734623122f6d413fc158a8eb8d2941ac471b2d911b164321ae4b
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164371069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a72d7104c781ebd6d1a6f6cd7d21fa91caf16c9c3b6f5bf63fc808c750cffc3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:51:56 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 13 Oct 2016 21:52:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 13 Oct 2016 21:54:21 GMT
ARG CB_VERSION=4.1.0
# Thu, 13 Oct 2016 21:54:21 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 13 Oct 2016 21:54:21 GMT
ARG CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb
# Thu, 13 Oct 2016 21:54:22 GMT
ARG CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea
# Thu, 13 Oct 2016 21:54:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 13 Oct 2016 21:54:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 13 Oct 2016 21:54:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 13 Oct 2016 21:54:42 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 13 Oct 2016 21:54:43 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 13 Oct 2016 21:54:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 13 Oct 2016 21:54:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 13 Oct 2016 21:54:45 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 13 Oct 2016 21:54:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Oct 2016 21:54:45 GMT
CMD ["couchbase-server"]
# Thu, 13 Oct 2016 21:54:46 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 13 Oct 2016 21:54:46 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ddeb60c4f9f5f84cc4f528259c7ad7e11f7284e30e1917d1aa136c4a6f1aa4`  
		Last Modified: Thu, 13 Oct 2016 21:53:12 GMT  
		Size: 11.3 MB (11254535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705a5e0d7ec2b9df96cd7c1d25aec934aac1bfd0c9dd1079096a588d370ae641`  
		Last Modified: Thu, 13 Oct 2016 21:54:57 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a592a9cbb4e5d55cd5708ad25655e33c26d797435dcad053a13cb2ec72da318c`  
		Last Modified: Thu, 13 Oct 2016 21:55:19 GMT  
		Size: 87.2 MB (87238736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453b6d2099db225b32a6a6bc5e7411388496b232a6b3ae0b2b47e64499fe33fa`  
		Last Modified: Thu, 13 Oct 2016 21:54:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ae91d1d5bd013e6802f83bdf8a2edbf0036cabb1832f9e69e90e7545060c94`  
		Last Modified: Thu, 13 Oct 2016 21:54:54 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4867bc08951f86402e5377d6175d3ddbfa6f893c3c4fe5596e8bf70f52cad2b`  
		Last Modified: Thu, 13 Oct 2016 21:54:55 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c736be6694fedf973ecba14f482f3465644abd25ca1a5c250fb311144fd7a`  
		Last Modified: Thu, 13 Oct 2016 21:54:55 GMT  
		Size: 99.1 KB (99100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8706e47587f347ba75444e826f76b2eec1ab9d0f943c4260f67ddef25c7478`  
		Last Modified: Thu, 13 Oct 2016 21:54:55 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
