<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `aerospike`

-	[`aerospike:3.9.1.1`](#aerospike3911)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:3.9.1.1`

```console
$ docker pull aerospike@sha256:98ede3e4dbe29c75e43631e04e4fd7a7d597629e531c071d50d3c32495b451b6
```

-	Platforms:
	-	linux; amd64

### `aerospike:3.9.1.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68897589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a5563a44fe0c7226108d80f6d8c875185cf948253edfa496b533b7bcf82261`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 26 Aug 2016 18:50:09 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in /
# Fri, 26 Aug 2016 18:50:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:50:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:50:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:50:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:50:27 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 19:54:14 GMT
ENV AEROSPIKE_VERSION=3.9.1
# Fri, 26 Aug 2016 19:54:15 GMT
ENV AEROSPIKE_SHA256=7bb3236d478559cc19658b87cb5877aa023dba7d5dd788c89b7cf75cad3fdf89
# Fri, 26 Aug 2016 19:55:05 GMT
RUN apt-get update -y   &&  apt-get install -y wget python logrotate ca-certificates   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*
# Fri, 26 Aug 2016 19:55:07 GMT
COPY file:093d7a00aab96cb51e62585206fdff0b1b8ad319574f6d5ef61e515e761c9c0f in /etc/aerospike/aerospike.conf
# Fri, 26 Aug 2016 19:55:08 GMT
COPY file:ae9470d86ba973bb1d9911d608b000e6da810777ec7bb4e93d778fdbdeae4501 in /entrypoint.sh
# Fri, 26 Aug 2016 19:55:10 GMT
VOLUME [/opt/aerospike/data]
# Fri, 26 Aug 2016 19:55:11 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Fri, 26 Aug 2016 19:55:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 19:55:13 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82659f8f1b7628b94f8919ece229321a16ec0b7139cf289e010b7c064f603516`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19118ca682dcd394eeed77409fbac93d9fa94c0bcff633344dc0a71ead74a66`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8296858250fed454169c737c0706958c8a4a130e0bfdca3cf869fa767a19b4f1`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e0251a0e2ccc2fedbdf51dd44f851622f504c7ddfad56ce0f1c63e1101cb20`  
		Last Modified: Fri, 26 Aug 2016 18:55:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e490bec95716d045901d48f15442cbe4719b32d67ee4ee47ae1e14247dc9eb9`  
		Last Modified: Fri, 26 Aug 2016 19:55:35 GMT  
		Size: 19.2 MB (19161535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e501ffe4c61af0c05fa31fa0f2f4a756412f5192823bfe0f9922237f3c7f285e`  
		Last Modified: Fri, 26 Aug 2016 19:55:27 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65277404a8ca1868404475ee0b8da66e512ac3ff6cad89756c9a0e6c86733a71`  
		Last Modified: Fri, 26 Aug 2016 19:55:27 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:98ede3e4dbe29c75e43631e04e4fd7a7d597629e531c071d50d3c32495b451b6
```

-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68897589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a5563a44fe0c7226108d80f6d8c875185cf948253edfa496b533b7bcf82261`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 26 Aug 2016 18:50:09 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in /
# Fri, 26 Aug 2016 18:50:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:50:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:50:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:50:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:50:27 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 19:54:14 GMT
ENV AEROSPIKE_VERSION=3.9.1
# Fri, 26 Aug 2016 19:54:15 GMT
ENV AEROSPIKE_SHA256=7bb3236d478559cc19658b87cb5877aa023dba7d5dd788c89b7cf75cad3fdf89
# Fri, 26 Aug 2016 19:55:05 GMT
RUN apt-get update -y   &&  apt-get install -y wget python logrotate ca-certificates   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*
# Fri, 26 Aug 2016 19:55:07 GMT
COPY file:093d7a00aab96cb51e62585206fdff0b1b8ad319574f6d5ef61e515e761c9c0f in /etc/aerospike/aerospike.conf
# Fri, 26 Aug 2016 19:55:08 GMT
COPY file:ae9470d86ba973bb1d9911d608b000e6da810777ec7bb4e93d778fdbdeae4501 in /entrypoint.sh
# Fri, 26 Aug 2016 19:55:10 GMT
VOLUME [/opt/aerospike/data]
# Fri, 26 Aug 2016 19:55:11 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Fri, 26 Aug 2016 19:55:12 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 19:55:13 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82659f8f1b7628b94f8919ece229321a16ec0b7139cf289e010b7c064f603516`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19118ca682dcd394eeed77409fbac93d9fa94c0bcff633344dc0a71ead74a66`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8296858250fed454169c737c0706958c8a4a130e0bfdca3cf869fa767a19b4f1`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e0251a0e2ccc2fedbdf51dd44f851622f504c7ddfad56ce0f1c63e1101cb20`  
		Last Modified: Fri, 26 Aug 2016 18:55:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e490bec95716d045901d48f15442cbe4719b32d67ee4ee47ae1e14247dc9eb9`  
		Last Modified: Fri, 26 Aug 2016 19:55:35 GMT  
		Size: 19.2 MB (19161535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e501ffe4c61af0c05fa31fa0f2f4a756412f5192823bfe0f9922237f3c7f285e`  
		Last Modified: Fri, 26 Aug 2016 19:55:27 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65277404a8ca1868404475ee0b8da66e512ac3ff6cad89756c9a0e6c86733a71`  
		Last Modified: Fri, 26 Aug 2016 19:55:27 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
