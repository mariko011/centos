<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.3`](#couchbase463)
-	[`couchbase:5.0.0`](#couchbase500)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.0.0`](#couchbasecommunity-500)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.3`](#couchbaseenterprise-463)
-	[`couchbase:enterprise-5.0.0`](#couchbaseenterprise-500)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.3`

```console
$ docker pull couchbase@sha256:1c51d1bbb4eaa310eacc87ec215e31545b7a362112c3c87fa87d41bfebee2359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:8a75fc5ed6d7a717ec829eeb10dbbe22f82eb9b031751f2812e26ff67b118812
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213108152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e52f5a491b9eb9559ca04251dfba591200da0d142634629a74daf1abd9d9a12`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 13 Sep 2017 23:43:58 GMT
ARG CB_VERSION=4.6.3
# Wed, 13 Sep 2017 23:43:59 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 13 Sep 2017 23:43:59 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb
# Wed, 13 Sep 2017 23:43:59 GMT
ARG CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69
# Wed, 13 Sep 2017 23:43:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 13 Sep 2017 23:44:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 13 Sep 2017 23:44:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 13 Sep 2017 23:44:20 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 13 Sep 2017 23:44:21 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 13 Sep 2017 23:44:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 13 Sep 2017 23:44:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 13 Sep 2017 23:44:22 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 13 Sep 2017 23:44:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 23:44:23 GMT
CMD ["couchbase-server"]
# Wed, 13 Sep 2017 23:44:23 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 13 Sep 2017 23:44:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240d8c04e4fff14893fc8e533764925101f184df394549e5e175eed2924d20e2`  
		Last Modified: Fri, 15 Sep 2017 01:07:30 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61287bef98a6a656ab4b7f814eadb9b55d1ac63511b81e9c41fec241e7de40`  
		Last Modified: Fri, 15 Sep 2017 01:08:10 GMT  
		Size: 134.4 MB (134367419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959bb5dc95a946c7bf091e6bfd1d5a8589b937caf91569025dc8ddceeb66deb8`  
		Last Modified: Fri, 15 Sep 2017 01:07:27 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daf3b8b7350dfbba13a326de371f6f5cbfaaf760009d04e598179807822996d`  
		Last Modified: Fri, 15 Sep 2017 01:07:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786ae5191faffc260200784f86996e097117c6ed78dc9118404b5bffddf5959c`  
		Last Modified: Fri, 15 Sep 2017 01:07:27 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583b1b1cf0a794bc2b09df4665a7a7305de24308c83ec111734787ed703199c6`  
		Last Modified: Fri, 15 Sep 2017 01:07:27 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a1b68fb9c96d328b4c7d18bacf43760665d23dbb22680dbcb0c9c584c2c626`  
		Last Modified: Fri, 15 Sep 2017 01:07:27 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.0.0`

```console
$ docker pull couchbase@sha256:932d35f8331d17f492408c3d008ac253a7cb770283a024cef2e8b7326341e0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:ed1046e57fc2144c5edf440bd7b5506496e65750c24e0dc69457b543cee4ef87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221105303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2caf73ea2d0a5596c98fb578c3b57120a13f1eba208353791e825a66bc8c8d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 24 Oct 2017 22:04:29 GMT
ARG CB_VERSION=5.0.0
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Tue, 24 Oct 2017 22:04:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 24 Oct 2017 22:04:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 24 Oct 2017 22:04:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 24 Oct 2017 22:04:48 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 24 Oct 2017 22:04:48 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 24 Oct 2017 22:04:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 24 Oct 2017 22:04:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 24 Oct 2017 22:04:50 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 24 Oct 2017 22:04:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Oct 2017 22:04:51 GMT
CMD ["couchbase-server"]
# Tue, 24 Oct 2017 22:04:51 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 24 Oct 2017 22:04:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e88c9a015ee6de63bac44c7bc1584a1552fd707aad92134af15a3d7655a262`  
		Last Modified: Tue, 24 Oct 2017 22:05:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1acb32764f5ba6e33bb12456bc052883be0fcdfbf2879df38bf082545916c34`  
		Last Modified: Tue, 24 Oct 2017 22:06:14 GMT  
		Size: 142.4 MB (142364571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe5b3ca6273ac733d2e724d90c08be4e3a68f545d8f33e093265f212f7282b4`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17252f867f84c8131538e0b888cec371fda1ec74c26cd9603eb465d0eec6ff2e`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfa73853bb215bc13503cadb23f8a29292727f520c2edcd6fad9551c83c034d`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c102d412869b021ad11262f895d44c0c3c6f42edb4431ce14a62e5348c7df0`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf70e0862517e4e1c632859f2fcee9dc06834b2066adbf8f77ff72394d2d396d`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:4da3a4e4482f2ac8c51d0b83f25a35f6ac96ffdfbec182c8a72e451f7f20b173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:3d59cff5296da314f93156a51e76cb3410d82d545a30089dbaebfdacd5db056d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211071210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193026d8fe6345c5c4f07ce4e01c93383ed922fe175d13d279b01a27b9574c1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 24 Oct 2017 22:04:29 GMT
ARG CB_VERSION=5.0.0
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 24 Oct 2017 22:05:06 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb
# Tue, 24 Oct 2017 22:05:06 GMT
ARG CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49
# Tue, 24 Oct 2017 22:05:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 24 Oct 2017 22:05:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 24 Oct 2017 22:05:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 24 Oct 2017 22:05:30 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 24 Oct 2017 22:05:30 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 24 Oct 2017 22:05:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 24 Oct 2017 22:05:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 24 Oct 2017 22:05:32 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 24 Oct 2017 22:05:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Oct 2017 22:05:32 GMT
CMD ["couchbase-server"]
# Tue, 24 Oct 2017 22:05:32 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 24 Oct 2017 22:05:32 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd45e7266130ce10971f950aca4fee304ed3c41aadab1143994caeaf4a73b0be`  
		Last Modified: Tue, 24 Oct 2017 22:06:55 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5c781053696c5fc3f118b131dda80a422a6ba2062fb4b3025bff672847fd5e`  
		Last Modified: Tue, 24 Oct 2017 22:07:13 GMT  
		Size: 132.3 MB (132330468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ce7334554d9be995cd425e95c9e1ccd1472e709bc1c7b4970e8806fd7a94f`  
		Last Modified: Tue, 24 Oct 2017 22:06:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57216408809960aa4d941347859bd62dd76b4489a1cf3fbe658b220d1036266d`  
		Last Modified: Tue, 24 Oct 2017 22:06:53 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e1dd9f7e24b58e9402fda25f3088be07b4f3776bacb0218622d4cb4d380afc`  
		Last Modified: Tue, 24 Oct 2017 22:06:54 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deac58cc1e51dcac1b91eb69af8ce52568aab25695884a20cc4ee693f85f2d33`  
		Last Modified: Tue, 24 Oct 2017 22:06:54 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8483eafc79f2e9a2a529d4040e1a5abbb21eb4046c44566d6c27cab3b79eb01c`  
		Last Modified: Tue, 24 Oct 2017 22:06:53 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:4120b59179be5f7f5733043d9e98f43936ff97003bb0af2d56127cbcfe6d3263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:52786ae51ca2b7993edcae88e4410daee2b4857716f17febaff442c2dec89bb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209817165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7afcdebde608f1b9db985d8de1f2a1589e57d4d96134c1427c6f536b498dc2a6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 13 Sep 2017 23:44:25 GMT
ARG CB_VERSION=4.5.1
# Wed, 13 Sep 2017 23:44:25 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 13 Sep 2017 23:44:25 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Wed, 13 Sep 2017 23:44:25 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Wed, 13 Sep 2017 23:44:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 13 Sep 2017 23:44:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 13 Sep 2017 23:44:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 13 Sep 2017 23:44:53 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 13 Sep 2017 23:44:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 13 Sep 2017 23:44:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 13 Sep 2017 23:44:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 13 Sep 2017 23:44:55 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 13 Sep 2017 23:44:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 23:44:55 GMT
CMD ["couchbase-server"]
# Wed, 13 Sep 2017 23:44:55 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 13 Sep 2017 23:44:55 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46382a3b5619f9c32bb5eb2ddbdbc35e79417be85e5ec4e42c88e0b8802af14e`  
		Last Modified: Fri, 15 Sep 2017 01:08:48 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d789367959eb37882a5e251fe344018ebb7c119c9716c65caded2de5cf7da97`  
		Last Modified: Fri, 15 Sep 2017 01:09:20 GMT  
		Size: 131.1 MB (131076431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f652ea7f04a56dc4c89b4abbe9d414e3e4ce2641af6ff8427618342957428`  
		Last Modified: Fri, 15 Sep 2017 01:08:46 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f6b19d930c87fcbde5151aff9ee68802952040a88f93bcde25945dbc075af9`  
		Last Modified: Fri, 15 Sep 2017 01:08:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b17c0350867941e465ea3408d11cdbb656ac91809a6f68fd0b7c3b02e55b932`  
		Last Modified: Fri, 15 Sep 2017 01:08:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c75f358033dd12acdddc83588802629312848ce08e336245a8f06fd2d177d8`  
		Last Modified: Fri, 15 Sep 2017 01:08:46 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2701c52258c402024c9a37d6d3bcffe0f18680ce4b3e48914b153434b5b35d7`  
		Last Modified: Fri, 15 Sep 2017 01:08:45 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.0.0`

```console
$ docker pull couchbase@sha256:4da3a4e4482f2ac8c51d0b83f25a35f6ac96ffdfbec182c8a72e451f7f20b173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:3d59cff5296da314f93156a51e76cb3410d82d545a30089dbaebfdacd5db056d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211071210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193026d8fe6345c5c4f07ce4e01c93383ed922fe175d13d279b01a27b9574c1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 24 Oct 2017 22:04:29 GMT
ARG CB_VERSION=5.0.0
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 24 Oct 2017 22:05:06 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb
# Tue, 24 Oct 2017 22:05:06 GMT
ARG CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49
# Tue, 24 Oct 2017 22:05:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 24 Oct 2017 22:05:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 24 Oct 2017 22:05:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 24 Oct 2017 22:05:30 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 24 Oct 2017 22:05:30 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 24 Oct 2017 22:05:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 24 Oct 2017 22:05:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 24 Oct 2017 22:05:32 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 24 Oct 2017 22:05:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Oct 2017 22:05:32 GMT
CMD ["couchbase-server"]
# Tue, 24 Oct 2017 22:05:32 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 24 Oct 2017 22:05:32 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd45e7266130ce10971f950aca4fee304ed3c41aadab1143994caeaf4a73b0be`  
		Last Modified: Tue, 24 Oct 2017 22:06:55 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5c781053696c5fc3f118b131dda80a422a6ba2062fb4b3025bff672847fd5e`  
		Last Modified: Tue, 24 Oct 2017 22:07:13 GMT  
		Size: 132.3 MB (132330468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ce7334554d9be995cd425e95c9e1ccd1472e709bc1c7b4970e8806fd7a94f`  
		Last Modified: Tue, 24 Oct 2017 22:06:54 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57216408809960aa4d941347859bd62dd76b4489a1cf3fbe658b220d1036266d`  
		Last Modified: Tue, 24 Oct 2017 22:06:53 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e1dd9f7e24b58e9402fda25f3088be07b4f3776bacb0218622d4cb4d380afc`  
		Last Modified: Tue, 24 Oct 2017 22:06:54 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deac58cc1e51dcac1b91eb69af8ce52568aab25695884a20cc4ee693f85f2d33`  
		Last Modified: Tue, 24 Oct 2017 22:06:54 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8483eafc79f2e9a2a529d4040e1a5abbb21eb4046c44566d6c27cab3b79eb01c`  
		Last Modified: Tue, 24 Oct 2017 22:06:53 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:932d35f8331d17f492408c3d008ac253a7cb770283a024cef2e8b7326341e0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:ed1046e57fc2144c5edf440bd7b5506496e65750c24e0dc69457b543cee4ef87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221105303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2caf73ea2d0a5596c98fb578c3b57120a13f1eba208353791e825a66bc8c8d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 24 Oct 2017 22:04:29 GMT
ARG CB_VERSION=5.0.0
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Tue, 24 Oct 2017 22:04:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 24 Oct 2017 22:04:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 24 Oct 2017 22:04:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 24 Oct 2017 22:04:48 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 24 Oct 2017 22:04:48 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 24 Oct 2017 22:04:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 24 Oct 2017 22:04:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 24 Oct 2017 22:04:50 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 24 Oct 2017 22:04:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Oct 2017 22:04:51 GMT
CMD ["couchbase-server"]
# Tue, 24 Oct 2017 22:04:51 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 24 Oct 2017 22:04:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e88c9a015ee6de63bac44c7bc1584a1552fd707aad92134af15a3d7655a262`  
		Last Modified: Tue, 24 Oct 2017 22:05:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1acb32764f5ba6e33bb12456bc052883be0fcdfbf2879df38bf082545916c34`  
		Last Modified: Tue, 24 Oct 2017 22:06:14 GMT  
		Size: 142.4 MB (142364571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe5b3ca6273ac733d2e724d90c08be4e3a68f545d8f33e093265f212f7282b4`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17252f867f84c8131538e0b888cec371fda1ec74c26cd9603eb465d0eec6ff2e`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfa73853bb215bc13503cadb23f8a29292727f520c2edcd6fad9551c83c034d`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c102d412869b021ad11262f895d44c0c3c6f42edb4431ce14a62e5348c7df0`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf70e0862517e4e1c632859f2fcee9dc06834b2066adbf8f77ff72394d2d396d`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.3`

```console
$ docker pull couchbase@sha256:1c51d1bbb4eaa310eacc87ec215e31545b7a362112c3c87fa87d41bfebee2359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:8a75fc5ed6d7a717ec829eeb10dbbe22f82eb9b031751f2812e26ff67b118812
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213108152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e52f5a491b9eb9559ca04251dfba591200da0d142634629a74daf1abd9d9a12`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 13 Sep 2017 23:43:58 GMT
ARG CB_VERSION=4.6.3
# Wed, 13 Sep 2017 23:43:59 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 13 Sep 2017 23:43:59 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb
# Wed, 13 Sep 2017 23:43:59 GMT
ARG CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69
# Wed, 13 Sep 2017 23:43:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 13 Sep 2017 23:44:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 13 Sep 2017 23:44:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 13 Sep 2017 23:44:20 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 13 Sep 2017 23:44:21 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 13 Sep 2017 23:44:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 13 Sep 2017 23:44:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 13 Sep 2017 23:44:22 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 13 Sep 2017 23:44:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 23:44:23 GMT
CMD ["couchbase-server"]
# Wed, 13 Sep 2017 23:44:23 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 13 Sep 2017 23:44:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240d8c04e4fff14893fc8e533764925101f184df394549e5e175eed2924d20e2`  
		Last Modified: Fri, 15 Sep 2017 01:07:30 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61287bef98a6a656ab4b7f814eadb9b55d1ac63511b81e9c41fec241e7de40`  
		Last Modified: Fri, 15 Sep 2017 01:08:10 GMT  
		Size: 134.4 MB (134367419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959bb5dc95a946c7bf091e6bfd1d5a8589b937caf91569025dc8ddceeb66deb8`  
		Last Modified: Fri, 15 Sep 2017 01:07:27 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daf3b8b7350dfbba13a326de371f6f5cbfaaf760009d04e598179807822996d`  
		Last Modified: Fri, 15 Sep 2017 01:07:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786ae5191faffc260200784f86996e097117c6ed78dc9118404b5bffddf5959c`  
		Last Modified: Fri, 15 Sep 2017 01:07:27 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583b1b1cf0a794bc2b09df4665a7a7305de24308c83ec111734787ed703199c6`  
		Last Modified: Fri, 15 Sep 2017 01:07:27 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a1b68fb9c96d328b4c7d18bacf43760665d23dbb22680dbcb0c9c584c2c626`  
		Last Modified: Fri, 15 Sep 2017 01:07:27 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.0.0`

```console
$ docker pull couchbase@sha256:932d35f8331d17f492408c3d008ac253a7cb770283a024cef2e8b7326341e0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:ed1046e57fc2144c5edf440bd7b5506496e65750c24e0dc69457b543cee4ef87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221105303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2caf73ea2d0a5596c98fb578c3b57120a13f1eba208353791e825a66bc8c8d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 24 Oct 2017 22:04:29 GMT
ARG CB_VERSION=5.0.0
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Tue, 24 Oct 2017 22:04:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 24 Oct 2017 22:04:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 24 Oct 2017 22:04:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 24 Oct 2017 22:04:48 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 24 Oct 2017 22:04:48 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 24 Oct 2017 22:04:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 24 Oct 2017 22:04:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 24 Oct 2017 22:04:50 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 24 Oct 2017 22:04:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Oct 2017 22:04:51 GMT
CMD ["couchbase-server"]
# Tue, 24 Oct 2017 22:04:51 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 24 Oct 2017 22:04:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e88c9a015ee6de63bac44c7bc1584a1552fd707aad92134af15a3d7655a262`  
		Last Modified: Tue, 24 Oct 2017 22:05:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1acb32764f5ba6e33bb12456bc052883be0fcdfbf2879df38bf082545916c34`  
		Last Modified: Tue, 24 Oct 2017 22:06:14 GMT  
		Size: 142.4 MB (142364571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe5b3ca6273ac733d2e724d90c08be4e3a68f545d8f33e093265f212f7282b4`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17252f867f84c8131538e0b888cec371fda1ec74c26cd9603eb465d0eec6ff2e`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfa73853bb215bc13503cadb23f8a29292727f520c2edcd6fad9551c83c034d`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c102d412869b021ad11262f895d44c0c3c6f42edb4431ce14a62e5348c7df0`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf70e0862517e4e1c632859f2fcee9dc06834b2066adbf8f77ff72394d2d396d`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:932d35f8331d17f492408c3d008ac253a7cb770283a024cef2e8b7326341e0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:ed1046e57fc2144c5edf440bd7b5506496e65750c24e0dc69457b543cee4ef87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221105303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2caf73ea2d0a5596c98fb578c3b57120a13f1eba208353791e825a66bc8c8d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 24 Oct 2017 22:04:29 GMT
ARG CB_VERSION=5.0.0
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Tue, 24 Oct 2017 22:04:30 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Tue, 24 Oct 2017 22:04:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 24 Oct 2017 22:04:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 24 Oct 2017 22:04:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 24 Oct 2017 22:04:48 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 24 Oct 2017 22:04:48 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 24 Oct 2017 22:04:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 24 Oct 2017 22:04:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 24 Oct 2017 22:04:50 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 24 Oct 2017 22:04:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Oct 2017 22:04:51 GMT
CMD ["couchbase-server"]
# Tue, 24 Oct 2017 22:04:51 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 24 Oct 2017 22:04:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e88c9a015ee6de63bac44c7bc1584a1552fd707aad92134af15a3d7655a262`  
		Last Modified: Tue, 24 Oct 2017 22:05:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1acb32764f5ba6e33bb12456bc052883be0fcdfbf2879df38bf082545916c34`  
		Last Modified: Tue, 24 Oct 2017 22:06:14 GMT  
		Size: 142.4 MB (142364571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe5b3ca6273ac733d2e724d90c08be4e3a68f545d8f33e093265f212f7282b4`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17252f867f84c8131538e0b888cec371fda1ec74c26cd9603eb465d0eec6ff2e`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfa73853bb215bc13503cadb23f8a29292727f520c2edcd6fad9551c83c034d`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c102d412869b021ad11262f895d44c0c3c6f42edb4431ce14a62e5348c7df0`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf70e0862517e4e1c632859f2fcee9dc06834b2066adbf8f77ff72394d2d396d`  
		Last Modified: Tue, 24 Oct 2017 22:05:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
