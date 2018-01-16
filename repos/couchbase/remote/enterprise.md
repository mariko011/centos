## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:bb21d33e1eeaf0cd8c493808d738f2da7683cb2493eedc5e52be86d67412c41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:57e0ccc8bbde465546de891b5e3f62ade18951e0f54c1ebbf3192df8c872bfa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226872329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60eb6206c6cdd9768284bbec9e7d2ff811847b94f0cb3780588890a290ba6b1c`
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
# Tue, 16 Jan 2018 04:39:47 GMT
ARG CB_VERSION=5.0.1
# Tue, 16 Jan 2018 04:39:47 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 16 Jan 2018 04:39:47 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb
# Tue, 16 Jan 2018 04:39:48 GMT
ARG CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1
# Tue, 16 Jan 2018 04:39:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 16 Jan 2018 04:39:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 16 Jan 2018 04:40:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 16 Jan 2018 04:40:12 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 16 Jan 2018 04:40:13 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 16 Jan 2018 04:40:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 16 Jan 2018 04:40:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 16 Jan 2018 04:40:15 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 16 Jan 2018 04:40:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Jan 2018 04:40:16 GMT
CMD ["couchbase-server"]
# Tue, 16 Jan 2018 04:40:16 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 16 Jan 2018 04:40:17 GMT
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
	-	`sha256:07568a81efc07b5187b1c0acdd844eb103e1787f64925b180ae901a21d1118bf`  
		Last Modified: Tue, 16 Jan 2018 04:47:05 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a31f8fc2d8eb8ab15c825e30aaf6c156049e32e69f0feedb40351e75d119bb2`  
		Last Modified: Tue, 16 Jan 2018 04:47:37 GMT  
		Size: 142.4 MB (142362390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92887cf3e217f5ab01155ee388597e298731e7b7b3710ece4673e54ab2045ef0`  
		Last Modified: Tue, 16 Jan 2018 04:47:04 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afee42437f96fb0dcf0db8a250237e2e6028b18d022c3f442b5d1c20cd54a55`  
		Last Modified: Tue, 16 Jan 2018 04:47:03 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e98c99db95f7d74345a24145942c537e8dd6165c912e62fb8e152b6f4eb3048`  
		Last Modified: Tue, 16 Jan 2018 04:47:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55ad78352a0e844123da1e87b967a342d78c8df5e6ff04bc375b9ed8438c0f3`  
		Last Modified: Tue, 16 Jan 2018 04:47:04 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443dfbf578bd6bac778be2caaaf87633e3404b9c09fe5916e8ac2320996f1487`  
		Last Modified: Tue, 16 Jan 2018 04:47:03 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
