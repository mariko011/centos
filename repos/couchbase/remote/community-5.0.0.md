## `couchbase:community-5.0.0`

```console
$ docker pull couchbase@sha256:3a63e1dce645a3609aa9aef8664f7d03501a1766fc11bb98d9547ee490a78bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:32f515cd5d51d10dfd3a283e13516cbb4db9d61024779456ae01952e4b3566b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216731955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f29456be6b04ae8d2d9d886f154e21dee443fc58275da2a6492824c16a97e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_VERSION=5.0.0
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 18 Nov 2017 00:43:16 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb
# Sat, 18 Nov 2017 00:43:16 GMT
ARG CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49
# Sat, 18 Nov 2017 00:43:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 18 Nov 2017 00:43:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 18 Nov 2017 00:43:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 18 Nov 2017 00:43:34 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 18 Nov 2017 00:43:34 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 18 Nov 2017 00:43:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 18 Nov 2017 00:43:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 18 Nov 2017 00:43:36 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 18 Nov 2017 00:43:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 18 Nov 2017 00:43:36 GMT
CMD ["couchbase-server"]
# Sat, 18 Nov 2017 00:43:36 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 18 Nov 2017 00:43:37 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71f4bfe2af8afe844e8a9ade4c43b9e4daa410bbfa8de0ed7cbd6a5e1a0d459`  
		Last Modified: Sat, 18 Nov 2017 00:46:10 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a401b4d51bc494182573222dbe1fe7cc9954d33e7f518bbaf3e67c0014e8a0`  
		Last Modified: Sat, 18 Nov 2017 00:46:31 GMT  
		Size: 132.3 MB (132331177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e958dfb934092ccaa112520e1bcaa05de7cdb137e691fcbf164d483336c9e7f2`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886d5b94c617b471f1c18fb68021ba0cea9f3776f26f3c2f90a6999fc82b87f`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2cc9b7b358b2835cecd6036545d39030a7da75472c196d1f3c1868a20b5dc3`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddd994672f0aa5f82f6afb776f4251eeb8621ca403f616c5e8f2fd97965d4fa`  
		Last Modified: Sat, 18 Nov 2017 00:46:09 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0347471f55ad36881df6a4a772cfee9e7f4db115e899a41c1b0e7556dda61cbc`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
