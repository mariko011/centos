## `couchbase:community-5.0.1`

```console
$ docker pull couchbase@sha256:e6fbf7945bb4f912040937ad12e67eae71d117481af39e90e49eef8b81f279d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:4f4f494684e3a9b6cc352dee6d7f0186c7df57a873e311cc3d77ec4d6eee163d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.8 MB (216842389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d65f83a2436df001c9bd08d3380df6ced883ec7e5ee834c773acc5519ffe6db`
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
# Tue, 16 Jan 2018 04:45:11 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb
# Tue, 16 Jan 2018 04:45:11 GMT
ARG CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d
# Tue, 16 Jan 2018 04:45:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 16 Jan 2018 04:45:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 16 Jan 2018 04:45:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 16 Jan 2018 04:46:00 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 16 Jan 2018 04:46:00 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 16 Jan 2018 04:46:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 16 Jan 2018 04:46:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 16 Jan 2018 04:46:02 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 16 Jan 2018 04:46:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Jan 2018 04:46:03 GMT
CMD ["couchbase-server"]
# Tue, 16 Jan 2018 04:46:03 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 16 Jan 2018 04:46:03 GMT
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
	-	`sha256:8cb6869e910b3b4aed811c70aa7079008c055aa500afaf32e307eb476d0bc34d`  
		Last Modified: Tue, 16 Jan 2018 05:17:51 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6e0fa9d898bc2dc536bba244189750e952ffc92d33be99791396ae7d1aa911`  
		Last Modified: Tue, 16 Jan 2018 05:18:19 GMT  
		Size: 132.3 MB (132332443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa1b451c6dad111744c1982b9f41d135100bdcbc10e828e5cfcda5a04be0e39`  
		Last Modified: Tue, 16 Jan 2018 05:17:49 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b839c64ff616df8607c188ad6eb5c80005c1b7855a9f1caf5c88c5dc6b1d8a`  
		Last Modified: Tue, 16 Jan 2018 05:17:49 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b9494d68ce375798bccfec1d1da4264a5193ea16950b6b0fc0d453d218ee46`  
		Last Modified: Tue, 16 Jan 2018 05:17:49 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7f8a0e9889bb24847eb3f237c44e7473e0676794a2a0636e90bfb77a4b0e31`  
		Last Modified: Tue, 16 Jan 2018 05:17:49 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bce8cb4277b97dc04986ef60dda11fe5a208044d01608391956a7bfd6427d7`  
		Last Modified: Tue, 16 Jan 2018 05:17:49 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
