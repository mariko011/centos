<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:3.12.1.3`](#aerospike31213)
-	[`aerospike:3.13.0.4`](#aerospike31304)
-	[`aerospike:3.14.1.2`](#aerospike31412)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:3.12.1.3`

```console
$ docker pull aerospike@sha256:10c7cb8632bf7bf7a36062cf4c953a560a9a7935bf70e475097a323674e641b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:3.12.1.3` - linux; amd64

```console
$ docker pull aerospike@sha256:0c26c4036db38bbf6f46284327ab66ce5d3bf89939aa024fe9124945d1314740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73814583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196171e6c24649f79a347912a1fcb7350f885d62aaffa4eb2ccb9a5f433a3f98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 13:46:35 GMT
ENV AEROSPIKE_VERSION=3.12.1.3
# Wed, 13 Sep 2017 13:46:36 GMT
ENV AEROSPIKE_SHA256=f72a143ea3c3daa1749923105978243679c8406f757457ec80b7577fe84c1dfc
# Wed, 13 Sep 2017 13:46:56 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Wed, 13 Sep 2017 13:46:57 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Wed, 13 Sep 2017 13:46:57 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Wed, 13 Sep 2017 13:46:57 GMT
VOLUME [/opt/aerospike/data]
# Wed, 13 Sep 2017 13:46:57 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Wed, 13 Sep 2017 13:46:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 13:46:57 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fac9d199ccdb73b641c2b7cd6b07ec14246e50aedaec9147f84cf8cb319dabe`  
		Last Modified: Wed, 13 Sep 2017 13:48:07 GMT  
		Size: 26.6 MB (26551906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf96a479929b9b252d4147be1ba0e863cfb94da41dbf0f981f9e14b4865b3e9`  
		Last Modified: Wed, 13 Sep 2017 13:47:49 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2029710c8b41a9aa0eee1ae672b30ecf032e10f64d61475252a1c106ce55e699`  
		Last Modified: Wed, 13 Sep 2017 13:47:49 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:3.13.0.4`

```console
$ docker pull aerospike@sha256:55b6837c595c4e8f795eb233510b5c5ee2338fefbbd2b8a00ad746a1557174fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:3.13.0.4` - linux; amd64

```console
$ docker pull aerospike@sha256:21c267819c1fc3aea19021d2d66f07edadbfab4312841e1e5ae2906ee08deb89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74190308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cadbafb68504c538c0e689566db1826b2c49f6f42d8639488b754b66e8c62ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 13:46:59 GMT
ENV AEROSPIKE_VERSION=3.13.0.4
# Wed, 13 Sep 2017 13:46:59 GMT
ENV AEROSPIKE_SHA256=42bdb0435270c750072d06d95a1b5dbc6bfb0c841ee8342c5c69e5b065e0c94e
# Wed, 13 Sep 2017 13:47:17 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Wed, 13 Sep 2017 13:47:17 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Wed, 13 Sep 2017 13:47:17 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Wed, 13 Sep 2017 13:47:18 GMT
VOLUME [/opt/aerospike/data]
# Wed, 13 Sep 2017 13:47:18 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Wed, 13 Sep 2017 13:47:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 13:47:18 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158832993c1e204fbc1456d28fb77391577e3fdce0b8c4cddaaeb79193c81231`  
		Last Modified: Wed, 13 Sep 2017 13:48:26 GMT  
		Size: 26.9 MB (26927631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4780f20c9eaf0efd492d9805c3840908c5825f2a0afda00671dd791e8780b487`  
		Last Modified: Wed, 13 Sep 2017 13:48:15 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9262b83a2657457ca4d2e73653c3ff4da24588e3a40146b9a8b331ea09dc2a`  
		Last Modified: Wed, 13 Sep 2017 13:48:17 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:3.14.1.2`

```console
$ docker pull aerospike@sha256:2adb15c279c1240086ff58f07d571b273b638e37b6eaafe520ec216aebf19c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:3.14.1.2` - linux; amd64

```console
$ docker pull aerospike@sha256:cb6bd78fe6d86e95b8c9fbdf447d375851a0084527201ff928ed1d43f9823997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73765457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32961d35d5b70d811c15cdfc63c0d8b6306ef54b0d2d8d7dedd6c5de21608b00`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 13:47:19 GMT
ENV AEROSPIKE_VERSION=3.14.1.2
# Wed, 13 Sep 2017 13:47:19 GMT
ENV AEROSPIKE_SHA256=c2833a4403fa5190e09804ed6515d2b16fcfd6eb4484ac73729130f5a878912c
# Wed, 13 Sep 2017 13:47:37 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Wed, 13 Sep 2017 13:47:37 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Wed, 13 Sep 2017 13:47:37 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Wed, 13 Sep 2017 13:47:37 GMT
VOLUME [/opt/aerospike/data]
# Wed, 13 Sep 2017 13:47:37 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Wed, 13 Sep 2017 13:47:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 13:47:38 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dd2dd8c287668307b7f0033c2919e922b7260e4bb8e8bd565ed6669ad5dfda`  
		Last Modified: Wed, 13 Sep 2017 13:48:42 GMT  
		Size: 26.5 MB (26502780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa4151e9902baca68597a78281fc93d7d633a56c01cf599202ed0aeaa9571c2`  
		Last Modified: Wed, 13 Sep 2017 13:48:36 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4f1cc37a05ce773f7feba2a43113f4779ff978e51c29de643b30422aec91`  
		Last Modified: Wed, 13 Sep 2017 13:48:35 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:2adb15c279c1240086ff58f07d571b273b638e37b6eaafe520ec216aebf19c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:cb6bd78fe6d86e95b8c9fbdf447d375851a0084527201ff928ed1d43f9823997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73765457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32961d35d5b70d811c15cdfc63c0d8b6306ef54b0d2d8d7dedd6c5de21608b00`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 13:47:19 GMT
ENV AEROSPIKE_VERSION=3.14.1.2
# Wed, 13 Sep 2017 13:47:19 GMT
ENV AEROSPIKE_SHA256=c2833a4403fa5190e09804ed6515d2b16fcfd6eb4484ac73729130f5a878912c
# Wed, 13 Sep 2017 13:47:37 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Wed, 13 Sep 2017 13:47:37 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Wed, 13 Sep 2017 13:47:37 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Wed, 13 Sep 2017 13:47:37 GMT
VOLUME [/opt/aerospike/data]
# Wed, 13 Sep 2017 13:47:37 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Wed, 13 Sep 2017 13:47:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 13:47:38 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dd2dd8c287668307b7f0033c2919e922b7260e4bb8e8bd565ed6669ad5dfda`  
		Last Modified: Wed, 13 Sep 2017 13:48:42 GMT  
		Size: 26.5 MB (26502780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa4151e9902baca68597a78281fc93d7d633a56c01cf599202ed0aeaa9571c2`  
		Last Modified: Wed, 13 Sep 2017 13:48:36 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4f1cc37a05ce773f7feba2a43113f4779ff978e51c29de643b30422aec91`  
		Last Modified: Wed, 13 Sep 2017 13:48:35 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
