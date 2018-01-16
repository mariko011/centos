## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:c5cb0b160e1cf5e5e9af73ec29c5a759c085ad6ef4dfa2d980bb6906236c86cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:7d66e8a7c2c569a13aad5b60bdb106c6a2b291089bf1cc6ac073047f2a125b28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215586410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed4feeb312be268bf42c1cc7fe0a4bed19d59908a1c35070d043f45d1f2e1d79`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:39:21 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 16 Jan 2018 04:39:46 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 16 Jan 2018 04:46:19 GMT
ARG CB_VERSION=4.5.1
# Tue, 16 Jan 2018 04:46:20 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 16 Jan 2018 04:46:20 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Tue, 16 Jan 2018 04:46:20 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Tue, 16 Jan 2018 04:46:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 16 Jan 2018 04:46:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 16 Jan 2018 04:46:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 16 Jan 2018 04:46:41 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 16 Jan 2018 04:46:41 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 16 Jan 2018 04:46:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 16 Jan 2018 04:46:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 16 Jan 2018 04:46:43 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 16 Jan 2018 04:46:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Jan 2018 04:46:43 GMT
CMD ["couchbase-server"]
# Tue, 16 Jan 2018 04:46:44 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 16 Jan 2018 04:46:44 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14419756270c5119af144af912eccd82b9aedbe70c7776f76b5b26009c6ed85a`  
		Last Modified: Tue, 16 Jan 2018 04:47:10 GMT  
		Size: 11.4 MB (11390504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081accb69d8c815b42af2af043b03c1fc3e8530c6fe8cb8d64d1018033273c1d`  
		Last Modified: Tue, 16 Jan 2018 05:18:51 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7b33bc0d8a64e4c075d2e9c2c5724c3f1efe55374d0cfda0d522b4fd4fa890`  
		Last Modified: Tue, 16 Jan 2018 05:19:19 GMT  
		Size: 131.1 MB (131076470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5688f4155f2c688c43c81c99c022d8b32351c453f5c1d9c64718f339ea0d3`  
		Last Modified: Tue, 16 Jan 2018 05:18:49 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b27715a473652260fec8677b7c1f70b5c64e14f2792d6dd17f71e35c46bb8e`  
		Last Modified: Tue, 16 Jan 2018 05:18:49 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b38a0cce0e44d43f000c8169fd2e99495f0f1c8bf7d33ec71aa6baaa5cbb79`  
		Last Modified: Tue, 16 Jan 2018 05:18:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36859a604f16ef694e234342cb6eaafacbd0267e594a7ffd5cd036a5fe0b0eff`  
		Last Modified: Tue, 16 Jan 2018 05:18:49 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e2ba8192702db8a2b14477f8a0117338041077425faea73140dd86ff54f32`  
		Last Modified: Tue, 16 Jan 2018 05:18:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
