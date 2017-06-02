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
