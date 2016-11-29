## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:7a52e741673a7c3a1265b69998c0b599f2b2bc478138d6279e1f7472cc2ba23d
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272033457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d4568b6a2d2846731d9e182f6486664661a9e9a273fef6b86fe4310c76d832`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Tue, 29 Nov 2016 22:40:15 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 29 Nov 2016 22:40:49 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 29 Nov 2016 22:43:02 GMT
ARG CB_VERSION=3.1.3
# Tue, 29 Nov 2016 22:43:03 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 29 Nov 2016 22:43:03 GMT
ARG CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb
# Tue, 29 Nov 2016 22:43:04 GMT
ARG CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41
# Tue, 29 Nov 2016 22:43:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 29 Nov 2016 22:43:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 29 Nov 2016 22:43:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 29 Nov 2016 22:43:36 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 29 Nov 2016 22:43:37 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 29 Nov 2016 22:43:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 29 Nov 2016 22:43:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 29 Nov 2016 22:43:40 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 29 Nov 2016 22:43:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Nov 2016 22:43:41 GMT
CMD ["couchbase-server"]
# Tue, 29 Nov 2016 22:43:41 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 29 Nov 2016 22:43:42 GMT
VOLUME [/opt/couchbase/var]
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
	-	`sha256:1de02e174eb30e9f2f5325b83107fb88daae7523f10e5eaa817a59b2b5cf414c`  
		Last Modified: Tue, 29 Nov 2016 22:44:46 GMT  
		Size: 9.5 MB (9471594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776f84ce8bb470aa1a5718d39fe24db8915932a4a8c71180342775850a17c6b5`  
		Last Modified: Tue, 29 Nov 2016 22:47:25 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d57053ca9592515a2c036610f8bcba3eebee9de192dc96a0682f0e4c40d46e`  
		Last Modified: Tue, 29 Nov 2016 22:48:18 GMT  
		Size: 213.2 MB (213151575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169852efc771b9e065ba0239c66471129884380f2c9c4ef6f13582e9e2c55e3b`  
		Last Modified: Tue, 29 Nov 2016 22:47:23 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342c91fb89b7bc39e73385958f7b4a410db81815dba9b93c955db69b1b1a6bf7`  
		Last Modified: Tue, 29 Nov 2016 22:47:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482479bda89364dcac8087b9c03bfc86ef6b0b4c2450ad2e332fc2913550c394`  
		Last Modified: Tue, 29 Nov 2016 22:47:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5469c3e13719fc65043ebbefeaa40cb0d4fb5a0b37ef5a741657358eff432d47`  
		Last Modified: Tue, 29 Nov 2016 22:47:27 GMT  
		Size: 10.3 MB (10275391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559c7367ee2f1aad2935561e7885cc677849adb081871c5b334007b51eb18ca6`  
		Last Modified: Tue, 29 Nov 2016 22:47:22 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
