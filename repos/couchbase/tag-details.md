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
$ docker pull couchbase@sha256:f9766d31641ac5eb8e2fe617a6fd0fcebae9dfaf1b88b00b459243722ab3570a
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

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
$ docker pull couchbase@sha256:9f4aed47b86c6a301ba27c0211914bef8ee6aee551329b8c9a51a40d4e8e22cd
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208715431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13cdcd80390591d6107e50158fc57b42e80ffad166239724994c6296191fbf08`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Tue, 29 Nov 2016 22:41:30 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 29 Nov 2016 22:42:38 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 29 Nov 2016 22:43:42 GMT
ARG CB_VERSION=4.5.1
# Tue, 29 Nov 2016 22:43:43 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 29 Nov 2016 22:43:43 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Tue, 29 Nov 2016 22:43:44 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Tue, 29 Nov 2016 22:43:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 29 Nov 2016 22:43:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 29 Nov 2016 22:44:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 29 Nov 2016 22:44:13 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 29 Nov 2016 22:44:14 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 29 Nov 2016 22:44:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 29 Nov 2016 22:44:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 29 Nov 2016 22:44:17 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 29 Nov 2016 22:44:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Nov 2016 22:44:18 GMT
CMD ["couchbase-server"]
# Tue, 29 Nov 2016 22:44:19 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 29 Nov 2016 22:44:19 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828e1a1c222339492340ff15d1f223b91a589fa281b974ac1faca42eec2340c`  
		Last Modified: Tue, 29 Nov 2016 22:46:29 GMT  
		Size: 11.3 MB (11257751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cb98d86fb76a95a80c164dd3dff3c19245f0abfcd1f76c9f314aee36da5e92`  
		Last Modified: Tue, 29 Nov 2016 22:48:47 GMT  
		Size: 1.9 KB (1851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d931dedbc5f49c7c21e8e28ffc73463d654af3fe7db6e790ddd107d6f89871ba`  
		Last Modified: Tue, 29 Nov 2016 22:49:23 GMT  
		Size: 131.6 MB (131579311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee7fba006fbe541fd58c39dfba4e8c83d0f7add641e778e8297711e4459c724`  
		Last Modified: Tue, 29 Nov 2016 22:48:44 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5938a6c6044a451e9162303ea7cb31574859a6590671b2327e5b69e1574d6`  
		Last Modified: Tue, 29 Nov 2016 22:48:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d5752a8dcdca9f56b92b07d5ea042259b12bc6ae6563406a37f62688fb542b`  
		Last Modified: Tue, 29 Nov 2016 22:48:43 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cd33f78f1d0ebc9ea301245f2e04bcd616e9d0b6671d41c5f763ca26fb3a27`  
		Last Modified: Tue, 29 Nov 2016 22:48:43 GMT  
		Size: 103.2 KB (103218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57c1d15fe8b62a191d345df099a533daf1e78b6a9c3a81e28a6461a984906c`  
		Last Modified: Tue, 29 Nov 2016 22:48:43 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.5.1`

```console
$ docker pull couchbase@sha256:9f4aed47b86c6a301ba27c0211914bef8ee6aee551329b8c9a51a40d4e8e22cd
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208715431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13cdcd80390591d6107e50158fc57b42e80ffad166239724994c6296191fbf08`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Tue, 29 Nov 2016 22:41:30 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 29 Nov 2016 22:42:38 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 29 Nov 2016 22:43:42 GMT
ARG CB_VERSION=4.5.1
# Tue, 29 Nov 2016 22:43:43 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 29 Nov 2016 22:43:43 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Tue, 29 Nov 2016 22:43:44 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Tue, 29 Nov 2016 22:43:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 29 Nov 2016 22:43:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 29 Nov 2016 22:44:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 29 Nov 2016 22:44:13 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 29 Nov 2016 22:44:14 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 29 Nov 2016 22:44:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 29 Nov 2016 22:44:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 29 Nov 2016 22:44:17 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 29 Nov 2016 22:44:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Nov 2016 22:44:18 GMT
CMD ["couchbase-server"]
# Tue, 29 Nov 2016 22:44:19 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 29 Nov 2016 22:44:19 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828e1a1c222339492340ff15d1f223b91a589fa281b974ac1faca42eec2340c`  
		Last Modified: Tue, 29 Nov 2016 22:46:29 GMT  
		Size: 11.3 MB (11257751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cb98d86fb76a95a80c164dd3dff3c19245f0abfcd1f76c9f314aee36da5e92`  
		Last Modified: Tue, 29 Nov 2016 22:48:47 GMT  
		Size: 1.9 KB (1851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d931dedbc5f49c7c21e8e28ffc73463d654af3fe7db6e790ddd107d6f89871ba`  
		Last Modified: Tue, 29 Nov 2016 22:49:23 GMT  
		Size: 131.6 MB (131579311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee7fba006fbe541fd58c39dfba4e8c83d0f7add641e778e8297711e4459c724`  
		Last Modified: Tue, 29 Nov 2016 22:48:44 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5938a6c6044a451e9162303ea7cb31574859a6590671b2327e5b69e1574d6`  
		Last Modified: Tue, 29 Nov 2016 22:48:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d5752a8dcdca9f56b92b07d5ea042259b12bc6ae6563406a37f62688fb542b`  
		Last Modified: Tue, 29 Nov 2016 22:48:43 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cd33f78f1d0ebc9ea301245f2e04bcd616e9d0b6671d41c5f763ca26fb3a27`  
		Last Modified: Tue, 29 Nov 2016 22:48:43 GMT  
		Size: 103.2 KB (103218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57c1d15fe8b62a191d345df099a533daf1e78b6a9c3a81e28a6461a984906c`  
		Last Modified: Tue, 29 Nov 2016 22:48:43 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:dfb6eea60de4062b2477d9227751fd372c41ec6117f435bc973082d8240dafa5
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164374791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312515d04f15763e991427555e807354d996fbe7f22d79c5740b4bf6e091632e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Tue, 29 Nov 2016 22:41:30 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 29 Nov 2016 22:42:38 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 29 Nov 2016 22:42:38 GMT
ARG CB_VERSION=4.1.1
# Tue, 29 Nov 2016 22:42:39 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 29 Nov 2016 22:42:39 GMT
ARG CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb
# Tue, 29 Nov 2016 22:42:39 GMT
ARG CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883
# Tue, 29 Nov 2016 22:42:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 29 Nov 2016 22:42:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 29 Nov 2016 22:42:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 29 Nov 2016 22:42:56 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 29 Nov 2016 22:42:57 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 29 Nov 2016 22:42:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 29 Nov 2016 22:42:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 29 Nov 2016 22:43:00 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 29 Nov 2016 22:43:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Nov 2016 22:43:00 GMT
CMD ["couchbase-server"]
# Tue, 29 Nov 2016 22:43:01 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 29 Nov 2016 22:43:02 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828e1a1c222339492340ff15d1f223b91a589fa281b974ac1faca42eec2340c`  
		Last Modified: Tue, 29 Nov 2016 22:46:29 GMT  
		Size: 11.3 MB (11257751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbf08eafe6072e861e92530ce60d07baafed57daecdb5b2524041f7a5d3c227`  
		Last Modified: Tue, 29 Nov 2016 22:46:27 GMT  
		Size: 1.9 KB (1853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebda1e669ac1d5086c4849f314470e3f97f782f9a61782f84e5e207143f22d`  
		Last Modified: Tue, 29 Nov 2016 22:46:47 GMT  
		Size: 87.2 MB (87242785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dba40a7949688f6e548fa15222789e4577bf13ff47f75c58de9b56cbb648daa`  
		Last Modified: Tue, 29 Nov 2016 22:46:24 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aee5464df2348edd37f27fa0a52dbd9adc359106f766e8055992fe2a75ee82e`  
		Last Modified: Tue, 29 Nov 2016 22:46:23 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c456e0cd46d8b8db031d43f947d3fb0ab363ab835b3c2fb62d52d18ea60265e4`  
		Last Modified: Tue, 29 Nov 2016 22:46:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c1b91c69ef7942e78a648fbbc4863755009211839a4b4cf04d72f29f469ccd`  
		Last Modified: Tue, 29 Nov 2016 22:46:23 GMT  
		Size: 99.1 KB (99102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f988a702c63e4135dc2759059ad715aeb44a17cdf45381913f655ea7fdd1477`  
		Last Modified: Tue, 29 Nov 2016 22:46:23 GMT  
		Size: 276.0 B  
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
