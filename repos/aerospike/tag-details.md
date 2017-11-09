<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:3.12.1.3`](#aerospike31213)
-	[`aerospike:3.13.0.8`](#aerospike31308)
-	[`aerospike:3.14.1.5`](#aerospike31415)
-	[`aerospike:3.15.0.2`](#aerospike31502)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:3.12.1.3`

```console
$ docker pull aerospike@sha256:56a6abfbb580e64c5143d5d617317a1beda12336d58a4f4e99b15a7589cc9f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:3.12.1.3` - linux; amd64

```console
$ docker pull aerospike@sha256:a99fc846a80a1b59d20e3e86364f83d67ff88a6da2e3b9ecb07a5eedcd69d7d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74173155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c08b0e86201fae1e326408b3d89b75860ed4030658aa320ec22bbe8e8ac3da9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:13:54 GMT
ENV AEROSPIKE_VERSION=3.12.1.3
# Sat, 04 Nov 2017 19:13:54 GMT
ENV AEROSPIKE_SHA256=f72a143ea3c3daa1749923105978243679c8406f757457ec80b7577fe84c1dfc
# Sat, 04 Nov 2017 19:16:05 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Sat, 04 Nov 2017 19:16:05 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Sat, 04 Nov 2017 19:16:05 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Sat, 04 Nov 2017 19:16:06 GMT
VOLUME [/opt/aerospike/data]
# Sat, 04 Nov 2017 19:16:06 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Sat, 04 Nov 2017 19:16:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 19:16:06 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac1be72ba6a75b217b19e63ffe61d81846b739e9ba4ad674686b8049d319b5`  
		Last Modified: Sat, 04 Nov 2017 19:18:54 GMT  
		Size: 26.6 MB (26552050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c645c1d68706ca135a6ff8ab4d140f009e1bba80b286c5eff105cb7e226fac8`  
		Last Modified: Sat, 04 Nov 2017 19:18:49 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c856ccd41155500c9358ab60f247da5cbacf991caf98cf9456a4c09a32e04d3`  
		Last Modified: Sat, 04 Nov 2017 19:18:49 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:3.13.0.8`

**does not exist** (yet?)

## `aerospike:3.14.1.5`

**does not exist** (yet?)

## `aerospike:3.15.0.2`

**does not exist** (yet?)

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:979af87b91e52b844098a1e642f1070d3c3fee2e7cacbc82f60e19a2b8aa2000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:fe0a146154573e49ba5678baea8243d7e882b11ae92a7314bcd6d738b0ba1888
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74045270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a1153f191de21ced50e5052e935f2a968011f3370b47c83f50e4d1e692abb6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:18:05 GMT
ENV AEROSPIKE_VERSION=3.15.0.1
# Sat, 04 Nov 2017 19:18:05 GMT
ENV AEROSPIKE_SHA256=c3682bbab88d4b72df0e92f6b93850df01fd11deab319e10c75168a02a3ac2ec
# Sat, 04 Nov 2017 19:18:33 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Sat, 04 Nov 2017 19:18:33 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Sat, 04 Nov 2017 19:18:34 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Sat, 04 Nov 2017 19:18:34 GMT
VOLUME [/opt/aerospike/data]
# Sat, 04 Nov 2017 19:18:34 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Sat, 04 Nov 2017 19:18:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 19:18:34 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ba66818ae951b7089e5999a80552f2886b39c6e760033d4f18408f14b89539`  
		Last Modified: Sat, 04 Nov 2017 19:19:42 GMT  
		Size: 26.4 MB (26424167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db72914a7950967385fa943ba39e03c8543aee9789b57a67b07bb96f18a9b7ca`  
		Last Modified: Sat, 04 Nov 2017 19:19:37 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e537787e6149576c3a8c4dc46e24ebc56a438d340b946c92ece8700e1a60fc41`  
		Last Modified: Sat, 04 Nov 2017 19:19:38 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
