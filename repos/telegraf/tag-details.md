<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `telegraf`

-	[`telegraf:0.12`](#telegraf012)
-	[`telegraf:0.12.0`](#telegraf0120)
-	[`telegraf:0.13`](#telegraf013)
-	[`telegraf:0.13.1`](#telegraf0131)
-	[`telegraf:latest`](#telegraflatest)
-	[`telegraf:0.13-alpine`](#telegraf013-alpine)
-	[`telegraf:0.13.1-alpine`](#telegraf0131-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:1.0.0-rc1`](#telegraf100-rc1)
-	[`telegraf:1.0.0-rc1-alpine`](#telegraf100-rc1-alpine)

## `telegraf:0.12`

```console
$ docker pull telegraf@sha256:62b7ea90f52a01583e074617945ddfce3f0e2cc9977ae22066ea529a776b1fc3
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.12` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79400830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0cbe1ff94a9efac16d3c2d88082ec3edcb640de4fb703ca642003d1e3937c3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 18:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:21:25 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 26 Aug 2016 21:21:26 GMT
ENV TELEGRAF_VERSION=0.12.0
# Fri, 26 Aug 2016 21:21:32 GMT
RUN wget -q https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf_$TELEGRAF_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     gpg --batch --verify telegraf_$TELEGRAF_VERSION-1_amd64.deb.asc telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     dpkg -i telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     rm -f telegraf_$TELEGRAF_VERSION-1_amd64.deb*
# Fri, 26 Aug 2016 21:21:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 26 Aug 2016 21:21:35 GMT
COPY file:b1f698df13c6ba0d317a807c67e49549da5cded27353d8823ce643ef2059b2bf in /entrypoint.sh
# Fri, 26 Aug 2016 21:21:36 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 21:21:37 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05be213d869408c80b817be128ba8f7d2cdd03f89f3e4df648d308af944591d`  
		Last Modified: Fri, 26 Aug 2016 20:04:02 GMT  
		Size: 4.6 MB (4599493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201868c1df4b3b8022a643f992395a8bf8de64bbeadbbdac18cb4f6477407f4e`  
		Last Modified: Fri, 26 Aug 2016 21:21:48 GMT  
		Size: 6.9 KB (6857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0f87ad9f47d87b07bc2d6e14674b8bbd21a53163bd491d7b00242bc1b181d3`  
		Last Modified: Fri, 26 Aug 2016 21:21:54 GMT  
		Size: 9.0 MB (9020559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc4028eebe002748574fc5508a6adca24eb2f906b95290f2d85dde8aeacce5c`  
		Last Modified: Fri, 26 Aug 2016 21:21:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.12.0`

```console
$ docker pull telegraf@sha256:62b7ea90f52a01583e074617945ddfce3f0e2cc9977ae22066ea529a776b1fc3
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.12.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79400830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0cbe1ff94a9efac16d3c2d88082ec3edcb640de4fb703ca642003d1e3937c3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 18:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:21:25 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 26 Aug 2016 21:21:26 GMT
ENV TELEGRAF_VERSION=0.12.0
# Fri, 26 Aug 2016 21:21:32 GMT
RUN wget -q https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf_$TELEGRAF_VERSION-1_amd64.deb.asc &&     wget -q https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     gpg --batch --verify telegraf_$TELEGRAF_VERSION-1_amd64.deb.asc telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     dpkg -i telegraf_$TELEGRAF_VERSION-1_amd64.deb &&     rm -f telegraf_$TELEGRAF_VERSION-1_amd64.deb*
# Fri, 26 Aug 2016 21:21:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 26 Aug 2016 21:21:35 GMT
COPY file:b1f698df13c6ba0d317a807c67e49549da5cded27353d8823ce643ef2059b2bf in /entrypoint.sh
# Fri, 26 Aug 2016 21:21:36 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 21:21:37 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05be213d869408c80b817be128ba8f7d2cdd03f89f3e4df648d308af944591d`  
		Last Modified: Fri, 26 Aug 2016 20:04:02 GMT  
		Size: 4.6 MB (4599493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201868c1df4b3b8022a643f992395a8bf8de64bbeadbbdac18cb4f6477407f4e`  
		Last Modified: Fri, 26 Aug 2016 21:21:48 GMT  
		Size: 6.9 KB (6857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0f87ad9f47d87b07bc2d6e14674b8bbd21a53163bd491d7b00242bc1b181d3`  
		Last Modified: Fri, 26 Aug 2016 21:21:54 GMT  
		Size: 9.0 MB (9020559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc4028eebe002748574fc5508a6adca24eb2f906b95290f2d85dde8aeacce5c`  
		Last Modified: Fri, 26 Aug 2016 21:21:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.13`

```console
$ docker pull telegraf@sha256:37ddeee3f0f3cbd5922b40c6ace16f1d6d83e8242c5269c15aca3b1fdf4bef7b
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.13` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79614779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c98a9ba807a513be97dfb77cd8f8409403618b16d7063bcf5a870d761f5170`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 18:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:21:25 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 26 Aug 2016 21:22:20 GMT
ENV TELEGRAF_VERSION=0.13.1
# Fri, 26 Aug 2016 21:22:24 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 26 Aug 2016 21:22:25 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 26 Aug 2016 21:22:27 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh
# Fri, 26 Aug 2016 21:22:35 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 21:22:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05be213d869408c80b817be128ba8f7d2cdd03f89f3e4df648d308af944591d`  
		Last Modified: Fri, 26 Aug 2016 20:04:02 GMT  
		Size: 4.6 MB (4599493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201868c1df4b3b8022a643f992395a8bf8de64bbeadbbdac18cb4f6477407f4e`  
		Last Modified: Fri, 26 Aug 2016 21:21:48 GMT  
		Size: 6.9 KB (6857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d5b4d78593ea4a96a914023e1b45352e946b5258cd5943f0fb5114da9e72e`  
		Last Modified: Fri, 26 Aug 2016 21:22:53 GMT  
		Size: 9.2 MB (9234565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1beeac4466ec02ad8cc7be8fd3fc3774a39fdff26f719d61ff1bbc0d45d96ff3`  
		Last Modified: Fri, 26 Aug 2016 21:22:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.13.1`

```console
$ docker pull telegraf@sha256:37ddeee3f0f3cbd5922b40c6ace16f1d6d83e8242c5269c15aca3b1fdf4bef7b
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.13.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79614779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c98a9ba807a513be97dfb77cd8f8409403618b16d7063bcf5a870d761f5170`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 18:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:21:25 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 26 Aug 2016 21:22:20 GMT
ENV TELEGRAF_VERSION=0.13.1
# Fri, 26 Aug 2016 21:22:24 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 26 Aug 2016 21:22:25 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 26 Aug 2016 21:22:27 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh
# Fri, 26 Aug 2016 21:22:35 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 21:22:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05be213d869408c80b817be128ba8f7d2cdd03f89f3e4df648d308af944591d`  
		Last Modified: Fri, 26 Aug 2016 20:04:02 GMT  
		Size: 4.6 MB (4599493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201868c1df4b3b8022a643f992395a8bf8de64bbeadbbdac18cb4f6477407f4e`  
		Last Modified: Fri, 26 Aug 2016 21:21:48 GMT  
		Size: 6.9 KB (6857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d5b4d78593ea4a96a914023e1b45352e946b5258cd5943f0fb5114da9e72e`  
		Last Modified: Fri, 26 Aug 2016 21:22:53 GMT  
		Size: 9.2 MB (9234565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1beeac4466ec02ad8cc7be8fd3fc3774a39fdff26f719d61ff1bbc0d45d96ff3`  
		Last Modified: Fri, 26 Aug 2016 21:22:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:37ddeee3f0f3cbd5922b40c6ace16f1d6d83e8242c5269c15aca3b1fdf4bef7b
```

-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79614779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c98a9ba807a513be97dfb77cd8f8409403618b16d7063bcf5a870d761f5170`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 18:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:21:25 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 26 Aug 2016 21:22:20 GMT
ENV TELEGRAF_VERSION=0.13.1
# Fri, 26 Aug 2016 21:22:24 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 26 Aug 2016 21:22:25 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 26 Aug 2016 21:22:27 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh
# Fri, 26 Aug 2016 21:22:35 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 21:22:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05be213d869408c80b817be128ba8f7d2cdd03f89f3e4df648d308af944591d`  
		Last Modified: Fri, 26 Aug 2016 20:04:02 GMT  
		Size: 4.6 MB (4599493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201868c1df4b3b8022a643f992395a8bf8de64bbeadbbdac18cb4f6477407f4e`  
		Last Modified: Fri, 26 Aug 2016 21:21:48 GMT  
		Size: 6.9 KB (6857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d5b4d78593ea4a96a914023e1b45352e946b5258cd5943f0fb5114da9e72e`  
		Last Modified: Fri, 26 Aug 2016 21:22:53 GMT  
		Size: 9.2 MB (9234565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1beeac4466ec02ad8cc7be8fd3fc3774a39fdff26f719d61ff1bbc0d45d96ff3`  
		Last Modified: Fri, 26 Aug 2016 21:22:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.13-alpine`

```console
$ docker pull telegraf@sha256:bc20478f864221699313c86f817091fbf8946fa2d40248241126d5d0d1f20ab4
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.13-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8930136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9590d57fd7d150539e4b86edfa30c6c7c4dd927416ec3e3c23a10b84ae5e8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 22:14:22 GMT
ENV TELEGRAF_VERSION=0.13.1
# Thu, 23 Jun 2016 22:14:37 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 23 Jun 2016 22:14:37 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 23 Jun 2016 22:14:38 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh
# Thu, 23 Jun 2016 22:14:38 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 23 Jun 2016 22:14:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a9ca73c7a6d5dc60202678d8a12060a7c6007b47a05c26ab7c3e92b41003b0`  
		Last Modified: Thu, 23 Jun 2016 22:14:48 GMT  
		Size: 6.6 MB (6619669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc1e3f952f1abf6d5b5ecd94353a72886c2f4771f7fd76036918fb929b34e45`  
		Last Modified: Thu, 23 Jun 2016 22:14:45 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:0.13.1-alpine`

```console
$ docker pull telegraf@sha256:bc20478f864221699313c86f817091fbf8946fa2d40248241126d5d0d1f20ab4
```

-	Platforms:
	-	linux; amd64

### `telegraf:0.13.1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8930136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9590d57fd7d150539e4b86edfa30c6c7c4dd927416ec3e3c23a10b84ae5e8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 22:14:22 GMT
ENV TELEGRAF_VERSION=0.13.1
# Thu, 23 Jun 2016 22:14:37 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 23 Jun 2016 22:14:37 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 23 Jun 2016 22:14:38 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh
# Thu, 23 Jun 2016 22:14:38 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 23 Jun 2016 22:14:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a9ca73c7a6d5dc60202678d8a12060a7c6007b47a05c26ab7c3e92b41003b0`  
		Last Modified: Thu, 23 Jun 2016 22:14:48 GMT  
		Size: 6.6 MB (6619669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc1e3f952f1abf6d5b5ecd94353a72886c2f4771f7fd76036918fb929b34e45`  
		Last Modified: Thu, 23 Jun 2016 22:14:45 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:bc20478f864221699313c86f817091fbf8946fa2d40248241126d5d0d1f20ab4
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8930136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9590d57fd7d150539e4b86edfa30c6c7c4dd927416ec3e3c23a10b84ae5e8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 22:14:22 GMT
ENV TELEGRAF_VERSION=0.13.1
# Thu, 23 Jun 2016 22:14:37 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 23 Jun 2016 22:14:37 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 23 Jun 2016 22:14:38 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh
# Thu, 23 Jun 2016 22:14:38 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 23 Jun 2016 22:14:39 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a9ca73c7a6d5dc60202678d8a12060a7c6007b47a05c26ab7c3e92b41003b0`  
		Last Modified: Thu, 23 Jun 2016 22:14:48 GMT  
		Size: 6.6 MB (6619669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc1e3f952f1abf6d5b5ecd94353a72886c2f4771f7fd76036918fb929b34e45`  
		Last Modified: Thu, 23 Jun 2016 22:14:45 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.0.0-rc1`

```console
$ docker pull telegraf@sha256:75958c0d5220192d0919fedade681f76feac4b4d0090cb54bee431fa330cc13b
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.0.0-rc1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81047701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ed5591c429f55a47c8ca6c22308157542b98adac4d838753cb70c1ed9d71ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 18:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:21:25 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 26 Aug 2016 21:23:34 GMT
ENV TELEGRAF_VERSION=1.0.0-rc1
# Fri, 26 Aug 2016 21:23:38 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 26 Aug 2016 21:23:39 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 26 Aug 2016 21:23:41 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh
# Fri, 26 Aug 2016 21:23:48 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 21:23:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05be213d869408c80b817be128ba8f7d2cdd03f89f3e4df648d308af944591d`  
		Last Modified: Fri, 26 Aug 2016 20:04:02 GMT  
		Size: 4.6 MB (4599493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201868c1df4b3b8022a643f992395a8bf8de64bbeadbbdac18cb4f6477407f4e`  
		Last Modified: Fri, 26 Aug 2016 21:21:48 GMT  
		Size: 6.9 KB (6857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0039a820ee93158335f5a5b602ee0cf45f49221de9390919e1e401a4dd69310c`  
		Last Modified: Fri, 26 Aug 2016 21:24:10 GMT  
		Size: 10.7 MB (10667486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6802d800dd2f90475b4dbc6b138fe72724ba8f5ddf585023a24b32de82a39864`  
		Last Modified: Fri, 26 Aug 2016 21:24:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.0.0-rc1-alpine`

```console
$ docker pull telegraf@sha256:a6040b9895aae3b7c8c182f2c5dd7926e7de522ee97b901d4140e8e69d8b163f
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.0.0-rc1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10141921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df1f2246ae1b4b9363dafc04a63a747ebdac74e849a1a332e07e4ecadf6b6da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 25 Aug 2016 19:38:24 GMT
ENV TELEGRAF_VERSION=1.0.0-rc1
# Thu, 25 Aug 2016 19:38:41 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 25 Aug 2016 19:38:42 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 25 Aug 2016 19:38:44 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh
# Thu, 25 Aug 2016 19:38:45 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 25 Aug 2016 19:38:46 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f93df90135ebf43ef9885c0f6f0ca11f1ef8dbc0cf9acdf9b7fd43f90883a9`  
		Last Modified: Thu, 25 Aug 2016 19:41:33 GMT  
		Size: 7.8 MB (7831451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430eeb4b4ddc9069338e9aa97fe29ddad3f0212c8d0a037c884c6168cebaf06e`  
		Last Modified: Thu, 25 Aug 2016 19:41:28 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
