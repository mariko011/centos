<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.0`](#chronograf130)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.0-alpine`](#chronograf130-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:4c1d6c292d14f2c300d13984279c21a288e8b118df5962a53bcbee89150606af
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41503254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a49bd1679777e204849d936c23b1cb8cea5299d6dc6aecfbc1b565465a9c0c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 16 May 2017 20:05:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:05:19 GMT
ENV CHRONOGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:05:40 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 16 May 2017 20:06:15 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 16 May 2017 20:06:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 16 May 2017 20:06:37 GMT
EXPOSE 8888/tcp
# Tue, 16 May 2017 20:06:38 GMT
VOLUME [/var/lib/chronograf]
# Tue, 16 May 2017 20:06:40 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Tue, 16 May 2017 20:06:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:06:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb4be7f47b56b688fc7092f04bacc1a400722a9a54a8afb3ba4fbb4f85a73a1`  
		Last Modified: Tue, 16 May 2017 20:09:12 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e820c5d9f4ddacdb4737a061c10d9fd736dbbb3a6e519dabb4e8aed63f7a76`  
		Last Modified: Tue, 16 May 2017 20:09:14 GMT  
		Size: 10.8 MB (10835488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d216afdff31c7907354d60b5752d350608963467712065bd924fb6168391d`  
		Last Modified: Tue, 16 May 2017 20:09:13 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbbf13ee2ea6d93d06e5c375d4555a261e3b18b8a044c875a944074f93463da`  
		Last Modified: Tue, 16 May 2017 20:09:13 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969b6d7830a4f5ecc7566ab7931140fd626da5ae4bc3f7289156318f881eb7df`  
		Last Modified: Tue, 16 May 2017 20:09:12 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.0`

```console
$ docker pull chronograf@sha256:4c1d6c292d14f2c300d13984279c21a288e8b118df5962a53bcbee89150606af
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41503254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a49bd1679777e204849d936c23b1cb8cea5299d6dc6aecfbc1b565465a9c0c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 16 May 2017 20:05:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:05:19 GMT
ENV CHRONOGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:05:40 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 16 May 2017 20:06:15 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 16 May 2017 20:06:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 16 May 2017 20:06:37 GMT
EXPOSE 8888/tcp
# Tue, 16 May 2017 20:06:38 GMT
VOLUME [/var/lib/chronograf]
# Tue, 16 May 2017 20:06:40 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Tue, 16 May 2017 20:06:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:06:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb4be7f47b56b688fc7092f04bacc1a400722a9a54a8afb3ba4fbb4f85a73a1`  
		Last Modified: Tue, 16 May 2017 20:09:12 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e820c5d9f4ddacdb4737a061c10d9fd736dbbb3a6e519dabb4e8aed63f7a76`  
		Last Modified: Tue, 16 May 2017 20:09:14 GMT  
		Size: 10.8 MB (10835488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d216afdff31c7907354d60b5752d350608963467712065bd924fb6168391d`  
		Last Modified: Tue, 16 May 2017 20:09:13 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbbf13ee2ea6d93d06e5c375d4555a261e3b18b8a044c875a944074f93463da`  
		Last Modified: Tue, 16 May 2017 20:09:13 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969b6d7830a4f5ecc7566ab7931140fd626da5ae4bc3f7289156318f881eb7df`  
		Last Modified: Tue, 16 May 2017 20:09:12 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:4c1d6c292d14f2c300d13984279c21a288e8b118df5962a53bcbee89150606af
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41503254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a49bd1679777e204849d936c23b1cb8cea5299d6dc6aecfbc1b565465a9c0c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 16 May 2017 20:05:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 May 2017 20:05:19 GMT
ENV CHRONOGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:05:40 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 16 May 2017 20:06:15 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 16 May 2017 20:06:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 16 May 2017 20:06:37 GMT
EXPOSE 8888/tcp
# Tue, 16 May 2017 20:06:38 GMT
VOLUME [/var/lib/chronograf]
# Tue, 16 May 2017 20:06:40 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Tue, 16 May 2017 20:06:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:06:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb4be7f47b56b688fc7092f04bacc1a400722a9a54a8afb3ba4fbb4f85a73a1`  
		Last Modified: Tue, 16 May 2017 20:09:12 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e820c5d9f4ddacdb4737a061c10d9fd736dbbb3a6e519dabb4e8aed63f7a76`  
		Last Modified: Tue, 16 May 2017 20:09:14 GMT  
		Size: 10.8 MB (10835488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77d216afdff31c7907354d60b5752d350608963467712065bd924fb6168391d`  
		Last Modified: Tue, 16 May 2017 20:09:13 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbbf13ee2ea6d93d06e5c375d4555a261e3b18b8a044c875a944074f93463da`  
		Last Modified: Tue, 16 May 2017 20:09:13 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969b6d7830a4f5ecc7566ab7931140fd626da5ae4bc3f7289156318f881eb7df`  
		Last Modified: Tue, 16 May 2017 20:09:12 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:9e15dc592371e4a8daf1ac909687fc74898d3b30bb9c4d67bd11843f0865cde3
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7895787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c9c176103710c6889ce119a1baa223067597757ede2026169d4a1b79725253`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:12:35 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 21:12:36 GMT
ENV CHRONOGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:07:49 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:08:04 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 16 May 2017 20:08:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 16 May 2017 20:08:06 GMT
EXPOSE 8888/tcp
# Tue, 16 May 2017 20:08:27 GMT
VOLUME [/var/lib/chronograf]
# Tue, 16 May 2017 20:08:28 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Tue, 16 May 2017 20:08:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:08:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a13920f68bf272055a1dd4d4cb495fcb692178f89febceb93c77d727d092cc8`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 350.6 KB (350636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b961830221cf16ba3bfef8996d35eca90292ff2f5957f478225d4cdaf38aac`  
		Last Modified: Tue, 16 May 2017 20:11:12 GMT  
		Size: 5.6 MB (5552774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df11dec980408ddb740b4b26420faa826f172af2270950114cf67ea01b0baf0e`  
		Last Modified: Tue, 16 May 2017 20:11:11 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d331a8235394192796531371c34497685028b45afcff742511aacdb541619d8f`  
		Last Modified: Tue, 16 May 2017 20:11:11 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479df21e30e2585a8125b587da600876dd46b73993292e7978d14ba5ab18e02c`  
		Last Modified: Tue, 16 May 2017 20:11:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.0-alpine`

```console
$ docker pull chronograf@sha256:9e15dc592371e4a8daf1ac909687fc74898d3b30bb9c4d67bd11843f0865cde3
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7895787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c9c176103710c6889ce119a1baa223067597757ede2026169d4a1b79725253`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:12:35 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 21:12:36 GMT
ENV CHRONOGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:07:49 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:08:04 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 16 May 2017 20:08:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 16 May 2017 20:08:06 GMT
EXPOSE 8888/tcp
# Tue, 16 May 2017 20:08:27 GMT
VOLUME [/var/lib/chronograf]
# Tue, 16 May 2017 20:08:28 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Tue, 16 May 2017 20:08:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:08:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a13920f68bf272055a1dd4d4cb495fcb692178f89febceb93c77d727d092cc8`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 350.6 KB (350636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b961830221cf16ba3bfef8996d35eca90292ff2f5957f478225d4cdaf38aac`  
		Last Modified: Tue, 16 May 2017 20:11:12 GMT  
		Size: 5.6 MB (5552774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df11dec980408ddb740b4b26420faa826f172af2270950114cf67ea01b0baf0e`  
		Last Modified: Tue, 16 May 2017 20:11:11 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d331a8235394192796531371c34497685028b45afcff742511aacdb541619d8f`  
		Last Modified: Tue, 16 May 2017 20:11:11 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479df21e30e2585a8125b587da600876dd46b73993292e7978d14ba5ab18e02c`  
		Last Modified: Tue, 16 May 2017 20:11:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:9e15dc592371e4a8daf1ac909687fc74898d3b30bb9c4d67bd11843f0865cde3
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7895787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c9c176103710c6889ce119a1baa223067597757ede2026169d4a1b79725253`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:12:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 May 2017 21:12:35 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 10 May 2017 21:12:36 GMT
ENV CHRONOGRAF_VERSION=1.3.0
# Tue, 16 May 2017 20:07:49 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 16 May 2017 20:08:04 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 16 May 2017 20:08:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 16 May 2017 20:08:06 GMT
EXPOSE 8888/tcp
# Tue, 16 May 2017 20:08:27 GMT
VOLUME [/var/lib/chronograf]
# Tue, 16 May 2017 20:08:28 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Tue, 16 May 2017 20:08:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 20:08:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ec5250ae05129a6ddefe2a68d7abed588149899f1f40377441da3f68353be0`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a13920f68bf272055a1dd4d4cb495fcb692178f89febceb93c77d727d092cc8`  
		Last Modified: Thu, 11 May 2017 14:54:44 GMT  
		Size: 350.6 KB (350636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b961830221cf16ba3bfef8996d35eca90292ff2f5957f478225d4cdaf38aac`  
		Last Modified: Tue, 16 May 2017 20:11:12 GMT  
		Size: 5.6 MB (5552774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df11dec980408ddb740b4b26420faa826f172af2270950114cf67ea01b0baf0e`  
		Last Modified: Tue, 16 May 2017 20:11:11 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d331a8235394192796531371c34497685028b45afcff742511aacdb541619d8f`  
		Last Modified: Tue, 16 May 2017 20:11:11 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479df21e30e2585a8125b587da600876dd46b73993292e7978d14ba5ab18e02c`  
		Last Modified: Tue, 16 May 2017 20:11:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
