## `couchbase:enterprise-4.6.3`

```console
$ docker pull couchbase@sha256:f2fb0e859fc28b17ccf0a3da722b5959b0a40d631a4148a62be615a2f068c6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:4180cac8d618bed3d60dee88d9bd2a39f8a9f4d26ba7dc8d9010f86d3cb20c13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218771687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf312b87dc59d0f7364bf981bcc8036c5063d0d36c26486cc7f32cf369691a0`
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
# Sat, 18 Nov 2017 00:42:44 GMT
ARG CB_VERSION=4.6.3
# Sat, 18 Nov 2017 00:42:44 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 18 Nov 2017 00:42:45 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb
# Sat, 18 Nov 2017 00:42:45 GMT
ARG CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69
# Sat, 18 Nov 2017 00:42:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 18 Nov 2017 00:42:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 18 Nov 2017 00:43:06 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 18 Nov 2017 00:43:06 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 18 Nov 2017 00:43:06 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 18 Nov 2017 00:43:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 18 Nov 2017 00:43:08 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 18 Nov 2017 00:43:08 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 18 Nov 2017 00:43:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 18 Nov 2017 00:43:08 GMT
CMD ["couchbase-server"]
# Sat, 18 Nov 2017 00:43:09 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 18 Nov 2017 00:43:09 GMT
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
	-	`sha256:7177350a52f0a515fe913cfcd56c0e6347397f527f6011abcf8b9a7998dd7607`  
		Last Modified: Sat, 18 Nov 2017 00:45:29 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df67c72132c255ba09ec6075f410e621a8bd2a4c340758b9ca3bb807862961b5`  
		Last Modified: Sat, 18 Nov 2017 00:45:50 GMT  
		Size: 134.4 MB (134370916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65bdde00a7b5eece9ea77d68c224b3b0a9124762e311e83fd922dd1c9254996`  
		Last Modified: Sat, 18 Nov 2017 00:45:27 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc65f6c6576fc0aa2870b12faf752e6dbbd17e41acd1a12a886f059cf26e591`  
		Last Modified: Sat, 18 Nov 2017 00:45:27 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee0fd3357f4814613204d08eb358ae5661bb8c11a3a14dfd32ca23015adfa68`  
		Last Modified: Sat, 18 Nov 2017 00:45:27 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eef130a1b805e36a4790bac3a11fd964feb6e5c6fa1c44850ebc09cbeec38ca`  
		Last Modified: Sat, 18 Nov 2017 00:45:27 GMT  
		Size: 105.4 KB (105400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dc54d5b340837e19f31e375cc70bf817867158188cf1c1b9014df7629d744a`  
		Last Modified: Sat, 18 Nov 2017 00:45:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
