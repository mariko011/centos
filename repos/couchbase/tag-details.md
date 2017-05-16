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
$ docker pull couchbase@sha256:4034fa76dbfc54ed156e6876f7221e037fc0b165bcb01b1ebcee738865ce9b49
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215097646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6632c725c7d8d195b2cbe9e7156f10eba114a8ac5ac3e9b028cf90c46161d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 20:04:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 15 May 2017 20:05:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 16 May 2017 17:08:48 GMT
ARG CB_VERSION=4.6.2
# Tue, 16 May 2017 17:08:49 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 16 May 2017 17:08:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb
# Tue, 16 May 2017 17:08:50 GMT
ARG CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6
# Tue, 16 May 2017 17:08:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 16 May 2017 17:08:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 16 May 2017 17:09:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 16 May 2017 17:09:20 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 16 May 2017 17:09:21 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 16 May 2017 17:09:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 16 May 2017 17:09:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 16 May 2017 17:09:26 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 16 May 2017 17:09:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 17:09:27 GMT
CMD ["couchbase-server"]
# Tue, 16 May 2017 17:09:28 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 16 May 2017 17:09:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfd7d0f759938b785caea8aeef8afd7f6a65d67adfe59fa9a32a77e12bbe86`  
		Last Modified: Mon, 15 May 2017 20:08:01 GMT  
		Size: 11.4 MB (11442720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45305faf26ab61edcaeb98e8476b9409868c02bdd2689b758bb3b1e5bca8a372`  
		Last Modified: Tue, 16 May 2017 17:10:57 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49730f4507b9681d193d8cd83baad32510b70e68ce9615d6ee33570abb672c1`  
		Last Modified: Tue, 16 May 2017 17:11:16 GMT  
		Size: 136.4 MB (136369288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c8df0a6167a2d6bfba3dea264f0b36a2089e7f6a1543cbf51d867d78783f5a`  
		Last Modified: Tue, 16 May 2017 17:10:56 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83454a08bacbe78821d698fef281bde86fa1fbd2ae1eab81ddfb45eb0f705c0`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6d3954a8589ad4e57de25feae5ed274f5341a247fd730c930c0ab8fb54228c`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f853f2110737c2c77268cab70583302ced081587a4ad1b6ff1983b051e3df121`  
		Last Modified: Tue, 16 May 2017 17:10:54 GMT  
		Size: 105.4 KB (105391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cff40cf6480f4ab62b7f344d9863ef2b74063e7d0dd6e47febc1c9fbfe698c`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:4034fa76dbfc54ed156e6876f7221e037fc0b165bcb01b1ebcee738865ce9b49
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215097646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6632c725c7d8d195b2cbe9e7156f10eba114a8ac5ac3e9b028cf90c46161d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 20:04:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 15 May 2017 20:05:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 16 May 2017 17:08:48 GMT
ARG CB_VERSION=4.6.2
# Tue, 16 May 2017 17:08:49 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 16 May 2017 17:08:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb
# Tue, 16 May 2017 17:08:50 GMT
ARG CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6
# Tue, 16 May 2017 17:08:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 16 May 2017 17:08:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 16 May 2017 17:09:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 16 May 2017 17:09:20 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 16 May 2017 17:09:21 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 16 May 2017 17:09:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 16 May 2017 17:09:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 16 May 2017 17:09:26 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 16 May 2017 17:09:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 17:09:27 GMT
CMD ["couchbase-server"]
# Tue, 16 May 2017 17:09:28 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 16 May 2017 17:09:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfd7d0f759938b785caea8aeef8afd7f6a65d67adfe59fa9a32a77e12bbe86`  
		Last Modified: Mon, 15 May 2017 20:08:01 GMT  
		Size: 11.4 MB (11442720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45305faf26ab61edcaeb98e8476b9409868c02bdd2689b758bb3b1e5bca8a372`  
		Last Modified: Tue, 16 May 2017 17:10:57 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49730f4507b9681d193d8cd83baad32510b70e68ce9615d6ee33570abb672c1`  
		Last Modified: Tue, 16 May 2017 17:11:16 GMT  
		Size: 136.4 MB (136369288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c8df0a6167a2d6bfba3dea264f0b36a2089e7f6a1543cbf51d867d78783f5a`  
		Last Modified: Tue, 16 May 2017 17:10:56 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83454a08bacbe78821d698fef281bde86fa1fbd2ae1eab81ddfb45eb0f705c0`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6d3954a8589ad4e57de25feae5ed274f5341a247fd730c930c0ab8fb54228c`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f853f2110737c2c77268cab70583302ced081587a4ad1b6ff1983b051e3df121`  
		Last Modified: Tue, 16 May 2017 17:10:54 GMT  
		Size: 105.4 KB (105391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cff40cf6480f4ab62b7f344d9863ef2b74063e7d0dd6e47febc1c9fbfe698c`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:4.6.2`

```console
$ docker pull couchbase@sha256:4034fa76dbfc54ed156e6876f7221e037fc0b165bcb01b1ebcee738865ce9b49
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.6.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215097646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6632c725c7d8d195b2cbe9e7156f10eba114a8ac5ac3e9b028cf90c46161d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 20:04:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 15 May 2017 20:05:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 16 May 2017 17:08:48 GMT
ARG CB_VERSION=4.6.2
# Tue, 16 May 2017 17:08:49 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 16 May 2017 17:08:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb
# Tue, 16 May 2017 17:08:50 GMT
ARG CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6
# Tue, 16 May 2017 17:08:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 16 May 2017 17:08:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 16 May 2017 17:09:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 16 May 2017 17:09:20 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 16 May 2017 17:09:21 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 16 May 2017 17:09:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 16 May 2017 17:09:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 16 May 2017 17:09:26 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 16 May 2017 17:09:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 17:09:27 GMT
CMD ["couchbase-server"]
# Tue, 16 May 2017 17:09:28 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 16 May 2017 17:09:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfd7d0f759938b785caea8aeef8afd7f6a65d67adfe59fa9a32a77e12bbe86`  
		Last Modified: Mon, 15 May 2017 20:08:01 GMT  
		Size: 11.4 MB (11442720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45305faf26ab61edcaeb98e8476b9409868c02bdd2689b758bb3b1e5bca8a372`  
		Last Modified: Tue, 16 May 2017 17:10:57 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49730f4507b9681d193d8cd83baad32510b70e68ce9615d6ee33570abb672c1`  
		Last Modified: Tue, 16 May 2017 17:11:16 GMT  
		Size: 136.4 MB (136369288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c8df0a6167a2d6bfba3dea264f0b36a2089e7f6a1543cbf51d867d78783f5a`  
		Last Modified: Tue, 16 May 2017 17:10:56 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83454a08bacbe78821d698fef281bde86fa1fbd2ae1eab81ddfb45eb0f705c0`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6d3954a8589ad4e57de25feae5ed274f5341a247fd730c930c0ab8fb54228c`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f853f2110737c2c77268cab70583302ced081587a4ad1b6ff1983b051e3df121`  
		Last Modified: Tue, 16 May 2017 17:10:54 GMT  
		Size: 105.4 KB (105391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cff40cf6480f4ab62b7f344d9863ef2b74063e7d0dd6e47febc1c9fbfe698c`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.2`

```console
$ docker pull couchbase@sha256:4034fa76dbfc54ed156e6876f7221e037fc0b165bcb01b1ebcee738865ce9b49
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215097646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6632c725c7d8d195b2cbe9e7156f10eba114a8ac5ac3e9b028cf90c46161d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 20:04:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 15 May 2017 20:05:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 16 May 2017 17:08:48 GMT
ARG CB_VERSION=4.6.2
# Tue, 16 May 2017 17:08:49 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 16 May 2017 17:08:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb
# Tue, 16 May 2017 17:08:50 GMT
ARG CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6
# Tue, 16 May 2017 17:08:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 16 May 2017 17:08:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 16 May 2017 17:09:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 16 May 2017 17:09:20 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 16 May 2017 17:09:21 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 16 May 2017 17:09:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 16 May 2017 17:09:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 16 May 2017 17:09:26 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 16 May 2017 17:09:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 17:09:27 GMT
CMD ["couchbase-server"]
# Tue, 16 May 2017 17:09:28 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 16 May 2017 17:09:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfd7d0f759938b785caea8aeef8afd7f6a65d67adfe59fa9a32a77e12bbe86`  
		Last Modified: Mon, 15 May 2017 20:08:01 GMT  
		Size: 11.4 MB (11442720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45305faf26ab61edcaeb98e8476b9409868c02bdd2689b758bb3b1e5bca8a372`  
		Last Modified: Tue, 16 May 2017 17:10:57 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49730f4507b9681d193d8cd83baad32510b70e68ce9615d6ee33570abb672c1`  
		Last Modified: Tue, 16 May 2017 17:11:16 GMT  
		Size: 136.4 MB (136369288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c8df0a6167a2d6bfba3dea264f0b36a2089e7f6a1543cbf51d867d78783f5a`  
		Last Modified: Tue, 16 May 2017 17:10:56 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83454a08bacbe78821d698fef281bde86fa1fbd2ae1eab81ddfb45eb0f705c0`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6d3954a8589ad4e57de25feae5ed274f5341a247fd730c930c0ab8fb54228c`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f853f2110737c2c77268cab70583302ced081587a4ad1b6ff1983b051e3df121`  
		Last Modified: Tue, 16 May 2017 17:10:54 GMT  
		Size: 105.4 KB (105391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cff40cf6480f4ab62b7f344d9863ef2b74063e7d0dd6e47febc1c9fbfe698c`  
		Last Modified: Tue, 16 May 2017 17:10:55 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:c5beeaae94284d2fde385bc4afa397670a52945f91b1b0f47b0e4e9c50e744d0
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209794861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6bcbcd563568b9c1a5fe44328d405bcf14599c6e483f6ad54da2a6d34e140b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 20:04:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 15 May 2017 20:05:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 15 May 2017 20:05:25 GMT
ARG CB_VERSION=4.5.1
# Mon, 15 May 2017 20:05:25 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 15 May 2017 20:05:26 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Mon, 15 May 2017 20:05:27 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Mon, 15 May 2017 20:05:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 15 May 2017 20:05:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 15 May 2017 20:05:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 15 May 2017 20:05:55 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 15 May 2017 20:05:56 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 15 May 2017 20:05:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 15 May 2017 20:05:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 15 May 2017 20:06:00 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 15 May 2017 20:06:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 May 2017 20:06:02 GMT
CMD ["couchbase-server"]
# Mon, 15 May 2017 20:06:02 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 15 May 2017 20:06:04 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfd7d0f759938b785caea8aeef8afd7f6a65d67adfe59fa9a32a77e12bbe86`  
		Last Modified: Mon, 15 May 2017 20:08:01 GMT  
		Size: 11.4 MB (11442720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc67a6828ba06dc622f55a5dcedd8ec3da134a54f19d1c3b34cdeeb646fee95`  
		Last Modified: Mon, 15 May 2017 20:07:57 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea77c8611ad3707cbe0141d7b2faa315206db592590446bfc146d9be1a0ea6d`  
		Last Modified: Mon, 15 May 2017 20:08:15 GMT  
		Size: 131.1 MB (131066494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8aafd0f8ff4dbf06d1946912a55649ba6ae4d5afdf6d8dd886952642f21952`  
		Last Modified: Mon, 15 May 2017 20:07:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a158a3cddfde9dce8ae8d82bf2c5125480645c278c8c853366b9d5091ecfb2`  
		Last Modified: Mon, 15 May 2017 20:07:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7d3dd6c6bdc484b4e4836993fb74aa6cccd0308d8cc42272d5fa27f3aa7464`  
		Last Modified: Mon, 15 May 2017 20:07:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5e2f25443b6ba92068c6bea083ece1ba2c64337c33ae3400cc164997102a4`  
		Last Modified: Mon, 15 May 2017 20:07:55 GMT  
		Size: 105.4 KB (105395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ad8fa0df3f087f9e6d981cb509153461842c6fa8877e7c8e230d6dccf1b406`  
		Last Modified: Mon, 15 May 2017 20:07:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:c5beeaae94284d2fde385bc4afa397670a52945f91b1b0f47b0e4e9c50e744d0
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209794861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6bcbcd563568b9c1a5fe44328d405bcf14599c6e483f6ad54da2a6d34e140b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 20:04:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 15 May 2017 20:05:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 15 May 2017 20:05:25 GMT
ARG CB_VERSION=4.5.1
# Mon, 15 May 2017 20:05:25 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 15 May 2017 20:05:26 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Mon, 15 May 2017 20:05:27 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Mon, 15 May 2017 20:05:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 15 May 2017 20:05:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 15 May 2017 20:05:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 15 May 2017 20:05:55 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 15 May 2017 20:05:56 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 15 May 2017 20:05:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 15 May 2017 20:05:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 15 May 2017 20:06:00 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 15 May 2017 20:06:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 May 2017 20:06:02 GMT
CMD ["couchbase-server"]
# Mon, 15 May 2017 20:06:02 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 15 May 2017 20:06:04 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfd7d0f759938b785caea8aeef8afd7f6a65d67adfe59fa9a32a77e12bbe86`  
		Last Modified: Mon, 15 May 2017 20:08:01 GMT  
		Size: 11.4 MB (11442720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc67a6828ba06dc622f55a5dcedd8ec3da134a54f19d1c3b34cdeeb646fee95`  
		Last Modified: Mon, 15 May 2017 20:07:57 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea77c8611ad3707cbe0141d7b2faa315206db592590446bfc146d9be1a0ea6d`  
		Last Modified: Mon, 15 May 2017 20:08:15 GMT  
		Size: 131.1 MB (131066494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8aafd0f8ff4dbf06d1946912a55649ba6ae4d5afdf6d8dd886952642f21952`  
		Last Modified: Mon, 15 May 2017 20:07:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a158a3cddfde9dce8ae8d82bf2c5125480645c278c8c853366b9d5091ecfb2`  
		Last Modified: Mon, 15 May 2017 20:07:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7d3dd6c6bdc484b4e4836993fb74aa6cccd0308d8cc42272d5fa27f3aa7464`  
		Last Modified: Mon, 15 May 2017 20:07:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5e2f25443b6ba92068c6bea083ece1ba2c64337c33ae3400cc164997102a4`  
		Last Modified: Mon, 15 May 2017 20:07:55 GMT  
		Size: 105.4 KB (105395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ad8fa0df3f087f9e6d981cb509153461842c6fa8877e7c8e230d6dccf1b406`  
		Last Modified: Mon, 15 May 2017 20:07:54 GMT  
		Size: 277.0 B  
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
