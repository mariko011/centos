<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:latest`](#couchbaselatest)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:4.6.2`](#couchbase462)
-	[`couchbase:enterprise-4.6.2`](#couchbaseenterprise-462)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:3.1.6`](#couchbase316)
-	[`couchbase:enterprise-3.1.6`](#couchbaseenterprise-316)
-	[`couchbase:community-3.1.3`](#couchbasecommunity-313)

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:9fde9cb9b9aea8c46cf07d4306a8bfca3c47d31bb39bd58c54019167e134f0ce
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215104763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a18f0c60c742212f2f0787438181937e2bb712ffa04c49b9b86d5b20aa01e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:38:37 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 02 Jun 2017 17:39:04 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Jun 2017 17:39:05 GMT
ARG CB_VERSION=4.6.2
# Fri, 02 Jun 2017 17:39:06 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 02 Jun 2017 17:39:29 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb
# Fri, 02 Jun 2017 17:39:30 GMT
ARG CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6
# Fri, 02 Jun 2017 17:39:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Jun 2017 17:39:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 02 Jun 2017 17:39:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 02 Jun 2017 17:40:08 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 02 Jun 2017 17:40:09 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 02 Jun 2017 17:40:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 02 Jun 2017 17:40:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 02 Jun 2017 17:40:13 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 02 Jun 2017 17:40:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 17:40:15 GMT
CMD ["couchbase-server"]
# Fri, 02 Jun 2017 17:40:15 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 02 Jun 2017 17:40:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e13c0ded6f3a0dd5b1d7145aa41c36e661af422f9068f0799cb4999ba647a7a`  
		Last Modified: Fri, 02 Jun 2017 17:42:10 GMT  
		Size: 11.4 MB (11443234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97634a6b051806f81831731e2c1b038f4c4f25a5188da51b54005ec3bdb9abdd`  
		Last Modified: Fri, 02 Jun 2017 17:42:07 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97c458aaa91747d4e6bf59501ab1ddcf9f10f4e98498306a92e669787ef3b3d`  
		Last Modified: Fri, 02 Jun 2017 17:42:29 GMT  
		Size: 136.4 MB (136369181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5676670eebe327a1836e8cc696f4e37781073a325cff7395b959816df319ff3`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1a26dd523e1e2e5e4b127078644691bf4e317c586cdb9fb2c49c8589de3337`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfcdb45d72c22de2bb8cb800566be25f6ecca0a072ceb768d01be3fd48d5515`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248184bb3b46093f635a44a6a662c0a020f0ededc41757ae0670a4df5a5fec14`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 105.4 KB (105395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03102e57c017331e649caea191989ba92429af30bdb18cb962eb2d82dc03d8af`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:9fde9cb9b9aea8c46cf07d4306a8bfca3c47d31bb39bd58c54019167e134f0ce
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215104763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a18f0c60c742212f2f0787438181937e2bb712ffa04c49b9b86d5b20aa01e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:38:37 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 02 Jun 2017 17:39:04 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Jun 2017 17:39:05 GMT
ARG CB_VERSION=4.6.2
# Fri, 02 Jun 2017 17:39:06 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 02 Jun 2017 17:39:29 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb
# Fri, 02 Jun 2017 17:39:30 GMT
ARG CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6
# Fri, 02 Jun 2017 17:39:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Jun 2017 17:39:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 02 Jun 2017 17:39:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 02 Jun 2017 17:40:08 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 02 Jun 2017 17:40:09 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 02 Jun 2017 17:40:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 02 Jun 2017 17:40:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 02 Jun 2017 17:40:13 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 02 Jun 2017 17:40:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 17:40:15 GMT
CMD ["couchbase-server"]
# Fri, 02 Jun 2017 17:40:15 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 02 Jun 2017 17:40:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e13c0ded6f3a0dd5b1d7145aa41c36e661af422f9068f0799cb4999ba647a7a`  
		Last Modified: Fri, 02 Jun 2017 17:42:10 GMT  
		Size: 11.4 MB (11443234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97634a6b051806f81831731e2c1b038f4c4f25a5188da51b54005ec3bdb9abdd`  
		Last Modified: Fri, 02 Jun 2017 17:42:07 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97c458aaa91747d4e6bf59501ab1ddcf9f10f4e98498306a92e669787ef3b3d`  
		Last Modified: Fri, 02 Jun 2017 17:42:29 GMT  
		Size: 136.4 MB (136369181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5676670eebe327a1836e8cc696f4e37781073a325cff7395b959816df319ff3`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1a26dd523e1e2e5e4b127078644691bf4e317c586cdb9fb2c49c8589de3337`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfcdb45d72c22de2bb8cb800566be25f6ecca0a072ceb768d01be3fd48d5515`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248184bb3b46093f635a44a6a662c0a020f0ededc41757ae0670a4df5a5fec14`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 105.4 KB (105395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03102e57c017331e649caea191989ba92429af30bdb18cb962eb2d82dc03d8af`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:4.6.2`

```console
$ docker pull couchbase@sha256:9fde9cb9b9aea8c46cf07d4306a8bfca3c47d31bb39bd58c54019167e134f0ce
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.6.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215104763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a18f0c60c742212f2f0787438181937e2bb712ffa04c49b9b86d5b20aa01e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:38:37 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 02 Jun 2017 17:39:04 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Jun 2017 17:39:05 GMT
ARG CB_VERSION=4.6.2
# Fri, 02 Jun 2017 17:39:06 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 02 Jun 2017 17:39:29 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb
# Fri, 02 Jun 2017 17:39:30 GMT
ARG CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6
# Fri, 02 Jun 2017 17:39:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Jun 2017 17:39:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 02 Jun 2017 17:39:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 02 Jun 2017 17:40:08 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 02 Jun 2017 17:40:09 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 02 Jun 2017 17:40:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 02 Jun 2017 17:40:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 02 Jun 2017 17:40:13 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 02 Jun 2017 17:40:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 17:40:15 GMT
CMD ["couchbase-server"]
# Fri, 02 Jun 2017 17:40:15 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 02 Jun 2017 17:40:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e13c0ded6f3a0dd5b1d7145aa41c36e661af422f9068f0799cb4999ba647a7a`  
		Last Modified: Fri, 02 Jun 2017 17:42:10 GMT  
		Size: 11.4 MB (11443234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97634a6b051806f81831731e2c1b038f4c4f25a5188da51b54005ec3bdb9abdd`  
		Last Modified: Fri, 02 Jun 2017 17:42:07 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97c458aaa91747d4e6bf59501ab1ddcf9f10f4e98498306a92e669787ef3b3d`  
		Last Modified: Fri, 02 Jun 2017 17:42:29 GMT  
		Size: 136.4 MB (136369181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5676670eebe327a1836e8cc696f4e37781073a325cff7395b959816df319ff3`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1a26dd523e1e2e5e4b127078644691bf4e317c586cdb9fb2c49c8589de3337`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfcdb45d72c22de2bb8cb800566be25f6ecca0a072ceb768d01be3fd48d5515`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248184bb3b46093f635a44a6a662c0a020f0ededc41757ae0670a4df5a5fec14`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 105.4 KB (105395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03102e57c017331e649caea191989ba92429af30bdb18cb962eb2d82dc03d8af`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.2`

```console
$ docker pull couchbase@sha256:9fde9cb9b9aea8c46cf07d4306a8bfca3c47d31bb39bd58c54019167e134f0ce
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215104763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a18f0c60c742212f2f0787438181937e2bb712ffa04c49b9b86d5b20aa01e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:38:37 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 02 Jun 2017 17:39:04 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Jun 2017 17:39:05 GMT
ARG CB_VERSION=4.6.2
# Fri, 02 Jun 2017 17:39:06 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 02 Jun 2017 17:39:29 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb
# Fri, 02 Jun 2017 17:39:30 GMT
ARG CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6
# Fri, 02 Jun 2017 17:39:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Jun 2017 17:39:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 02 Jun 2017 17:39:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 02 Jun 2017 17:40:08 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 02 Jun 2017 17:40:09 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 02 Jun 2017 17:40:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 02 Jun 2017 17:40:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 02 Jun 2017 17:40:13 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 02 Jun 2017 17:40:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 17:40:15 GMT
CMD ["couchbase-server"]
# Fri, 02 Jun 2017 17:40:15 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 02 Jun 2017 17:40:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e13c0ded6f3a0dd5b1d7145aa41c36e661af422f9068f0799cb4999ba647a7a`  
		Last Modified: Fri, 02 Jun 2017 17:42:10 GMT  
		Size: 11.4 MB (11443234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97634a6b051806f81831731e2c1b038f4c4f25a5188da51b54005ec3bdb9abdd`  
		Last Modified: Fri, 02 Jun 2017 17:42:07 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97c458aaa91747d4e6bf59501ab1ddcf9f10f4e98498306a92e669787ef3b3d`  
		Last Modified: Fri, 02 Jun 2017 17:42:29 GMT  
		Size: 136.4 MB (136369181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5676670eebe327a1836e8cc696f4e37781073a325cff7395b959816df319ff3`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1a26dd523e1e2e5e4b127078644691bf4e317c586cdb9fb2c49c8589de3337`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfcdb45d72c22de2bb8cb800566be25f6ecca0a072ceb768d01be3fd48d5515`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248184bb3b46093f635a44a6a662c0a020f0ededc41757ae0670a4df5a5fec14`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 105.4 KB (105395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03102e57c017331e649caea191989ba92429af30bdb18cb962eb2d82dc03d8af`  
		Last Modified: Fri, 02 Jun 2017 17:42:04 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:6819421b061d0d241cc99fd5deb0e0c24b51943fbf39b959fc021d9d6c7637e1
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209804766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6005f09615f88755ca43be2cb63a838eb0d97fd1c4d43d846f59e97b727271b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:38:37 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 02 Jun 2017 17:39:04 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Jun 2017 17:41:00 GMT
ARG CB_VERSION=4.5.1
# Fri, 02 Jun 2017 17:41:01 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 02 Jun 2017 17:41:02 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Fri, 02 Jun 2017 17:41:03 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Fri, 02 Jun 2017 17:41:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Jun 2017 17:41:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 02 Jun 2017 17:41:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 02 Jun 2017 17:41:29 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 02 Jun 2017 17:41:30 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 02 Jun 2017 17:41:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 02 Jun 2017 17:41:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 02 Jun 2017 17:41:35 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 02 Jun 2017 17:41:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 17:41:36 GMT
CMD ["couchbase-server"]
# Fri, 02 Jun 2017 17:41:37 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 02 Jun 2017 17:41:38 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e13c0ded6f3a0dd5b1d7145aa41c36e661af422f9068f0799cb4999ba647a7a`  
		Last Modified: Fri, 02 Jun 2017 17:42:10 GMT  
		Size: 11.4 MB (11443234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09eccf259aaeedd5d8f619f32dc93f5bb7ccdfccd9037c25c7f2afe9c5bd3557`  
		Last Modified: Fri, 02 Jun 2017 17:44:14 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3a441fd152a0f433972e6d34fa9c6dc0218563470a38e13b2b18359ff86233`  
		Last Modified: Fri, 02 Jun 2017 17:44:29 GMT  
		Size: 131.1 MB (131069190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfa0eb58dc742a7b54a847236bc83de57c5289eda51e31a5bb172fe83a6edaa`  
		Last Modified: Fri, 02 Jun 2017 17:44:10 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea92a32b675ad3b6cd75b10fcf4a3770d2f891030eb58d81e355f855311e658a`  
		Last Modified: Fri, 02 Jun 2017 17:44:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aff814d978ebd7505bb977150e3f9a5c197fe414b08551553feccc5910fa6b7`  
		Last Modified: Fri, 02 Jun 2017 17:44:10 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a409de6bdaa28002379b81e5899e0bee6215286ecde4d2b4dbec67715dedf4`  
		Last Modified: Fri, 02 Jun 2017 17:44:10 GMT  
		Size: 105.4 KB (105394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee75f907588f846073fb7e28fa1d5d07409f6c7edcf0f10a27b575383b34de6c`  
		Last Modified: Fri, 02 Jun 2017 17:44:10 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:6819421b061d0d241cc99fd5deb0e0c24b51943fbf39b959fc021d9d6c7637e1
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209804766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6005f09615f88755ca43be2cb63a838eb0d97fd1c4d43d846f59e97b727271b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:38:37 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 02 Jun 2017 17:39:04 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Jun 2017 17:41:00 GMT
ARG CB_VERSION=4.5.1
# Fri, 02 Jun 2017 17:41:01 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 02 Jun 2017 17:41:02 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Fri, 02 Jun 2017 17:41:03 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Fri, 02 Jun 2017 17:41:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Jun 2017 17:41:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 02 Jun 2017 17:41:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 02 Jun 2017 17:41:29 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 02 Jun 2017 17:41:30 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 02 Jun 2017 17:41:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 02 Jun 2017 17:41:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 02 Jun 2017 17:41:35 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 02 Jun 2017 17:41:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Jun 2017 17:41:36 GMT
CMD ["couchbase-server"]
# Fri, 02 Jun 2017 17:41:37 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 02 Jun 2017 17:41:38 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e13c0ded6f3a0dd5b1d7145aa41c36e661af422f9068f0799cb4999ba647a7a`  
		Last Modified: Fri, 02 Jun 2017 17:42:10 GMT  
		Size: 11.4 MB (11443234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09eccf259aaeedd5d8f619f32dc93f5bb7ccdfccd9037c25c7f2afe9c5bd3557`  
		Last Modified: Fri, 02 Jun 2017 17:44:14 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3a441fd152a0f433972e6d34fa9c6dc0218563470a38e13b2b18359ff86233`  
		Last Modified: Fri, 02 Jun 2017 17:44:29 GMT  
		Size: 131.1 MB (131069190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfa0eb58dc742a7b54a847236bc83de57c5289eda51e31a5bb172fe83a6edaa`  
		Last Modified: Fri, 02 Jun 2017 17:44:10 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea92a32b675ad3b6cd75b10fcf4a3770d2f891030eb58d81e355f855311e658a`  
		Last Modified: Fri, 02 Jun 2017 17:44:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aff814d978ebd7505bb977150e3f9a5c197fe414b08551553feccc5910fa6b7`  
		Last Modified: Fri, 02 Jun 2017 17:44:10 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a409de6bdaa28002379b81e5899e0bee6215286ecde4d2b4dbec67715dedf4`  
		Last Modified: Fri, 02 Jun 2017 17:44:10 GMT  
		Size: 105.4 KB (105394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee75f907588f846073fb7e28fa1d5d07409f6c7edcf0f10a27b575383b34de6c`  
		Last Modified: Fri, 02 Jun 2017 17:44:10 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:3.1.6`

```console
$ docker pull couchbase@sha256:338e4cbdf523d82346c169f98b8a0ed3876cc7cc81d8c5b905f08f0e07d62ed9
```

-	Platforms:
	-	linux; amd64

### `couchbase:3.1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276902127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5173156dc5f0322ef0c537200f4934f552d074029bce67da802e8fad5c0ad601`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:24 GMT
ADD file:6f12126281dd0028de93ca678c7a77561c8f4f7625315097fbd03a80f1d6020a in / 
# Wed, 12 Apr 2017 21:05:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:05:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:05:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:05:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:05:30 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 22:15:14 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 12 Apr 2017 22:15:43 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 12 Apr 2017 22:15:44 GMT
ARG CB_VERSION=3.1.6
# Wed, 12 Apr 2017 22:15:44 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 12 Apr 2017 22:15:45 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Wed, 12 Apr 2017 22:15:46 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Wed, 12 Apr 2017 22:15:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 12 Apr 2017 22:15:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 12 Apr 2017 22:16:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 12 Apr 2017 22:16:32 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 12 Apr 2017 22:16:33 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 12 Apr 2017 22:16:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 12 Apr 2017 22:16:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 12 Apr 2017 22:16:50 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 12 Apr 2017 22:16:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 22:16:52 GMT
CMD ["couchbase-server"]
# Wed, 12 Apr 2017 22:16:53 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 12 Apr 2017 22:17:12 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d8868e50ac4c7104d2200d42f432b661b2da8c1e417ccfae217e6a1e04bb9295`  
		Last Modified: Mon, 03 Apr 2017 14:22:02 GMT  
		Size: 39.1 MB (39096921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83251ac64627fc331584f6c498b3aba5badc01574e2c70b2499af3af16630eed`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 57.9 KB (57938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589bba2f1b36ae56f0152c246e2541c5aa604b058febfcf2be32e9a304fec610`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ecaceda3964b735cdd2af613d6bb136a52c1da0838b2ff4b4dab4212bcb1c`  
		Last Modified: Wed, 12 Apr 2017 21:08:09 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93b41cfc6bf0d2522b7cf61588de4cd045065b36c52bd3aec2ba0622b2b22b`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4feb9c7234f0031242868ddd57904b27f5b19ca8f30ef9ea7985146219fdaa`  
		Last Modified: Tue, 25 Apr 2017 16:58:09 GMT  
		Size: 9.6 MB (9578937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab1598a074bed37a75445ac89b9040d777565161c4b81d6717003558cb1a1e`  
		Last Modified: Tue, 25 Apr 2017 16:58:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419aad044935734e16ddd5bfb0639d966093502b98559ed106f0ff032132db09`  
		Last Modified: Tue, 25 Apr 2017 16:58:42 GMT  
		Size: 217.7 MB (217696375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4776f103cafa89e168a9781175c8fc580283cee6ebed7b9aca0192a38ebd2c`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3f4ecdcfc374b2f0781514d86e7df2550ed4154d267e46ed1fab48cc93b443`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d71c3c39fae91e9a4c6d071a7722769c4d14da0a8834fff32d2137668988d06`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd199b44e151705156dd25968f916fc5adab07e0fda528704c855c1012b0a2ec`  
		Last Modified: Tue, 25 Apr 2017 16:58:05 GMT  
		Size: 10.5 MB (10467870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf342791d4b9b332c4517b2a68aca8aa4d2ada82aaba05cdfe3369b32d4f311`  
		Last Modified: Tue, 25 Apr 2017 16:58:03 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-3.1.6`

```console
$ docker pull couchbase@sha256:338e4cbdf523d82346c169f98b8a0ed3876cc7cc81d8c5b905f08f0e07d62ed9
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-3.1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276902127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5173156dc5f0322ef0c537200f4934f552d074029bce67da802e8fad5c0ad601`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:24 GMT
ADD file:6f12126281dd0028de93ca678c7a77561c8f4f7625315097fbd03a80f1d6020a in / 
# Wed, 12 Apr 2017 21:05:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:05:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:05:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:05:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:05:30 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 22:15:14 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 12 Apr 2017 22:15:43 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 12 Apr 2017 22:15:44 GMT
ARG CB_VERSION=3.1.6
# Wed, 12 Apr 2017 22:15:44 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 12 Apr 2017 22:15:45 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Wed, 12 Apr 2017 22:15:46 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Wed, 12 Apr 2017 22:15:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 12 Apr 2017 22:15:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 12 Apr 2017 22:16:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 12 Apr 2017 22:16:32 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 12 Apr 2017 22:16:33 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 12 Apr 2017 22:16:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 12 Apr 2017 22:16:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 12 Apr 2017 22:16:50 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 12 Apr 2017 22:16:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 22:16:52 GMT
CMD ["couchbase-server"]
# Wed, 12 Apr 2017 22:16:53 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 12 Apr 2017 22:17:12 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d8868e50ac4c7104d2200d42f432b661b2da8c1e417ccfae217e6a1e04bb9295`  
		Last Modified: Mon, 03 Apr 2017 14:22:02 GMT  
		Size: 39.1 MB (39096921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83251ac64627fc331584f6c498b3aba5badc01574e2c70b2499af3af16630eed`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 57.9 KB (57938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589bba2f1b36ae56f0152c246e2541c5aa604b058febfcf2be32e9a304fec610`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ecaceda3964b735cdd2af613d6bb136a52c1da0838b2ff4b4dab4212bcb1c`  
		Last Modified: Wed, 12 Apr 2017 21:08:09 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93b41cfc6bf0d2522b7cf61588de4cd045065b36c52bd3aec2ba0622b2b22b`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4feb9c7234f0031242868ddd57904b27f5b19ca8f30ef9ea7985146219fdaa`  
		Last Modified: Tue, 25 Apr 2017 16:58:09 GMT  
		Size: 9.6 MB (9578937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab1598a074bed37a75445ac89b9040d777565161c4b81d6717003558cb1a1e`  
		Last Modified: Tue, 25 Apr 2017 16:58:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419aad044935734e16ddd5bfb0639d966093502b98559ed106f0ff032132db09`  
		Last Modified: Tue, 25 Apr 2017 16:58:42 GMT  
		Size: 217.7 MB (217696375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4776f103cafa89e168a9781175c8fc580283cee6ebed7b9aca0192a38ebd2c`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3f4ecdcfc374b2f0781514d86e7df2550ed4154d267e46ed1fab48cc93b443`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d71c3c39fae91e9a4c6d071a7722769c4d14da0a8834fff32d2137668988d06`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd199b44e151705156dd25968f916fc5adab07e0fda528704c855c1012b0a2ec`  
		Last Modified: Tue, 25 Apr 2017 16:58:05 GMT  
		Size: 10.5 MB (10467870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf342791d4b9b332c4517b2a68aca8aa4d2ada82aaba05cdfe3369b32d4f311`  
		Last Modified: Tue, 25 Apr 2017 16:58:03 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:3d7ea5958afb4ae0c136794d018260fabfad651cbefb6bcb05709cb7ea8e7250
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276985894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d767b62b8a14fc808a059d558e99ba0b63aca3281acf7225053abb6b0b273cb0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:24 GMT
ADD file:6f12126281dd0028de93ca678c7a77561c8f4f7625315097fbd03a80f1d6020a in / 
# Wed, 12 Apr 2017 21:05:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:05:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:05:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:05:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:05:30 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 22:15:14 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 12 Apr 2017 22:15:43 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 12 Apr 2017 22:19:47 GMT
ARG CB_VERSION=3.1.3
# Wed, 12 Apr 2017 22:19:50 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 12 Apr 2017 22:19:50 GMT
ARG CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb
# Wed, 12 Apr 2017 22:19:51 GMT
ARG CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41
# Wed, 12 Apr 2017 22:19:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 12 Apr 2017 22:19:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 12 Apr 2017 22:20:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 12 Apr 2017 22:21:00 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 12 Apr 2017 22:21:00 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 12 Apr 2017 22:21:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 12 Apr 2017 22:21:03 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 12 Apr 2017 22:21:04 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 12 Apr 2017 22:21:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 22:21:06 GMT
CMD ["couchbase-server"]
# Wed, 12 Apr 2017 22:21:07 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 12 Apr 2017 22:21:08 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d8868e50ac4c7104d2200d42f432b661b2da8c1e417ccfae217e6a1e04bb9295`  
		Last Modified: Mon, 03 Apr 2017 14:22:02 GMT  
		Size: 39.1 MB (39096921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83251ac64627fc331584f6c498b3aba5badc01574e2c70b2499af3af16630eed`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 57.9 KB (57938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589bba2f1b36ae56f0152c246e2541c5aa604b058febfcf2be32e9a304fec610`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ecaceda3964b735cdd2af613d6bb136a52c1da0838b2ff4b4dab4212bcb1c`  
		Last Modified: Wed, 12 Apr 2017 21:08:09 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93b41cfc6bf0d2522b7cf61588de4cd045065b36c52bd3aec2ba0622b2b22b`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4feb9c7234f0031242868ddd57904b27f5b19ca8f30ef9ea7985146219fdaa`  
		Last Modified: Tue, 25 Apr 2017 16:58:09 GMT  
		Size: 9.6 MB (9578937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d32081d3d78937a2d77db99551f829e52ce383f3846f8e453a8d40b81fa21a`  
		Last Modified: Tue, 25 Apr 2017 17:00:59 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09217d3e4a236b8b5f8fd72599fbda03ced1334cb751921c2201ff44e24eb3f0`  
		Last Modified: Tue, 25 Apr 2017 17:01:40 GMT  
		Size: 217.8 MB (217780158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d16271192b3fd32aa18ae5094682577f107b7c4b5288a72db2f64f9b2da95c`  
		Last Modified: Tue, 25 Apr 2017 17:00:57 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8349780dcd4444ae25cceecdc9dc4ee99b56f2e204718e5f81de76c0b78ee85c`  
		Last Modified: Tue, 25 Apr 2017 17:00:57 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f24ed2fe1325315a9ce4d7025a6bb606322c91992be5446ef40a63cc0f616b`  
		Last Modified: Tue, 25 Apr 2017 17:00:57 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6453a3c1fbf7168f0c7ca05515beaa437a84d666f00ee1485751d381b7cf49c1`  
		Last Modified: Tue, 25 Apr 2017 17:00:59 GMT  
		Size: 10.5 MB (10467868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18b0bf44aa595ceb32054ef698f7c71646fdab61ff8bb6c140e5ec61817f5ba`  
		Last Modified: Tue, 25 Apr 2017 17:00:57 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
