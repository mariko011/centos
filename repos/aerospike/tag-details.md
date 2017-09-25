<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:3.12.1.3`](#aerospike31213)
-	[`aerospike:3.13.0.7`](#aerospike31307)
-	[`aerospike:3.14.1.4`](#aerospike31414)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:3.12.1.3`

```console
$ docker pull aerospike@sha256:a1053a979947ccd1f056c7a33b30eedf5277c9052b29cf3c6635817af1394817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:3.12.1.3` - linux; amd64

```console
$ docker pull aerospike@sha256:179639b007e3d845fcecc4d9f7d5254fc0bce10e4b4399ecd4c03417df71665a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74092158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e305518bb7012192841f57eac43eca4d96744cf03fde1953d2a6584d1730e77`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:02:55 GMT
ENV AEROSPIKE_VERSION=3.12.1.3
# Tue, 19 Sep 2017 00:02:56 GMT
ENV AEROSPIKE_SHA256=f72a143ea3c3daa1749923105978243679c8406f757457ec80b7577fe84c1dfc
# Tue, 19 Sep 2017 00:03:14 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Tue, 19 Sep 2017 00:03:14 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Tue, 19 Sep 2017 00:03:14 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Tue, 19 Sep 2017 00:03:14 GMT
VOLUME [/opt/aerospike/data]
# Tue, 19 Sep 2017 00:03:15 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Tue, 19 Sep 2017 00:03:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 00:03:15 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2298b3e1b6d6f1800cc877a2c124b10cc1215a40d380cc7f6eb86911c7e872`  
		Last Modified: Tue, 19 Sep 2017 00:04:30 GMT  
		Size: 26.6 MB (26551936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b048d0e8746923c556c36c3497e771404145679442b7b2a96db889d639a1ffe`  
		Last Modified: Tue, 19 Sep 2017 00:04:25 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d85c3e5f6809d9d6646d4cab04632d039702016495c00f81c07f54b24098b`  
		Last Modified: Tue, 19 Sep 2017 00:04:24 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:3.13.0.7`

**does not exist** (yet?)

## `aerospike:3.14.1.4`

**does not exist** (yet?)

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:9c4f56cc5459859d225d3b4a7cb003da78c6651da332eba98dbf21d0f6971b87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:93658f46ef93ab1be6d8fc6fd127a6d8ea0c9cf3a2f1d4455c0750911be042ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74043059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852adac773a634c3a7129ddfe90d7443ceab677565aad0d37fcf40dfaea50f85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:03:54 GMT
ENV AEROSPIKE_VERSION=3.14.1.2
# Tue, 19 Sep 2017 00:03:54 GMT
ENV AEROSPIKE_SHA256=c2833a4403fa5190e09804ed6515d2b16fcfd6eb4484ac73729130f5a878912c
# Tue, 19 Sep 2017 00:04:14 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Tue, 19 Sep 2017 00:04:14 GMT
COPY file:015e7cfae2aecd83035dfeb481a9485d5775175ecb59889f2b8f745c1ef60573 in /etc/aerospike/aerospike.conf 
# Tue, 19 Sep 2017 00:04:15 GMT
COPY file:864c89768f1d8390ee09d6490761795af49940cf8cbb62effbf84317a4e61cd2 in /entrypoint.sh 
# Tue, 19 Sep 2017 00:04:15 GMT
VOLUME [/opt/aerospike/data]
# Tue, 19 Sep 2017 00:04:15 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Tue, 19 Sep 2017 00:04:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Sep 2017 00:04:15 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26e7553ddbf39b620b3af93aa8d9c988ffefa47d9b42db53001644f500ad655`  
		Last Modified: Tue, 19 Sep 2017 00:05:00 GMT  
		Size: 26.5 MB (26502838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf248efe62c689836f83c72a8e8f37310c38507cfc15666e46e5bcd82056db75`  
		Last Modified: Tue, 19 Sep 2017 00:04:55 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075a6ecbff69f23762aea0c5fc9a7ae4decdbf9d7c1861a125ef40f6b2a4a4a0`  
		Last Modified: Tue, 19 Sep 2017 00:04:56 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
