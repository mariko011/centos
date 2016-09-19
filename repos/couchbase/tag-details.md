<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:latest`](#couchbaselatest)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:4.5.0`](#couchbase450)
-	[`couchbase:enterprise-4.5.0`](#couchbaseenterprise-450)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.1.0`](#couchbasecommunity-410)
-	[`couchbase:3.1.6`](#couchbase316)
-	[`couchbase:enterprise-3.1.6`](#couchbaseenterprise-316)
-	[`couchbase:community-3.1.3`](#couchbasecommunity-313)

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:e25a20a9c0c30ffdd9e81279bc6553d1431b857728fe5886cf110c7e163eef82
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208003305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4606a18f237de4f51976d7d6b63f7dd7a17c39cd931dac30b9f13e39bef31ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:16:59 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Sep 2016 17:17:22 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Sep 2016 17:17:24 GMT
ENV CB_VERSION=4.5.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb CB_SHA256=441398302210c0d73f27bdab741b471fc9da116bf45f521b314345f04560716e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Sep 2016 17:17:25 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Sep 2016 17:17:52 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Sep 2016 17:17:54 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Sep 2016 17:17:57 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Sep 2016 17:17:58 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Mon, 19 Sep 2016 17:17:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 17:17:59 GMT
CMD ["couchbase-server"]
# Mon, 19 Sep 2016 17:17:59 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 19 Sep 2016 17:17:59 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4627c3b792e2bb5539d72dc0ca04505ff48e8323c2af611e40d79644eebb1a5`  
		Last Modified: Mon, 19 Sep 2016 17:18:12 GMT  
		Size: 11.3 MB (11255454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cfeff25a5e92be0b15671fbfce8711fe2a6827e33c34004e80288e925c1fc4`  
		Last Modified: Mon, 19 Sep 2016 17:18:08 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f00cc892cad6c9ffad15c44e3354e78673d3226a40d21b72a25937f2c32d9d`  
		Last Modified: Mon, 19 Sep 2016 17:18:44 GMT  
		Size: 130.9 MB (130872047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba3b27c9bd20a6bc24707e7bcbdf61fbad78c6fce8b5b61a9d4e66408e42f58`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523e409a642f40bd57bae94dd77551d1b110f1b28219a8b8a54e02408a394d61`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691d3dacf1d684781f8eff388fb7d92efca9a9f91576738bf133b3397eda56d`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a6845de6e88005ebdd09d0c5913aa1ccbfff5e26ae589c3288f0c3fb8db845`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 99.1 KB (99102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b35e46e954ee43750a99d97e1cc4ac9ac053a07accfdcea79b430ea2eb0dd55`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:e25a20a9c0c30ffdd9e81279bc6553d1431b857728fe5886cf110c7e163eef82
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208003305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4606a18f237de4f51976d7d6b63f7dd7a17c39cd931dac30b9f13e39bef31ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:16:59 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Sep 2016 17:17:22 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Sep 2016 17:17:24 GMT
ENV CB_VERSION=4.5.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb CB_SHA256=441398302210c0d73f27bdab741b471fc9da116bf45f521b314345f04560716e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Sep 2016 17:17:25 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Sep 2016 17:17:52 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Sep 2016 17:17:54 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Sep 2016 17:17:57 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Sep 2016 17:17:58 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Mon, 19 Sep 2016 17:17:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 17:17:59 GMT
CMD ["couchbase-server"]
# Mon, 19 Sep 2016 17:17:59 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 19 Sep 2016 17:17:59 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4627c3b792e2bb5539d72dc0ca04505ff48e8323c2af611e40d79644eebb1a5`  
		Last Modified: Mon, 19 Sep 2016 17:18:12 GMT  
		Size: 11.3 MB (11255454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cfeff25a5e92be0b15671fbfce8711fe2a6827e33c34004e80288e925c1fc4`  
		Last Modified: Mon, 19 Sep 2016 17:18:08 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f00cc892cad6c9ffad15c44e3354e78673d3226a40d21b72a25937f2c32d9d`  
		Last Modified: Mon, 19 Sep 2016 17:18:44 GMT  
		Size: 130.9 MB (130872047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba3b27c9bd20a6bc24707e7bcbdf61fbad78c6fce8b5b61a9d4e66408e42f58`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523e409a642f40bd57bae94dd77551d1b110f1b28219a8b8a54e02408a394d61`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691d3dacf1d684781f8eff388fb7d92efca9a9f91576738bf133b3397eda56d`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a6845de6e88005ebdd09d0c5913aa1ccbfff5e26ae589c3288f0c3fb8db845`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 99.1 KB (99102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b35e46e954ee43750a99d97e1cc4ac9ac053a07accfdcea79b430ea2eb0dd55`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:4.5.0`

```console
$ docker pull couchbase@sha256:e25a20a9c0c30ffdd9e81279bc6553d1431b857728fe5886cf110c7e163eef82
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208003305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4606a18f237de4f51976d7d6b63f7dd7a17c39cd931dac30b9f13e39bef31ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:16:59 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Sep 2016 17:17:22 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Sep 2016 17:17:24 GMT
ENV CB_VERSION=4.5.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb CB_SHA256=441398302210c0d73f27bdab741b471fc9da116bf45f521b314345f04560716e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Sep 2016 17:17:25 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Sep 2016 17:17:52 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Sep 2016 17:17:54 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Sep 2016 17:17:57 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Sep 2016 17:17:58 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Mon, 19 Sep 2016 17:17:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 17:17:59 GMT
CMD ["couchbase-server"]
# Mon, 19 Sep 2016 17:17:59 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 19 Sep 2016 17:17:59 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4627c3b792e2bb5539d72dc0ca04505ff48e8323c2af611e40d79644eebb1a5`  
		Last Modified: Mon, 19 Sep 2016 17:18:12 GMT  
		Size: 11.3 MB (11255454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cfeff25a5e92be0b15671fbfce8711fe2a6827e33c34004e80288e925c1fc4`  
		Last Modified: Mon, 19 Sep 2016 17:18:08 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f00cc892cad6c9ffad15c44e3354e78673d3226a40d21b72a25937f2c32d9d`  
		Last Modified: Mon, 19 Sep 2016 17:18:44 GMT  
		Size: 130.9 MB (130872047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba3b27c9bd20a6bc24707e7bcbdf61fbad78c6fce8b5b61a9d4e66408e42f58`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523e409a642f40bd57bae94dd77551d1b110f1b28219a8b8a54e02408a394d61`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691d3dacf1d684781f8eff388fb7d92efca9a9f91576738bf133b3397eda56d`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a6845de6e88005ebdd09d0c5913aa1ccbfff5e26ae589c3288f0c3fb8db845`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 99.1 KB (99102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b35e46e954ee43750a99d97e1cc4ac9ac053a07accfdcea79b430ea2eb0dd55`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.5.0`

```console
$ docker pull couchbase@sha256:e25a20a9c0c30ffdd9e81279bc6553d1431b857728fe5886cf110c7e163eef82
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208003305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4606a18f237de4f51976d7d6b63f7dd7a17c39cd931dac30b9f13e39bef31ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:16:59 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Sep 2016 17:17:22 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Sep 2016 17:17:24 GMT
ENV CB_VERSION=4.5.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_4.5.0-ubuntu14.04_amd64.deb CB_SHA256=441398302210c0d73f27bdab741b471fc9da116bf45f521b314345f04560716e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Sep 2016 17:17:25 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Sep 2016 17:17:52 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Mon, 19 Sep 2016 17:17:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Sep 2016 17:17:54 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Sep 2016 17:17:57 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Sep 2016 17:17:58 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Mon, 19 Sep 2016 17:17:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 17:17:59 GMT
CMD ["couchbase-server"]
# Mon, 19 Sep 2016 17:17:59 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 19 Sep 2016 17:17:59 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4627c3b792e2bb5539d72dc0ca04505ff48e8323c2af611e40d79644eebb1a5`  
		Last Modified: Mon, 19 Sep 2016 17:18:12 GMT  
		Size: 11.3 MB (11255454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cfeff25a5e92be0b15671fbfce8711fe2a6827e33c34004e80288e925c1fc4`  
		Last Modified: Mon, 19 Sep 2016 17:18:08 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f00cc892cad6c9ffad15c44e3354e78673d3226a40d21b72a25937f2c32d9d`  
		Last Modified: Mon, 19 Sep 2016 17:18:44 GMT  
		Size: 130.9 MB (130872047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba3b27c9bd20a6bc24707e7bcbdf61fbad78c6fce8b5b61a9d4e66408e42f58`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523e409a642f40bd57bae94dd77551d1b110f1b28219a8b8a54e02408a394d61`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691d3dacf1d684781f8eff388fb7d92efca9a9f91576738bf133b3397eda56d`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a6845de6e88005ebdd09d0c5913aa1ccbfff5e26ae589c3288f0c3fb8db845`  
		Last Modified: Mon, 19 Sep 2016 17:18:06 GMT  
		Size: 99.1 KB (99102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b35e46e954ee43750a99d97e1cc4ac9ac053a07accfdcea79b430ea2eb0dd55`  
		Last Modified: Mon, 19 Sep 2016 17:18:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:e159e05faf91e504c90489255d00939925f614f9431eb87b5fccffb0553dbe10
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164370078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2776f208ea990841db3c599b4267b71cd25d7cfc98d1380e411885edf52e5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:16:59 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Sep 2016 17:17:22 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Sep 2016 17:19:22 GMT
ENV CB_VERSION=4.1.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Sep 2016 17:19:23 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Sep 2016 17:19:42 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Sep 2016 17:19:45 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Mon, 19 Sep 2016 17:19:45 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Sep 2016 17:19:46 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Sep 2016 17:19:47 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Sep 2016 17:19:47 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Mon, 19 Sep 2016 17:19:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 17:19:47 GMT
CMD ["couchbase-server"]
# Mon, 19 Sep 2016 17:19:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 19 Sep 2016 17:19:48 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4627c3b792e2bb5539d72dc0ca04505ff48e8323c2af611e40d79644eebb1a5`  
		Last Modified: Mon, 19 Sep 2016 17:18:12 GMT  
		Size: 11.3 MB (11255454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2a32c3232cfb6e30ca2a3f4a863692616739d6f31f0e8dd1f4750980ca2ada`  
		Last Modified: Mon, 19 Sep 2016 17:19:57 GMT  
		Size: 1.9 KB (1852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d77e4ea6c966fd59b722f300cc847d24c86e27c86c7cbe5700f904209f5bea`  
		Last Modified: Mon, 19 Sep 2016 17:20:21 GMT  
		Size: 87.2 MB (87238835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1684427e91b401786d96e618ed538a9275eac8dc69cc87464427982ecd15afa`  
		Last Modified: Mon, 19 Sep 2016 17:19:54 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591f130527e7df8bca5d6748a25bee1969f085c15429d21c6254e5847ff6e261`  
		Last Modified: Mon, 19 Sep 2016 17:19:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bcd6ca808ee61f110f76573720c4a17540d76ffec7a73085789c6a5e4af70d`  
		Last Modified: Mon, 19 Sep 2016 17:19:54 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefcb21bb22ab92fbe96cb3991658ddf3493622cd420a95467a3844bd87d601`  
		Last Modified: Mon, 19 Sep 2016 17:19:56 GMT  
		Size: 99.1 KB (99105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40a86342bf5001e40d9983c6fc571535d7412c34e22386281b09bb20c86b3ee`  
		Last Modified: Mon, 19 Sep 2016 17:19:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.1.0`

```console
$ docker pull couchbase@sha256:e159e05faf91e504c90489255d00939925f614f9431eb87b5fccffb0553dbe10
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164370078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2776f208ea990841db3c599b4267b71cd25d7cfc98d1380e411885edf52e5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:16:59 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 19 Sep 2016 17:17:22 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 19 Sep 2016 17:19:22 GMT
ENV CB_VERSION=4.1.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 19 Sep 2016 17:19:23 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 19 Sep 2016 17:19:42 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 19 Sep 2016 17:19:45 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Mon, 19 Sep 2016 17:19:45 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 19 Sep 2016 17:19:46 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 19 Sep 2016 17:19:47 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 19 Sep 2016 17:19:47 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Mon, 19 Sep 2016 17:19:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 17:19:47 GMT
CMD ["couchbase-server"]
# Mon, 19 Sep 2016 17:19:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 19 Sep 2016 17:19:48 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4627c3b792e2bb5539d72dc0ca04505ff48e8323c2af611e40d79644eebb1a5`  
		Last Modified: Mon, 19 Sep 2016 17:18:12 GMT  
		Size: 11.3 MB (11255454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2a32c3232cfb6e30ca2a3f4a863692616739d6f31f0e8dd1f4750980ca2ada`  
		Last Modified: Mon, 19 Sep 2016 17:19:57 GMT  
		Size: 1.9 KB (1852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d77e4ea6c966fd59b722f300cc847d24c86e27c86c7cbe5700f904209f5bea`  
		Last Modified: Mon, 19 Sep 2016 17:20:21 GMT  
		Size: 87.2 MB (87238835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1684427e91b401786d96e618ed538a9275eac8dc69cc87464427982ecd15afa`  
		Last Modified: Mon, 19 Sep 2016 17:19:54 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591f130527e7df8bca5d6748a25bee1969f085c15429d21c6254e5847ff6e261`  
		Last Modified: Mon, 19 Sep 2016 17:19:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bcd6ca808ee61f110f76573720c4a17540d76ffec7a73085789c6a5e4af70d`  
		Last Modified: Mon, 19 Sep 2016 17:19:54 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefcb21bb22ab92fbe96cb3991658ddf3493622cd420a95467a3844bd87d601`  
		Last Modified: Mon, 19 Sep 2016 17:19:56 GMT  
		Size: 99.1 KB (99105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40a86342bf5001e40d9983c6fc571535d7412c34e22386281b09bb20c86b3ee`  
		Last Modified: Mon, 19 Sep 2016 17:19:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:3.1.6`

```console
$ docker pull couchbase@sha256:ba4157d07e826e2460c35210a0e5a27ea3658b9efa9c1a30d5a87c0a08cfc1a3
```

-	Platforms:
	-	linux; amd64

### `couchbase:3.1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271969053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15fa9617bd6ee0a45915105eff685ac6acb84d2fe2ebec5c46007a918c353e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:18:10 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 30 Aug 2016 18:18:28 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 30 Aug 2016 18:18:28 GMT
ENV CB_VERSION=3.1.6 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 30 Aug 2016 18:18:29 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 30 Aug 2016 18:19:01 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 30 Aug 2016 18:19:03 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Tue, 30 Aug 2016 18:19:03 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 30 Aug 2016 18:19:04 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 30 Aug 2016 18:19:05 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 30 Aug 2016 18:19:06 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Tue, 30 Aug 2016 18:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:19:06 GMT
CMD ["couchbase-server"]
# Tue, 30 Aug 2016 18:19:06 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 30 Aug 2016 18:19:07 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38854bb595ed3edd84a3636a43dbe8f3c6450d360f767ce31a52b7e1ac060f83`  
		Last Modified: Mon, 19 Sep 2016 17:14:27 GMT  
		Size: 9.5 MB (9470261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca3ef2bfe1495317d21bdf588cc7da152b838358d99b0b7dba7396c0cf193ce`  
		Last Modified: Mon, 19 Sep 2016 17:14:19 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346646773f8e397a77d72478755b5b93464af55e3e25bc7f961f8ecbf37e0329`  
		Last Modified: Mon, 19 Sep 2016 17:15:22 GMT  
		Size: 213.1 MB (213079537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194c23b974f6498042cf19afe17a98eb3af99371daefd1291bc787097ac8cb36`  
		Last Modified: Mon, 19 Sep 2016 17:14:16 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fa70826134bc4d85872f12bb9a3dbb8d95fc59ad823609dccb517d18716e60`  
		Last Modified: Mon, 19 Sep 2016 17:14:16 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2c6760ab4bb6ca3b9d82cc79185c667cb959b38b7db0f51030237a111b1f8b`  
		Last Modified: Mon, 19 Sep 2016 17:14:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985a5331cd622a066a0fa5427fe41c8f04802e6e3bf5fad2a0145e21e4c0da36`  
		Last Modified: Mon, 19 Sep 2016 17:14:20 GMT  
		Size: 10.3 MB (10275427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be3c8bea0850d7025167fa23316b0df755da07f11e36f242efdc867470c5d94`  
		Last Modified: Mon, 19 Sep 2016 17:14:22 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-3.1.6`

```console
$ docker pull couchbase@sha256:ba4157d07e826e2460c35210a0e5a27ea3658b9efa9c1a30d5a87c0a08cfc1a3
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-3.1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271969053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15fa9617bd6ee0a45915105eff685ac6acb84d2fe2ebec5c46007a918c353e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:18:10 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 30 Aug 2016 18:18:28 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 30 Aug 2016 18:18:28 GMT
ENV CB_VERSION=3.1.6 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 30 Aug 2016 18:18:29 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 30 Aug 2016 18:19:01 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 30 Aug 2016 18:19:03 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Tue, 30 Aug 2016 18:19:03 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 30 Aug 2016 18:19:04 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 30 Aug 2016 18:19:05 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 30 Aug 2016 18:19:06 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Tue, 30 Aug 2016 18:19:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:19:06 GMT
CMD ["couchbase-server"]
# Tue, 30 Aug 2016 18:19:06 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 30 Aug 2016 18:19:07 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38854bb595ed3edd84a3636a43dbe8f3c6450d360f767ce31a52b7e1ac060f83`  
		Last Modified: Mon, 19 Sep 2016 17:14:27 GMT  
		Size: 9.5 MB (9470261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca3ef2bfe1495317d21bdf588cc7da152b838358d99b0b7dba7396c0cf193ce`  
		Last Modified: Mon, 19 Sep 2016 17:14:19 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346646773f8e397a77d72478755b5b93464af55e3e25bc7f961f8ecbf37e0329`  
		Last Modified: Mon, 19 Sep 2016 17:15:22 GMT  
		Size: 213.1 MB (213079537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194c23b974f6498042cf19afe17a98eb3af99371daefd1291bc787097ac8cb36`  
		Last Modified: Mon, 19 Sep 2016 17:14:16 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fa70826134bc4d85872f12bb9a3dbb8d95fc59ad823609dccb517d18716e60`  
		Last Modified: Mon, 19 Sep 2016 17:14:16 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2c6760ab4bb6ca3b9d82cc79185c667cb959b38b7db0f51030237a111b1f8b`  
		Last Modified: Mon, 19 Sep 2016 17:14:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985a5331cd622a066a0fa5427fe41c8f04802e6e3bf5fad2a0145e21e4c0da36`  
		Last Modified: Mon, 19 Sep 2016 17:14:20 GMT  
		Size: 10.3 MB (10275427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be3c8bea0850d7025167fa23316b0df755da07f11e36f242efdc867470c5d94`  
		Last Modified: Mon, 19 Sep 2016 17:14:22 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:8591d94b590cb963226522e91f1b5af1417580cd0e283567f310c5adef6f0e07
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272059393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d326bbda57d15d21a03db943910b82a9ecc38b1cae2a8f2b149829f35dfd5bfb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:18:10 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 30 Aug 2016 18:18:28 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 30 Aug 2016 18:19:07 GMT
ENV CB_VERSION=3.1.3 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 30 Aug 2016 18:19:08 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 30 Aug 2016 18:19:48 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 30 Aug 2016 18:19:51 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Tue, 30 Aug 2016 18:19:52 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 30 Aug 2016 18:19:53 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 30 Aug 2016 18:19:54 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 30 Aug 2016 18:19:55 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Tue, 30 Aug 2016 18:19:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:19:55 GMT
CMD ["couchbase-server"]
# Tue, 30 Aug 2016 18:19:55 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 30 Aug 2016 18:19:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38854bb595ed3edd84a3636a43dbe8f3c6450d360f767ce31a52b7e1ac060f83`  
		Last Modified: Mon, 19 Sep 2016 17:14:27 GMT  
		Size: 9.5 MB (9470261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed3585641fce9d64f6cf4071bef26a300cfac3336d9e2d062a4b521f9e6fe1c`  
		Last Modified: Mon, 19 Sep 2016 17:15:47 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a025672e11dfa17112591ac9f8479852deab3a5830d6bb8c3d392db677f284`  
		Last Modified: Mon, 19 Sep 2016 17:16:49 GMT  
		Size: 213.2 MB (213169902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa3c91f7f4b683a9df1478dbb13679bf5b83e410b1cc6bee9a00c2f4c2677e`  
		Last Modified: Mon, 19 Sep 2016 17:15:44 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df74b9d0fd1d4646c2bc42dcb717c3ebc51f1ffce6c03d4b16c655fc043559a1`  
		Last Modified: Mon, 19 Sep 2016 17:15:44 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d856d242423c93bb0ecdbb72cbfd5d908ebd340f08c78e9ce1c182dd2faf72`  
		Last Modified: Mon, 19 Sep 2016 17:15:44 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cfb45fe4f5362563129a50c098453c0201a2d3e88e8948b0aa1a3976f8e6b1`  
		Last Modified: Mon, 19 Sep 2016 17:15:49 GMT  
		Size: 10.3 MB (10275403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5927bf243c887f4355001b9f007575fc2e4f24848f785828303a6a7097d5bc`  
		Last Modified: Mon, 19 Sep 2016 17:15:46 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
