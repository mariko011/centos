## `couchbase:community`

```console
$ docker pull couchbase@sha256:38d39458f0920580fc5806eba25cfd7b976e11c90f12b61112a156b8d9928b78
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205598445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e565f2314c6dacf1343d2697efd4cdb16da3dc2ef63044fb1b86fc2a8b75af59`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:58:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 20 Jan 2017 23:59:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 20 Jan 2017 23:59:09 GMT
ARG CB_VERSION=4.5.0
# Fri, 20 Jan 2017 23:59:09 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 20 Jan 2017 23:59:10 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb
# Fri, 20 Jan 2017 23:59:10 GMT
ARG CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633
# Fri, 20 Jan 2017 23:59:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 20 Jan 2017 23:59:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 20 Jan 2017 23:59:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 20 Jan 2017 23:59:40 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 20 Jan 2017 23:59:41 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 20 Jan 2017 23:59:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 20 Jan 2017 23:59:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 20 Jan 2017 23:59:43 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 20 Jan 2017 23:59:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jan 2017 23:59:44 GMT
CMD ["couchbase-server"]
# Fri, 20 Jan 2017 23:59:45 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 20 Jan 2017 23:59:45 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2d8c867794257c83db8420c62a7bbef18b99d70ddd020dd152496656efa749`  
		Last Modified: Sat, 21 Jan 2017 00:02:23 GMT  
		Size: 11.3 MB (11258062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a0de19f600b98a37d2a7dfee9425f9249d599636b04d64dee78783e2d9c35a`  
		Last Modified: Sat, 21 Jan 2017 00:02:17 GMT  
		Size: 1.9 KB (1856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7dee3217bb673b5731c380d4b26adc94f27c56e81cc16811fc3dc2cc124ab6`  
		Last Modified: Sat, 21 Jan 2017 00:02:51 GMT  
		Size: 128.5 MB (128471746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858e260bc891b5b4592126a4f69ffb0a7a64872fa5df027c54e59dcdfd94a220`  
		Last Modified: Sat, 21 Jan 2017 00:02:15 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4487f9634f6b5699a84f79d477c9b1970b34164858b753cd725e6158e7ae626`  
		Last Modified: Sat, 21 Jan 2017 00:02:16 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999e72e79bfead5c4b2076c4d9456e9a0d4eb10f22355984a32c1dfb31b05864`  
		Last Modified: Sat, 21 Jan 2017 00:02:15 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712ad71eb4c4563d667be86151042ad2d1aff8280f23dda89b790c7c3a42e054`  
		Last Modified: Sat, 21 Jan 2017 00:02:15 GMT  
		Size: 99.1 KB (99100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b23b4d95a98e752a9b910bb7a1a7ccffe5e6d5c635640057dffe321b93f80a`  
		Last Modified: Sat, 21 Jan 2017 00:02:14 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
