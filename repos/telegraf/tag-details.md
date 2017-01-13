<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.0`](#telegraf10)
-	[`telegraf:1.0.1`](#telegraf101)
-	[`telegraf:1.0-alpine`](#telegraf10-alpine)
-	[`telegraf:1.0.1-alpine`](#telegraf101-alpine)
-	[`telegraf:1.1`](#telegraf11)
-	[`telegraf:1.1.2`](#telegraf112)
-	[`telegraf:latest`](#telegraflatest)
-	[`telegraf:1.1-alpine`](#telegraf11-alpine)
-	[`telegraf:1.1.2-alpine`](#telegraf112-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:1.2.0-rc1`](#telegraf120-rc1)
-	[`telegraf:1.2.0-rc1-alpine`](#telegraf120-rc1-alpine)

## `telegraf:1.0`

```console
$ docker pull telegraf@sha256:71b2b6a8846ed889da3a44a14457499db3c7d0a347033a0d19c238a40a5d98c3
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81041536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946f973a905b4aec876e03f2a5635e1010be62294c57076825f08fc962e80f04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:40:44 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 16 Dec 2016 03:40:44 GMT
ENV TELEGRAF_VERSION=1.0.1
# Fri, 16 Dec 2016 03:40:50 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 16 Dec 2016 03:40:50 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Dec 2016 03:40:51 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Dec 2016 03:40:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2016 03:40:51 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac7afb70f44908c74f2e798fa07e77a8386906697ca147ca8497085206e31be`  
		Last Modified: Thu, 15 Dec 2016 19:41:07 GMT  
		Size: 4.6 MB (4599915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6ea70bc98bcc6045d90a6afeb33e68c5181f92a00e603eceea7654ae0f70d`  
		Last Modified: Wed, 21 Dec 2016 20:25:44 GMT  
		Size: 6.9 KB (6851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b46041083372c6b479973b236cd266fd48b79800a7c31c73021b95180cb2df`  
		Last Modified: Wed, 21 Dec 2016 20:25:47 GMT  
		Size: 10.7 MB (10667627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700955a6db8b6586c0db7ae5cea37451d953070657703679b709540cded85ab9`  
		Last Modified: Wed, 21 Dec 2016 20:25:43 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.0.1`

```console
$ docker pull telegraf@sha256:71b2b6a8846ed889da3a44a14457499db3c7d0a347033a0d19c238a40a5d98c3
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.0.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81041536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946f973a905b4aec876e03f2a5635e1010be62294c57076825f08fc962e80f04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:40:44 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 16 Dec 2016 03:40:44 GMT
ENV TELEGRAF_VERSION=1.0.1
# Fri, 16 Dec 2016 03:40:50 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 16 Dec 2016 03:40:50 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Dec 2016 03:40:51 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Dec 2016 03:40:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2016 03:40:51 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac7afb70f44908c74f2e798fa07e77a8386906697ca147ca8497085206e31be`  
		Last Modified: Thu, 15 Dec 2016 19:41:07 GMT  
		Size: 4.6 MB (4599915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6ea70bc98bcc6045d90a6afeb33e68c5181f92a00e603eceea7654ae0f70d`  
		Last Modified: Wed, 21 Dec 2016 20:25:44 GMT  
		Size: 6.9 KB (6851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b46041083372c6b479973b236cd266fd48b79800a7c31c73021b95180cb2df`  
		Last Modified: Wed, 21 Dec 2016 20:25:47 GMT  
		Size: 10.7 MB (10667627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700955a6db8b6586c0db7ae5cea37451d953070657703679b709540cded85ab9`  
		Last Modified: Wed, 21 Dec 2016 20:25:43 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.0-alpine`

```console
$ docker pull telegraf@sha256:0a59b781a086f0e09d6dbf0ea600d2073411d41ee591129640f04ec243d4fe22
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10496511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661a3380cbf46a0b0dd408ed065d5f88159e750475041d785c001047edf80a04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:04:34 GMT
ENV TELEGRAF_VERSION=1.0.1
# Tue, 27 Dec 2016 22:04:46 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 27 Dec 2016 22:04:55 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 22:04:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 27 Dec 2016 22:04:59 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 27 Dec 2016 22:05:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 22:05:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5a7de4841b0ea4d605ba377d7e89d439bc3598f4ffb8b63970e1f68ac001aa`  
		Last Modified: Tue, 27 Dec 2016 22:23:10 GMT  
		Size: 344.0 KB (343976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29191b92622baa81720f486aded05f2a7f5da54513a05113f636092a36eead5c`  
		Last Modified: Tue, 27 Dec 2016 22:23:14 GMT  
		Size: 7.8 MB (7839264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e18960557af577378996a77285981712a835355511ecd46f1aee96f4aed4812`  
		Last Modified: Tue, 27 Dec 2016 22:23:09 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.0.1-alpine`

```console
$ docker pull telegraf@sha256:0a59b781a086f0e09d6dbf0ea600d2073411d41ee591129640f04ec243d4fe22
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.0.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10496511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661a3380cbf46a0b0dd408ed065d5f88159e750475041d785c001047edf80a04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:04:34 GMT
ENV TELEGRAF_VERSION=1.0.1
# Tue, 27 Dec 2016 22:04:46 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 27 Dec 2016 22:04:55 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 27 Dec 2016 22:04:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 27 Dec 2016 22:04:59 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 27 Dec 2016 22:05:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Dec 2016 22:05:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5a7de4841b0ea4d605ba377d7e89d439bc3598f4ffb8b63970e1f68ac001aa`  
		Last Modified: Tue, 27 Dec 2016 22:23:10 GMT  
		Size: 344.0 KB (343976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29191b92622baa81720f486aded05f2a7f5da54513a05113f636092a36eead5c`  
		Last Modified: Tue, 27 Dec 2016 22:23:14 GMT  
		Size: 7.8 MB (7839264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e18960557af577378996a77285981712a835355511ecd46f1aee96f4aed4812`  
		Last Modified: Tue, 27 Dec 2016 22:23:09 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.1`

```console
$ docker pull telegraf@sha256:5c386bdace70d7afac7ba0415d55756934d5d1c38fff2ba3bdb47a8af9f925cd
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80165102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9be0e41e008f1641aac8764b9c5cbfea7ee3181c6d500814386e6708156f0c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:40:44 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 16 Dec 2016 03:40:52 GMT
ENV TELEGRAF_VERSION=1.1.2
# Fri, 16 Dec 2016 03:40:54 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 16 Dec 2016 03:40:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Dec 2016 03:40:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Dec 2016 03:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2016 03:40:55 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac7afb70f44908c74f2e798fa07e77a8386906697ca147ca8497085206e31be`  
		Last Modified: Thu, 15 Dec 2016 19:41:07 GMT  
		Size: 4.6 MB (4599915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6ea70bc98bcc6045d90a6afeb33e68c5181f92a00e603eceea7654ae0f70d`  
		Last Modified: Wed, 21 Dec 2016 20:25:44 GMT  
		Size: 6.9 KB (6851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4625c0e22744b315ffe00078ba23c0d431643d728bf69ccb95a4bc1baba2e14`  
		Last Modified: Wed, 21 Dec 2016 20:26:28 GMT  
		Size: 9.8 MB (9791194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a16a64e8d981627eb57162e06d4c90a04299f5e045fb433ba4e29fc785ca2b`  
		Last Modified: Wed, 21 Dec 2016 20:26:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.1.2`

```console
$ docker pull telegraf@sha256:5c386bdace70d7afac7ba0415d55756934d5d1c38fff2ba3bdb47a8af9f925cd
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.1.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80165102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9be0e41e008f1641aac8764b9c5cbfea7ee3181c6d500814386e6708156f0c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:40:44 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 16 Dec 2016 03:40:52 GMT
ENV TELEGRAF_VERSION=1.1.2
# Fri, 16 Dec 2016 03:40:54 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 16 Dec 2016 03:40:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Dec 2016 03:40:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Dec 2016 03:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2016 03:40:55 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac7afb70f44908c74f2e798fa07e77a8386906697ca147ca8497085206e31be`  
		Last Modified: Thu, 15 Dec 2016 19:41:07 GMT  
		Size: 4.6 MB (4599915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6ea70bc98bcc6045d90a6afeb33e68c5181f92a00e603eceea7654ae0f70d`  
		Last Modified: Wed, 21 Dec 2016 20:25:44 GMT  
		Size: 6.9 KB (6851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4625c0e22744b315ffe00078ba23c0d431643d728bf69ccb95a4bc1baba2e14`  
		Last Modified: Wed, 21 Dec 2016 20:26:28 GMT  
		Size: 9.8 MB (9791194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a16a64e8d981627eb57162e06d4c90a04299f5e045fb433ba4e29fc785ca2b`  
		Last Modified: Wed, 21 Dec 2016 20:26:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:5c386bdace70d7afac7ba0415d55756934d5d1c38fff2ba3bdb47a8af9f925cd
```

-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80165102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9be0e41e008f1641aac8764b9c5cbfea7ee3181c6d500814386e6708156f0c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:40:44 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 16 Dec 2016 03:40:52 GMT
ENV TELEGRAF_VERSION=1.1.2
# Fri, 16 Dec 2016 03:40:54 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 16 Dec 2016 03:40:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Dec 2016 03:40:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 16 Dec 2016 03:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2016 03:40:55 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac7afb70f44908c74f2e798fa07e77a8386906697ca147ca8497085206e31be`  
		Last Modified: Thu, 15 Dec 2016 19:41:07 GMT  
		Size: 4.6 MB (4599915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6ea70bc98bcc6045d90a6afeb33e68c5181f92a00e603eceea7654ae0f70d`  
		Last Modified: Wed, 21 Dec 2016 20:25:44 GMT  
		Size: 6.9 KB (6851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4625c0e22744b315ffe00078ba23c0d431643d728bf69ccb95a4bc1baba2e14`  
		Last Modified: Wed, 21 Dec 2016 20:26:28 GMT  
		Size: 9.8 MB (9791194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a16a64e8d981627eb57162e06d4c90a04299f5e045fb433ba4e29fc785ca2b`  
		Last Modified: Wed, 21 Dec 2016 20:26:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.1-alpine`

```console
$ docker pull telegraf@sha256:c41ad0dc70646d2162edd0a6279829ff961fda0b4f51436c63608eabb52d6f72
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9122367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:082087e1b0456529b8301e4a97dc955e1f6de59accf95141229d5614b92c468f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:17:42 GMT
ENV TELEGRAF_VERSION=1.1.2
# Fri, 13 Jan 2017 20:17:43 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 13 Jan 2017 20:17:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:17:52 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 13 Jan 2017 20:17:53 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 13 Jan 2017 20:17:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:17:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56993c54f54d5366fe933466dc718269c1ac05e6d9be83469368648f971267b4`  
		Last Modified: Fri, 13 Jan 2017 20:20:37 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820ddf63f701d5b148000c7d9bf19c711e2c056d2931c2e569963a4ebec7ed84`  
		Last Modified: Fri, 13 Jan 2017 20:20:39 GMT  
		Size: 6.9 MB (6867367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615c4a1ebb7375f7264ab55bff6077f840fb7f542673bba8d4a933f9cc718e5c`  
		Last Modified: Fri, 13 Jan 2017 20:20:36 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.1.2-alpine`

```console
$ docker pull telegraf@sha256:c41ad0dc70646d2162edd0a6279829ff961fda0b4f51436c63608eabb52d6f72
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.1.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9122367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:082087e1b0456529b8301e4a97dc955e1f6de59accf95141229d5614b92c468f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:17:42 GMT
ENV TELEGRAF_VERSION=1.1.2
# Fri, 13 Jan 2017 20:17:43 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 13 Jan 2017 20:17:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:17:52 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 13 Jan 2017 20:17:53 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 13 Jan 2017 20:17:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:17:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56993c54f54d5366fe933466dc718269c1ac05e6d9be83469368648f971267b4`  
		Last Modified: Fri, 13 Jan 2017 20:20:37 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820ddf63f701d5b148000c7d9bf19c711e2c056d2931c2e569963a4ebec7ed84`  
		Last Modified: Fri, 13 Jan 2017 20:20:39 GMT  
		Size: 6.9 MB (6867367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615c4a1ebb7375f7264ab55bff6077f840fb7f542673bba8d4a933f9cc718e5c`  
		Last Modified: Fri, 13 Jan 2017 20:20:36 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:c41ad0dc70646d2162edd0a6279829ff961fda0b4f51436c63608eabb52d6f72
```

-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9122367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:082087e1b0456529b8301e4a97dc955e1f6de59accf95141229d5614b92c468f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:17:42 GMT
ENV TELEGRAF_VERSION=1.1.2
# Fri, 13 Jan 2017 20:17:43 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 13 Jan 2017 20:17:52 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:17:52 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 13 Jan 2017 20:17:53 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 13 Jan 2017 20:17:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:17:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56993c54f54d5366fe933466dc718269c1ac05e6d9be83469368648f971267b4`  
		Last Modified: Fri, 13 Jan 2017 20:20:37 GMT  
		Size: 352.8 KB (352754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820ddf63f701d5b148000c7d9bf19c711e2c056d2931c2e569963a4ebec7ed84`  
		Last Modified: Fri, 13 Jan 2017 20:20:39 GMT  
		Size: 6.9 MB (6867367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615c4a1ebb7375f7264ab55bff6077f840fb7f542673bba8d4a933f9cc718e5c`  
		Last Modified: Fri, 13 Jan 2017 20:20:36 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.2.0-rc1`

```console
$ docker pull telegraf@sha256:e12e834cef459fb0ef69ff38f67fdcc65d23c84b07f481beb10855349d2e5510
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2.0-rc1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80211752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c669b72b96fb2aaa5787919be6892860d602532733eb0d7b7985f84384bf58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:40:44 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Fri, 13 Jan 2017 20:17:55 GMT
ENV TELEGRAF_VERSION=1.2.0~rc1
# Fri, 13 Jan 2017 20:18:04 GMT
RUN wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}_amd64.deb.asc telegraf_${TELEGRAF_VERSION}_amd64.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}_amd64.deb &&     rm -f telegraf_${TELEGRAF_VERSION}_amd64.deb*
# Fri, 13 Jan 2017 20:18:05 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 13 Jan 2017 20:18:05 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 13 Jan 2017 20:18:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:18:06 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac7afb70f44908c74f2e798fa07e77a8386906697ca147ca8497085206e31be`  
		Last Modified: Thu, 15 Dec 2016 19:41:07 GMT  
		Size: 4.6 MB (4599915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6ea70bc98bcc6045d90a6afeb33e68c5181f92a00e603eceea7654ae0f70d`  
		Last Modified: Wed, 21 Dec 2016 20:25:44 GMT  
		Size: 6.9 KB (6851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef3bdf4140193bc43c0aa68a2da234232c00b782e3ae60a9e7f9cff4db51cb`  
		Last Modified: Fri, 13 Jan 2017 20:21:29 GMT  
		Size: 9.8 MB (9837845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c86c37fbe6d9d0962bfb79600070b5aedaf247edfc9be64a63ae367cc06aa6`  
		Last Modified: Fri, 13 Jan 2017 20:21:26 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.2.0-rc1-alpine`

```console
$ docker pull telegraf@sha256:5855484b7a7c8e6bc3c86eb9d67182ff63aace1e49cbb4aff9f5fdf81ae6518e
```

-	Platforms:
	-	linux; amd64

### `telegraf:1.2.0-rc1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9156225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a785f01aa966c6a4f3ace03153cb1b1a03646ff717a82fc22161a1ca9d48ac94`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 13 Jan 2017 20:18:07 GMT
ENV TELEGRAF_VERSION=1.2.0~rc1
# Fri, 13 Jan 2017 20:18:09 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 13 Jan 2017 20:18:20 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 13 Jan 2017 20:18:20 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 13 Jan 2017 20:18:21 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 13 Jan 2017 20:18:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jan 2017 20:18:22 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e302c5246b32ff63a621910c65d39b83ceda9dac81c075b73863646704aed54`  
		Last Modified: Fri, 13 Jan 2017 20:21:49 GMT  
		Size: 352.8 KB (352765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d65536aef3c3cdbaeaa2c3a8548841472db6777b1fa1885a976433d643fde8`  
		Last Modified: Fri, 13 Jan 2017 20:21:51 GMT  
		Size: 6.9 MB (6901214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33066630064515a5cd642c77b3addc41fc9d8363a1291d28df8c7cac659fe3f`  
		Last Modified: Fri, 13 Jan 2017 20:21:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
