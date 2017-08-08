<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.5`](#chronograf135)
-	[`chronograf:1.3.5.0`](#chronograf1350)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.5-alpine`](#chronograf135-alpine)
-	[`chronograf:1.3.5.0-alpine`](#chronograf1350-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:568bbe1c6d44ac840a8e25ebcf5e5326f4ac448a4b0bd2dcbe39161981ed10d4
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41108307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214f4a3eee34e4be16ceb867dade0fc0c1ce045259d1d12f9edc24d534aaf522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 08 Aug 2017 20:50:38 GMT
ENV CHRONOGRAF_VERSION=1.3.5.0
# Tue, 08 Aug 2017 20:51:05 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 20:51:09 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 20:51:10 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 20:51:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 08 Aug 2017 20:51:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 20:51:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6644a660d5febb6b9e8ec7f7f32f24e4b10b0b6e3b8ac0a49002203e8b64628`  
		Last Modified: Tue, 08 Aug 2017 20:51:40 GMT  
		Size: 11.0 MB (10955441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119aa2504ce879f5080b411957e6edac5efce5df6ba80f101c295fb561f05586`  
		Last Modified: Tue, 08 Aug 2017 20:51:43 GMT  
		Size: 12.2 KB (12230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d31c2173bc86651f3593142d093394082fbaede760228d3de1713313eb7a3c`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8df7abaf2c194de7cb66d660d614df039bdfb74144255113f5573c986bbfd9`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.5`

```console
$ docker pull chronograf@sha256:568bbe1c6d44ac840a8e25ebcf5e5326f4ac448a4b0bd2dcbe39161981ed10d4
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41108307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214f4a3eee34e4be16ceb867dade0fc0c1ce045259d1d12f9edc24d534aaf522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 08 Aug 2017 20:50:38 GMT
ENV CHRONOGRAF_VERSION=1.3.5.0
# Tue, 08 Aug 2017 20:51:05 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 20:51:09 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 20:51:10 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 20:51:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 08 Aug 2017 20:51:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 20:51:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6644a660d5febb6b9e8ec7f7f32f24e4b10b0b6e3b8ac0a49002203e8b64628`  
		Last Modified: Tue, 08 Aug 2017 20:51:40 GMT  
		Size: 11.0 MB (10955441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119aa2504ce879f5080b411957e6edac5efce5df6ba80f101c295fb561f05586`  
		Last Modified: Tue, 08 Aug 2017 20:51:43 GMT  
		Size: 12.2 KB (12230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d31c2173bc86651f3593142d093394082fbaede760228d3de1713313eb7a3c`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8df7abaf2c194de7cb66d660d614df039bdfb74144255113f5573c986bbfd9`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.5.0`

```console
$ docker pull chronograf@sha256:568bbe1c6d44ac840a8e25ebcf5e5326f4ac448a4b0bd2dcbe39161981ed10d4
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.5.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41108307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214f4a3eee34e4be16ceb867dade0fc0c1ce045259d1d12f9edc24d534aaf522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 08 Aug 2017 20:50:38 GMT
ENV CHRONOGRAF_VERSION=1.3.5.0
# Tue, 08 Aug 2017 20:51:05 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 20:51:09 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 20:51:10 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 20:51:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 08 Aug 2017 20:51:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 20:51:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6644a660d5febb6b9e8ec7f7f32f24e4b10b0b6e3b8ac0a49002203e8b64628`  
		Last Modified: Tue, 08 Aug 2017 20:51:40 GMT  
		Size: 11.0 MB (10955441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119aa2504ce879f5080b411957e6edac5efce5df6ba80f101c295fb561f05586`  
		Last Modified: Tue, 08 Aug 2017 20:51:43 GMT  
		Size: 12.2 KB (12230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d31c2173bc86651f3593142d093394082fbaede760228d3de1713313eb7a3c`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8df7abaf2c194de7cb66d660d614df039bdfb74144255113f5573c986bbfd9`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:568bbe1c6d44ac840a8e25ebcf5e5326f4ac448a4b0bd2dcbe39161981ed10d4
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41108307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214f4a3eee34e4be16ceb867dade0fc0c1ce045259d1d12f9edc24d534aaf522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:30:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 08 Aug 2017 20:50:38 GMT
ENV CHRONOGRAF_VERSION=1.3.5.0
# Tue, 08 Aug 2017 20:51:05 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 20:51:09 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 20:51:09 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 20:51:10 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 20:51:10 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 08 Aug 2017 20:51:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 20:51:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb175013ad1b707de22e479082aa89bb0439e53542dd2b6722d3474dd256991`  
		Last Modified: Tue, 25 Jul 2017 00:30:47 GMT  
		Size: 6.8 KB (6786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6644a660d5febb6b9e8ec7f7f32f24e4b10b0b6e3b8ac0a49002203e8b64628`  
		Last Modified: Tue, 08 Aug 2017 20:51:40 GMT  
		Size: 11.0 MB (10955441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119aa2504ce879f5080b411957e6edac5efce5df6ba80f101c295fb561f05586`  
		Last Modified: Tue, 08 Aug 2017 20:51:43 GMT  
		Size: 12.2 KB (12230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d31c2173bc86651f3593142d093394082fbaede760228d3de1713313eb7a3c`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 11.9 KB (11893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8df7abaf2c194de7cb66d660d614df039bdfb74144255113f5573c986bbfd9`  
		Last Modified: Tue, 08 Aug 2017 20:51:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:13614065e0db916a53e3d98dac219eccae9822bf3feb5bcb0733c38879229c18
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8115663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf05945566c7179474b4e5b0c5bc04dd9e2da1f2bbb076ed3556d58ecded8af`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 08 Aug 2017 20:51:18 GMT
ENV CHRONOGRAF_VERSION=1.3.5.0
# Tue, 08 Aug 2017 20:51:25 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 08 Aug 2017 20:51:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 20:51:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 20:51:27 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 20:51:27 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 20:51:30 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 08 Aug 2017 20:51:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 20:51:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d84588cf0d00c4a1ecd23e8e0c7bcad893190ab10bb3ffc1dd8f38ebfab8117`  
		Last Modified: Tue, 08 Aug 2017 20:52:14 GMT  
		Size: 5.8 MB (5770233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b7ff487eedc77731d34f82e09097254c3a243d1d1992518c0651eb307e99a2`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959d8980dfcb2a3789314b0a14a7457e89ece5b2e38a111b7ac2c0eb52dcf272`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 11.9 KB (11892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dda44e73fab82174b205eae367745980cfc14a92f181cb01bd8a497fc8c82d8`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.5-alpine`

```console
$ docker pull chronograf@sha256:13614065e0db916a53e3d98dac219eccae9822bf3feb5bcb0733c38879229c18
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.5-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8115663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf05945566c7179474b4e5b0c5bc04dd9e2da1f2bbb076ed3556d58ecded8af`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 08 Aug 2017 20:51:18 GMT
ENV CHRONOGRAF_VERSION=1.3.5.0
# Tue, 08 Aug 2017 20:51:25 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 08 Aug 2017 20:51:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 20:51:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 20:51:27 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 20:51:27 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 20:51:30 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 08 Aug 2017 20:51:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 20:51:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d84588cf0d00c4a1ecd23e8e0c7bcad893190ab10bb3ffc1dd8f38ebfab8117`  
		Last Modified: Tue, 08 Aug 2017 20:52:14 GMT  
		Size: 5.8 MB (5770233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b7ff487eedc77731d34f82e09097254c3a243d1d1992518c0651eb307e99a2`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959d8980dfcb2a3789314b0a14a7457e89ece5b2e38a111b7ac2c0eb52dcf272`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 11.9 KB (11892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dda44e73fab82174b205eae367745980cfc14a92f181cb01bd8a497fc8c82d8`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.5.0-alpine`

```console
$ docker pull chronograf@sha256:13614065e0db916a53e3d98dac219eccae9822bf3feb5bcb0733c38879229c18
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.5.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8115663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf05945566c7179474b4e5b0c5bc04dd9e2da1f2bbb076ed3556d58ecded8af`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 08 Aug 2017 20:51:18 GMT
ENV CHRONOGRAF_VERSION=1.3.5.0
# Tue, 08 Aug 2017 20:51:25 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 08 Aug 2017 20:51:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 20:51:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 20:51:27 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 20:51:27 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 20:51:30 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 08 Aug 2017 20:51:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 20:51:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d84588cf0d00c4a1ecd23e8e0c7bcad893190ab10bb3ffc1dd8f38ebfab8117`  
		Last Modified: Tue, 08 Aug 2017 20:52:14 GMT  
		Size: 5.8 MB (5770233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b7ff487eedc77731d34f82e09097254c3a243d1d1992518c0651eb307e99a2`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959d8980dfcb2a3789314b0a14a7457e89ece5b2e38a111b7ac2c0eb52dcf272`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 11.9 KB (11892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dda44e73fab82174b205eae367745980cfc14a92f181cb01bd8a497fc8c82d8`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:13614065e0db916a53e3d98dac219eccae9822bf3feb5bcb0733c38879229c18
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8115663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf05945566c7179474b4e5b0c5bc04dd9e2da1f2bbb076ed3556d58ecded8af`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:00:37 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 27 Jun 2017 20:00:42 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 08 Aug 2017 20:51:18 GMT
ENV CHRONOGRAF_VERSION=1.3.5.0
# Tue, 08 Aug 2017 20:51:25 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 08 Aug 2017 20:51:26 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 08 Aug 2017 20:51:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 08 Aug 2017 20:51:27 GMT
EXPOSE 8888/tcp
# Tue, 08 Aug 2017 20:51:27 GMT
VOLUME [/var/lib/chronograf]
# Tue, 08 Aug 2017 20:51:30 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 08 Aug 2017 20:51:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Aug 2017 20:51:31 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6b314535aa55ac76b65cbcaffe7710aedd338149adf862165cb3f42a25b10`  
		Last Modified: Thu, 29 Jun 2017 01:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67497b488602aa172da163c65bac813531a6a148a15054125a38957ba484f7d`  
		Last Modified: Thu, 29 Jun 2017 18:36:22 GMT  
		Size: 350.6 KB (350638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d84588cf0d00c4a1ecd23e8e0c7bcad893190ab10bb3ffc1dd8f38ebfab8117`  
		Last Modified: Tue, 08 Aug 2017 20:52:14 GMT  
		Size: 5.8 MB (5770233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b7ff487eedc77731d34f82e09097254c3a243d1d1992518c0651eb307e99a2`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959d8980dfcb2a3789314b0a14a7457e89ece5b2e38a111b7ac2c0eb52dcf272`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 11.9 KB (11892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dda44e73fab82174b205eae367745980cfc14a92f181cb01bd8a497fc8c82d8`  
		Last Modified: Tue, 08 Aug 2017 20:52:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
