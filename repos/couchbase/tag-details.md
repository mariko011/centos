<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:latest`](#couchbaselatest)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:4.5.1`](#couchbase451)
-	[`couchbase:enterprise-4.5.1`](#couchbaseenterprise-451)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.1.1`](#couchbasecommunity-411)
-	[`couchbase:3.1.6`](#couchbase316)
-	[`couchbase:enterprise-3.1.6`](#couchbaseenterprise-316)
-	[`couchbase:community-3.1.3`](#couchbasecommunity-313)

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:84b8e7caa453597d71ec9a3d14c4244d881b39ae9a52bfcb2cc54bbe5154d091
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62ee511b6d13583d724a664edbd7b0d595dd754895a3d45cbdb63cd66427c81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:51:56 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 13 Oct 2016 21:52:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 13 Oct 2016 21:52:25 GMT
ARG CB_VERSION=4.5.1
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Thu, 13 Oct 2016 21:52:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 13 Oct 2016 21:52:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 13 Oct 2016 21:52:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 13 Oct 2016 21:52:52 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 13 Oct 2016 21:52:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 13 Oct 2016 21:52:55 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 13 Oct 2016 21:52:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Oct 2016 21:52:56 GMT
CMD ["couchbase-server"]
# Thu, 13 Oct 2016 21:52:56 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 13 Oct 2016 21:52:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ddeb60c4f9f5f84cc4f528259c7ad7e11f7284e30e1917d1aa136c4a6f1aa4`  
		Last Modified: Thu, 13 Oct 2016 21:53:12 GMT  
		Size: 11.3 MB (11254535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2565b9c32ac2b8f210c4713a8524855eb01c17df7e82a1fa317a0e5b942688ba`  
		Last Modified: Thu, 13 Oct 2016 21:53:09 GMT  
		Size: 1.9 KB (1852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8163eba49590af3891488a01345e246b774c7c45967a7a288d07db73ec4bae68`  
		Last Modified: Thu, 13 Oct 2016 21:53:41 GMT  
		Size: 131.6 MB (131574147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684db416d96f639d09ba831dc56dc59daaa52c32d8c67ad777276b6286d1401c`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f43fda904371141ab4e35de1e335a607478520ca7cab57113ca89d1b844f75`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c91a9b71f4853529cd9a363bb8f507334e904a6202aada67e0ab25e2d6ae3`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c9ad0cf4736d3014d931714371f86fd4ee8bb36c4ed2ff79f1b2fbaf1dec7b`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 103.2 KB (103215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440ae48b968e53d5711ad2c0e20a5e5e435511d990993a936e58967f53fb6158`  
		Last Modified: Thu, 13 Oct 2016 21:53:06 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:f9766d31641ac5eb8e2fe617a6fd0fcebae9dfaf1b88b00b459243722ab3570a
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208715875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39f31a8525231293a12218cf5c4f3e4afcd0e36f8dac1cc2f1b68cc71f804ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 23:17:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 16 Nov 2016 23:18:02 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Nov 2016 23:19:08 GMT
ARG CB_VERSION=4.5.1
# Wed, 16 Nov 2016 23:19:08 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 16 Nov 2016 23:19:08 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Wed, 16 Nov 2016 23:19:09 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Wed, 16 Nov 2016 23:19:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Nov 2016 23:19:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 16 Nov 2016 23:19:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 16 Nov 2016 23:19:37 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 16 Nov 2016 23:19:38 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 16 Nov 2016 23:19:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 16 Nov 2016 23:19:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 16 Nov 2016 23:19:40 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 16 Nov 2016 23:19:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Nov 2016 23:19:42 GMT
CMD ["couchbase-server"]
# Wed, 16 Nov 2016 23:19:42 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 16 Nov 2016 23:19:43 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c17b43dee3ab884437142118870c905dfdc74cf87deb8bfa5a6e07942e091a`  
		Last Modified: Wed, 16 Nov 2016 23:25:46 GMT  
		Size: 11.3 MB (11255126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb68501ccac064ac94f1817f23a31e18bd26325deadd636d0bd727ab710d4d35`  
		Last Modified: Wed, 16 Nov 2016 23:27:57 GMT  
		Size: 1.9 KB (1855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7182e7fc14f8cff718402be034498d50f95f4e593d3e51e1d06629870356c0`  
		Last Modified: Wed, 16 Nov 2016 23:28:30 GMT  
		Size: 131.6 MB (131579162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec664cf520e7b9b6cfe129bc9d69b161ed0428157958f833d82064c0ca0d642`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879f8a1e938f384d61fc8946fedf4a5b50c9806da333dcd070436f73850a969a`  
		Last Modified: Wed, 16 Nov 2016 23:27:54 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0456037b8db8606f359e95c94f28e52808bb568dacdbfa7c5994f1960d960e6`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c775a431beba6eec32ce7afca06c012760c698baabecb6b1c73bf4a2b7988687`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 103.2 KB (103224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12df608cbd9ace12f1ddb8772cb091664ca1f42f095878774e15b15364f80d84`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:4.5.1`

```console
$ docker pull couchbase@sha256:f9766d31641ac5eb8e2fe617a6fd0fcebae9dfaf1b88b00b459243722ab3570a
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208715875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39f31a8525231293a12218cf5c4f3e4afcd0e36f8dac1cc2f1b68cc71f804ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 23:17:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 16 Nov 2016 23:18:02 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Nov 2016 23:19:08 GMT
ARG CB_VERSION=4.5.1
# Wed, 16 Nov 2016 23:19:08 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 16 Nov 2016 23:19:08 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Wed, 16 Nov 2016 23:19:09 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Wed, 16 Nov 2016 23:19:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Nov 2016 23:19:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 16 Nov 2016 23:19:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 16 Nov 2016 23:19:37 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 16 Nov 2016 23:19:38 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 16 Nov 2016 23:19:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 16 Nov 2016 23:19:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 16 Nov 2016 23:19:40 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 16 Nov 2016 23:19:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Nov 2016 23:19:42 GMT
CMD ["couchbase-server"]
# Wed, 16 Nov 2016 23:19:42 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 16 Nov 2016 23:19:43 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c17b43dee3ab884437142118870c905dfdc74cf87deb8bfa5a6e07942e091a`  
		Last Modified: Wed, 16 Nov 2016 23:25:46 GMT  
		Size: 11.3 MB (11255126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb68501ccac064ac94f1817f23a31e18bd26325deadd636d0bd727ab710d4d35`  
		Last Modified: Wed, 16 Nov 2016 23:27:57 GMT  
		Size: 1.9 KB (1855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7182e7fc14f8cff718402be034498d50f95f4e593d3e51e1d06629870356c0`  
		Last Modified: Wed, 16 Nov 2016 23:28:30 GMT  
		Size: 131.6 MB (131579162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec664cf520e7b9b6cfe129bc9d69b161ed0428157958f833d82064c0ca0d642`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879f8a1e938f384d61fc8946fedf4a5b50c9806da333dcd070436f73850a969a`  
		Last Modified: Wed, 16 Nov 2016 23:27:54 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0456037b8db8606f359e95c94f28e52808bb568dacdbfa7c5994f1960d960e6`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c775a431beba6eec32ce7afca06c012760c698baabecb6b1c73bf4a2b7988687`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 103.2 KB (103224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12df608cbd9ace12f1ddb8772cb091664ca1f42f095878774e15b15364f80d84`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.5.1`

```console
$ docker pull couchbase@sha256:84b8e7caa453597d71ec9a3d14c4244d881b39ae9a52bfcb2cc54bbe5154d091
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.5.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62ee511b6d13583d724a664edbd7b0d595dd754895a3d45cbdb63cd66427c81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:51:56 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 13 Oct 2016 21:52:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 13 Oct 2016 21:52:25 GMT
ARG CB_VERSION=4.5.1
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Thu, 13 Oct 2016 21:52:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 13 Oct 2016 21:52:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 13 Oct 2016 21:52:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 13 Oct 2016 21:52:52 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 13 Oct 2016 21:52:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 13 Oct 2016 21:52:55 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 13 Oct 2016 21:52:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Oct 2016 21:52:56 GMT
CMD ["couchbase-server"]
# Thu, 13 Oct 2016 21:52:56 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 13 Oct 2016 21:52:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ddeb60c4f9f5f84cc4f528259c7ad7e11f7284e30e1917d1aa136c4a6f1aa4`  
		Last Modified: Thu, 13 Oct 2016 21:53:12 GMT  
		Size: 11.3 MB (11254535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2565b9c32ac2b8f210c4713a8524855eb01c17df7e82a1fa317a0e5b942688ba`  
		Last Modified: Thu, 13 Oct 2016 21:53:09 GMT  
		Size: 1.9 KB (1852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8163eba49590af3891488a01345e246b774c7c45967a7a288d07db73ec4bae68`  
		Last Modified: Thu, 13 Oct 2016 21:53:41 GMT  
		Size: 131.6 MB (131574147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684db416d96f639d09ba831dc56dc59daaa52c32d8c67ad777276b6286d1401c`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f43fda904371141ab4e35de1e335a607478520ca7cab57113ca89d1b844f75`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c91a9b71f4853529cd9a363bb8f507334e904a6202aada67e0ab25e2d6ae3`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c9ad0cf4736d3014d931714371f86fd4ee8bb36c4ed2ff79f1b2fbaf1dec7b`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 103.2 KB (103215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440ae48b968e53d5711ad2c0e20a5e5e435511d990993a936e58967f53fb6158`  
		Last Modified: Thu, 13 Oct 2016 21:53:06 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:0115853cce90f8cfc075488b2a8cec4f5b866f7586309a8a91a88bd4349e1504
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164375084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced7adebcd387054964adff884c98ebf71ea4afc22bf94f895f639b3f1b1a24c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 23:17:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 16 Nov 2016 23:18:02 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Nov 2016 23:18:03 GMT
ARG CB_VERSION=4.1.1
# Wed, 16 Nov 2016 23:18:03 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 16 Nov 2016 23:18:04 GMT
ARG CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb
# Wed, 16 Nov 2016 23:18:04 GMT
ARG CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883
# Wed, 16 Nov 2016 23:18:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Nov 2016 23:18:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 16 Nov 2016 23:18:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 16 Nov 2016 23:18:21 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 16 Nov 2016 23:18:22 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 16 Nov 2016 23:18:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 16 Nov 2016 23:18:24 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 16 Nov 2016 23:18:25 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 16 Nov 2016 23:18:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Nov 2016 23:18:26 GMT
CMD ["couchbase-server"]
# Wed, 16 Nov 2016 23:18:26 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 16 Nov 2016 23:18:27 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c17b43dee3ab884437142118870c905dfdc74cf87deb8bfa5a6e07942e091a`  
		Last Modified: Wed, 16 Nov 2016 23:25:46 GMT  
		Size: 11.3 MB (11255126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b77fcf1b901f7173785020715cc8b2329c2bd104a5adda6c5dccddc7a749be0`  
		Last Modified: Wed, 16 Nov 2016 23:25:43 GMT  
		Size: 1.9 KB (1853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c329aaa7ed8ee457706bd9d40b94720529ef5d1da2db364488c6ed61f70a7884`  
		Last Modified: Wed, 16 Nov 2016 23:26:04 GMT  
		Size: 87.2 MB (87242499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be6b15280e47427466890776002439a9b6dafe8e8051e646c4fe74857c98159`  
		Last Modified: Wed, 16 Nov 2016 23:25:40 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4fedbd3e9daabb68fe20fa72633f4d9db4d6ad043d8096fbbf155802e030bf`  
		Last Modified: Wed, 16 Nov 2016 23:25:40 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900e974867b073c2daac6fd359ddb97828284a2dabfa78defea3a0a162a89560`  
		Last Modified: Wed, 16 Nov 2016 23:25:40 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8c45bcfa887fe68eb8f80248e771c0b86a2bc13e0557423cc402c8e958a7f`  
		Last Modified: Wed, 16 Nov 2016 23:25:39 GMT  
		Size: 99.1 KB (99105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e941cc53dab7c90d4e668d0ff755e7b2a071aeed88cb2cb9338e1cde97313df2`  
		Last Modified: Wed, 16 Nov 2016 23:25:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.1.1`

```console
$ docker pull couchbase@sha256:0115853cce90f8cfc075488b2a8cec4f5b866f7586309a8a91a88bd4349e1504
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164375084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced7adebcd387054964adff884c98ebf71ea4afc22bf94f895f639b3f1b1a24c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 23:17:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 16 Nov 2016 23:18:02 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Nov 2016 23:18:03 GMT
ARG CB_VERSION=4.1.1
# Wed, 16 Nov 2016 23:18:03 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 16 Nov 2016 23:18:04 GMT
ARG CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb
# Wed, 16 Nov 2016 23:18:04 GMT
ARG CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883
# Wed, 16 Nov 2016 23:18:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Nov 2016 23:18:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 16 Nov 2016 23:18:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 16 Nov 2016 23:18:21 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 16 Nov 2016 23:18:22 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 16 Nov 2016 23:18:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 16 Nov 2016 23:18:24 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 16 Nov 2016 23:18:25 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 16 Nov 2016 23:18:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Nov 2016 23:18:26 GMT
CMD ["couchbase-server"]
# Wed, 16 Nov 2016 23:18:26 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 16 Nov 2016 23:18:27 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c17b43dee3ab884437142118870c905dfdc74cf87deb8bfa5a6e07942e091a`  
		Last Modified: Wed, 16 Nov 2016 23:25:46 GMT  
		Size: 11.3 MB (11255126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b77fcf1b901f7173785020715cc8b2329c2bd104a5adda6c5dccddc7a749be0`  
		Last Modified: Wed, 16 Nov 2016 23:25:43 GMT  
		Size: 1.9 KB (1853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c329aaa7ed8ee457706bd9d40b94720529ef5d1da2db364488c6ed61f70a7884`  
		Last Modified: Wed, 16 Nov 2016 23:26:04 GMT  
		Size: 87.2 MB (87242499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be6b15280e47427466890776002439a9b6dafe8e8051e646c4fe74857c98159`  
		Last Modified: Wed, 16 Nov 2016 23:25:40 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4fedbd3e9daabb68fe20fa72633f4d9db4d6ad043d8096fbbf155802e030bf`  
		Last Modified: Wed, 16 Nov 2016 23:25:40 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900e974867b073c2daac6fd359ddb97828284a2dabfa78defea3a0a162a89560`  
		Last Modified: Wed, 16 Nov 2016 23:25:40 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8c45bcfa887fe68eb8f80248e771c0b86a2bc13e0557423cc402c8e958a7f`  
		Last Modified: Wed, 16 Nov 2016 23:25:39 GMT  
		Size: 99.1 KB (99105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e941cc53dab7c90d4e668d0ff755e7b2a071aeed88cb2cb9338e1cde97313df2`  
		Last Modified: Wed, 16 Nov 2016 23:25:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:3.1.6`

```console
$ docker pull couchbase@sha256:07069cd2fc1c40ae8597939f3ad361a63a3a73d5c377f02c1805f173c179267f
```

-	Platforms:
	-	linux; amd64

### `couchbase:3.1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271941787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ee1ec59e7f644376fcaa89814efe2a150335bf50a67e78ec57ecdde092ca6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:20 GMT
ADD file:918588bc20de203f9564552c8d27b53f0c5358a4849132fbe8a7cee90009cda5 in / 
# Wed, 16 Nov 2016 20:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 23:15:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 16 Nov 2016 23:16:43 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Nov 2016 23:16:43 GMT
ARG CB_VERSION=3.1.6
# Wed, 16 Nov 2016 23:16:44 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 16 Nov 2016 23:16:44 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Wed, 16 Nov 2016 23:16:44 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Wed, 16 Nov 2016 23:16:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Nov 2016 23:16:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 16 Nov 2016 23:17:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 16 Nov 2016 23:17:17 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 16 Nov 2016 23:17:17 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 16 Nov 2016 23:17:18 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 16 Nov 2016 23:17:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 16 Nov 2016 23:17:21 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 16 Nov 2016 23:17:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Nov 2016 23:17:22 GMT
CMD ["couchbase-server"]
# Wed, 16 Nov 2016 23:17:23 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 16 Nov 2016 23:17:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d6ec4d0dfee224fd6853b7d735d5b8d95501ca9c50ac4c04a06f3fcab170a606`  
		Last Modified: Tue, 08 Nov 2016 12:49:34 GMT  
		Size: 39.1 MB (39071562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16bbaf4c0bda8f4079d59c64b10ec39ed14f8a3478cd129adc0c61d16d2b28d`  
		Last Modified: Wed, 16 Nov 2016 20:59:20 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfd0f7e92b6366c41feb9d70d897bd9cdd36d5cef28bb78a2859c2116dfce29`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82d8e42dc0a99c6b4a477e072955033dd6c9a7a2f0b50dcb9b96d21eb18a04`  
		Last Modified: Wed, 16 Nov 2016 20:59:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af144ef32a67fbcb29a87ffa7e32ce4735c8bd262e734e9f761de2085b842a4b`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f73bd2cfffa7b4181bc0909942b5d61f0f99beefee07e9570e2306183cfdf7`  
		Last Modified: Wed, 16 Nov 2016 23:24:09 GMT  
		Size: 9.5 MB (9470387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb597c47d129a49a77eed1905786132f461a2df230c27fec44c3f0dba55c430`  
		Last Modified: Wed, 16 Nov 2016 23:24:05 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6206e4bab08e7e84a711161ba74e6d704afcae45501351738ceb06073d1e8a`  
		Last Modified: Wed, 16 Nov 2016 23:25:00 GMT  
		Size: 213.1 MB (213062419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27409b4e4f2f7385dfa49c12304ff9c384a50d47214459cb4210f79fd6def62b`  
		Last Modified: Wed, 16 Nov 2016 23:24:01 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc529a7cf8bab8685924298a43fdce9c11e4c80d7f3ba241715010164521ab0`  
		Last Modified: Wed, 16 Nov 2016 23:24:02 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0eebe52400ed297d4ca74a7190aa718e25b43b0f247b8f4894ec81c3c1443fb`  
		Last Modified: Wed, 16 Nov 2016 23:24:02 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49957cd95ee417a5b500a3d33dbedf317acdad5017f1232350e503cfa2bda365`  
		Last Modified: Wed, 16 Nov 2016 23:24:06 GMT  
		Size: 10.3 MB (10275427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59673666fbf74a719c51b8f8f56a029948f3d0999d30af69303fb02b076c2b4c`  
		Last Modified: Wed, 16 Nov 2016 23:24:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-3.1.6`

```console
$ docker pull couchbase@sha256:07069cd2fc1c40ae8597939f3ad361a63a3a73d5c377f02c1805f173c179267f
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-3.1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271941787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ee1ec59e7f644376fcaa89814efe2a150335bf50a67e78ec57ecdde092ca6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:20 GMT
ADD file:918588bc20de203f9564552c8d27b53f0c5358a4849132fbe8a7cee90009cda5 in / 
# Wed, 16 Nov 2016 20:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 23:15:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 16 Nov 2016 23:16:43 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Nov 2016 23:16:43 GMT
ARG CB_VERSION=3.1.6
# Wed, 16 Nov 2016 23:16:44 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 16 Nov 2016 23:16:44 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Wed, 16 Nov 2016 23:16:44 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Wed, 16 Nov 2016 23:16:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Nov 2016 23:16:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 16 Nov 2016 23:17:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 16 Nov 2016 23:17:17 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 16 Nov 2016 23:17:17 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 16 Nov 2016 23:17:18 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 16 Nov 2016 23:17:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 16 Nov 2016 23:17:21 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 16 Nov 2016 23:17:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Nov 2016 23:17:22 GMT
CMD ["couchbase-server"]
# Wed, 16 Nov 2016 23:17:23 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 16 Nov 2016 23:17:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d6ec4d0dfee224fd6853b7d735d5b8d95501ca9c50ac4c04a06f3fcab170a606`  
		Last Modified: Tue, 08 Nov 2016 12:49:34 GMT  
		Size: 39.1 MB (39071562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16bbaf4c0bda8f4079d59c64b10ec39ed14f8a3478cd129adc0c61d16d2b28d`  
		Last Modified: Wed, 16 Nov 2016 20:59:20 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfd0f7e92b6366c41feb9d70d897bd9cdd36d5cef28bb78a2859c2116dfce29`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82d8e42dc0a99c6b4a477e072955033dd6c9a7a2f0b50dcb9b96d21eb18a04`  
		Last Modified: Wed, 16 Nov 2016 20:59:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af144ef32a67fbcb29a87ffa7e32ce4735c8bd262e734e9f761de2085b842a4b`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f73bd2cfffa7b4181bc0909942b5d61f0f99beefee07e9570e2306183cfdf7`  
		Last Modified: Wed, 16 Nov 2016 23:24:09 GMT  
		Size: 9.5 MB (9470387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb597c47d129a49a77eed1905786132f461a2df230c27fec44c3f0dba55c430`  
		Last Modified: Wed, 16 Nov 2016 23:24:05 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6206e4bab08e7e84a711161ba74e6d704afcae45501351738ceb06073d1e8a`  
		Last Modified: Wed, 16 Nov 2016 23:25:00 GMT  
		Size: 213.1 MB (213062419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27409b4e4f2f7385dfa49c12304ff9c384a50d47214459cb4210f79fd6def62b`  
		Last Modified: Wed, 16 Nov 2016 23:24:01 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc529a7cf8bab8685924298a43fdce9c11e4c80d7f3ba241715010164521ab0`  
		Last Modified: Wed, 16 Nov 2016 23:24:02 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0eebe52400ed297d4ca74a7190aa718e25b43b0f247b8f4894ec81c3c1443fb`  
		Last Modified: Wed, 16 Nov 2016 23:24:02 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49957cd95ee417a5b500a3d33dbedf317acdad5017f1232350e503cfa2bda365`  
		Last Modified: Wed, 16 Nov 2016 23:24:06 GMT  
		Size: 10.3 MB (10275427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59673666fbf74a719c51b8f8f56a029948f3d0999d30af69303fb02b076c2b4c`  
		Last Modified: Wed, 16 Nov 2016 23:24:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:43d4ef84a6b2d1b8363034755eae7bd8f06876aa8f13e664078e879061ea526f
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272031363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87bd90a9aaa58b49281e7c7f2f48abbbe9dfe0a5cbab59e5495b2a91df1ab7a3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:20 GMT
ADD file:918588bc20de203f9564552c8d27b53f0c5358a4849132fbe8a7cee90009cda5 in / 
# Wed, 16 Nov 2016 20:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 23:15:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 16 Nov 2016 23:16:43 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Nov 2016 23:18:27 GMT
ARG CB_VERSION=3.1.3
# Wed, 16 Nov 2016 23:18:28 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 16 Nov 2016 23:18:28 GMT
ARG CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb
# Wed, 16 Nov 2016 23:18:28 GMT
ARG CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41
# Wed, 16 Nov 2016 23:18:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Nov 2016 23:18:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 16 Nov 2016 23:19:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 16 Nov 2016 23:19:01 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 16 Nov 2016 23:19:02 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 16 Nov 2016 23:19:03 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 16 Nov 2016 23:19:04 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 16 Nov 2016 23:19:05 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 16 Nov 2016 23:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Nov 2016 23:19:06 GMT
CMD ["couchbase-server"]
# Wed, 16 Nov 2016 23:19:06 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 16 Nov 2016 23:19:07 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d6ec4d0dfee224fd6853b7d735d5b8d95501ca9c50ac4c04a06f3fcab170a606`  
		Last Modified: Tue, 08 Nov 2016 12:49:34 GMT  
		Size: 39.1 MB (39071562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16bbaf4c0bda8f4079d59c64b10ec39ed14f8a3478cd129adc0c61d16d2b28d`  
		Last Modified: Wed, 16 Nov 2016 20:59:20 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfd0f7e92b6366c41feb9d70d897bd9cdd36d5cef28bb78a2859c2116dfce29`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82d8e42dc0a99c6b4a477e072955033dd6c9a7a2f0b50dcb9b96d21eb18a04`  
		Last Modified: Wed, 16 Nov 2016 20:59:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af144ef32a67fbcb29a87ffa7e32ce4735c8bd262e734e9f761de2085b842a4b`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f73bd2cfffa7b4181bc0909942b5d61f0f99beefee07e9570e2306183cfdf7`  
		Last Modified: Wed, 16 Nov 2016 23:24:09 GMT  
		Size: 9.5 MB (9470387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77d94566050d3d10872481bac5a0ecd5c1c077429f0ccde0fc460efecb8502`  
		Last Modified: Wed, 16 Nov 2016 23:26:41 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5eb9daf5d2590c7fd7478de89c10de9f08cb323e178982c4ad87bc41a38864e`  
		Last Modified: Wed, 16 Nov 2016 23:27:32 GMT  
		Size: 213.2 MB (213152000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124a6d42d9d1b703d964a46c7c0cba05c364de2095aeccd3309ba76eef709b64`  
		Last Modified: Wed, 16 Nov 2016 23:26:39 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e182b754715cbf7be20f1292f731a65c6ecc09777e5ec32f1486b2e5b89b868e`  
		Last Modified: Wed, 16 Nov 2016 23:26:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbc49f7e9cc57a044d1e440ea67b5f50620e866b0519027781defb6a42e07a7`  
		Last Modified: Wed, 16 Nov 2016 23:26:38 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec56c403cd7f10af475d4507eb9a18b5a358c122d6a305a05388c9001e820d12`  
		Last Modified: Wed, 16 Nov 2016 23:26:42 GMT  
		Size: 10.3 MB (10275428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc30c4dda43d635e174f1f88b2b735007004aac3700cf0e7c36e2a26bb0978f0`  
		Last Modified: Wed, 16 Nov 2016 23:26:38 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
