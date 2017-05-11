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
$ docker pull chronograf@sha256:355a062c0f8c2e687184b4d66c45fdc039e48d45be823752a32390e297114175
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79054587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab1f20d34b977bf5e24f48ef25352ad25ce5dd0262e1173621e4d485b474afd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 23:45:25 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 09 May 2017 23:47:20 GMT
ENV CHRONOGRAF_VERSION=1.3.0
# Wed, 10 May 2017 02:50:14 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Wed, 10 May 2017 02:50:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 May 2017 02:50:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 May 2017 02:50:17 GMT
EXPOSE 8888/tcp
# Wed, 10 May 2017 02:50:18 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 May 2017 02:50:19 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Wed, 10 May 2017 02:50:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 02:50:20 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525d816deee27f94e165eb6471db238a8ac3525c936bf5a05aa358949d0f620`  
		Last Modified: Wed, 10 May 2017 02:51:18 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e568728ece293985b48ac53c1438b7a12ad13ab6a91bc4c9c9d65071dedcdf7`  
		Last Modified: Wed, 10 May 2017 02:51:19 GMT  
		Size: 7.2 MB (7172034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ef3b8f8f4d281777250592dfff6c2715bbd8a00b85aa2046a3609be9ecddb`  
		Last Modified: Wed, 10 May 2017 02:51:18 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a140072eae7e07c6dedbeaf4f0082cf0758ad5379289834c8e1669a0b375873`  
		Last Modified: Wed, 10 May 2017 02:51:17 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cc0e97cecf8d360eb8bdd7bc02cf5bab72672de34b65bf4291b4f8084a88d6`  
		Last Modified: Wed, 10 May 2017 02:51:19 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.0`

```console
$ docker pull chronograf@sha256:355a062c0f8c2e687184b4d66c45fdc039e48d45be823752a32390e297114175
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79054587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab1f20d34b977bf5e24f48ef25352ad25ce5dd0262e1173621e4d485b474afd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 23:45:25 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 09 May 2017 23:47:20 GMT
ENV CHRONOGRAF_VERSION=1.3.0
# Wed, 10 May 2017 02:50:14 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Wed, 10 May 2017 02:50:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 May 2017 02:50:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 May 2017 02:50:17 GMT
EXPOSE 8888/tcp
# Wed, 10 May 2017 02:50:18 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 May 2017 02:50:19 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Wed, 10 May 2017 02:50:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 02:50:20 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525d816deee27f94e165eb6471db238a8ac3525c936bf5a05aa358949d0f620`  
		Last Modified: Wed, 10 May 2017 02:51:18 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e568728ece293985b48ac53c1438b7a12ad13ab6a91bc4c9c9d65071dedcdf7`  
		Last Modified: Wed, 10 May 2017 02:51:19 GMT  
		Size: 7.2 MB (7172034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ef3b8f8f4d281777250592dfff6c2715bbd8a00b85aa2046a3609be9ecddb`  
		Last Modified: Wed, 10 May 2017 02:51:18 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a140072eae7e07c6dedbeaf4f0082cf0758ad5379289834c8e1669a0b375873`  
		Last Modified: Wed, 10 May 2017 02:51:17 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cc0e97cecf8d360eb8bdd7bc02cf5bab72672de34b65bf4291b4f8084a88d6`  
		Last Modified: Wed, 10 May 2017 02:51:19 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:355a062c0f8c2e687184b4d66c45fdc039e48d45be823752a32390e297114175
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79054587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab1f20d34b977bf5e24f48ef25352ad25ce5dd0262e1173621e4d485b474afd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 23:45:25 GMT
RUN gpg     --keyserver hkp://ha.pool.sks-keyservers.net     --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5
# Tue, 09 May 2017 23:47:20 GMT
ENV CHRONOGRAF_VERSION=1.3.0
# Wed, 10 May 2017 02:50:14 GMT
RUN wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb*
# Wed, 10 May 2017 02:50:15 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 May 2017 02:50:16 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 May 2017 02:50:17 GMT
EXPOSE 8888/tcp
# Wed, 10 May 2017 02:50:18 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 May 2017 02:50:19 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Wed, 10 May 2017 02:50:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 02:50:20 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525d816deee27f94e165eb6471db238a8ac3525c936bf5a05aa358949d0f620`  
		Last Modified: Wed, 10 May 2017 02:51:18 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e568728ece293985b48ac53c1438b7a12ad13ab6a91bc4c9c9d65071dedcdf7`  
		Last Modified: Wed, 10 May 2017 02:51:19 GMT  
		Size: 7.2 MB (7172034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ef3b8f8f4d281777250592dfff6c2715bbd8a00b85aa2046a3609be9ecddb`  
		Last Modified: Wed, 10 May 2017 02:51:18 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a140072eae7e07c6dedbeaf4f0082cf0758ad5379289834c8e1669a0b375873`  
		Last Modified: Wed, 10 May 2017 02:51:17 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cc0e97cecf8d360eb8bdd7bc02cf5bab72672de34b65bf4291b4f8084a88d6`  
		Last Modified: Wed, 10 May 2017 02:51:19 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:b59cf30137330859b9c5c94330559bd2d65694fa91d15bd9b10665b90ca63032
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7895757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8441991f70068c46476f590bdb0ff72ee4493914f73785712459bf121791c198`
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
# Wed, 10 May 2017 21:12:41 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:12:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 May 2017 21:12:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 May 2017 21:12:44 GMT
EXPOSE 8888/tcp
# Wed, 10 May 2017 21:12:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 May 2017 21:12:45 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Wed, 10 May 2017 21:12:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:12:47 GMT
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
	-	`sha256:3d41b053941b073af4aefd1d2893f4a78884af453f48521ed43e6c8fa86af859`  
		Last Modified: Thu, 11 May 2017 14:54:45 GMT  
		Size: 5.6 MB (5552748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5a353d794fa7f8d132d59648e48ae7793c591ad3db0b5ab71a765aa276e46`  
		Last Modified: Thu, 11 May 2017 14:54:43 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ab2cc35df444526e505ff2753f0e78a07a189f71debde52d0cd3010e569970`  
		Last Modified: Thu, 11 May 2017 14:54:43 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e435e0827666dde5a4b0624c8373467ba3e8d56fb330febdc3a2fb2163e60b`  
		Last Modified: Thu, 11 May 2017 14:54:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.0-alpine`

```console
$ docker pull chronograf@sha256:b59cf30137330859b9c5c94330559bd2d65694fa91d15bd9b10665b90ca63032
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7895757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8441991f70068c46476f590bdb0ff72ee4493914f73785712459bf121791c198`
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
# Wed, 10 May 2017 21:12:41 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:12:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 May 2017 21:12:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 May 2017 21:12:44 GMT
EXPOSE 8888/tcp
# Wed, 10 May 2017 21:12:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 May 2017 21:12:45 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Wed, 10 May 2017 21:12:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:12:47 GMT
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
	-	`sha256:3d41b053941b073af4aefd1d2893f4a78884af453f48521ed43e6c8fa86af859`  
		Last Modified: Thu, 11 May 2017 14:54:45 GMT  
		Size: 5.6 MB (5552748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5a353d794fa7f8d132d59648e48ae7793c591ad3db0b5ab71a765aa276e46`  
		Last Modified: Thu, 11 May 2017 14:54:43 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ab2cc35df444526e505ff2753f0e78a07a189f71debde52d0cd3010e569970`  
		Last Modified: Thu, 11 May 2017 14:54:43 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e435e0827666dde5a4b0624c8373467ba3e8d56fb330febdc3a2fb2163e60b`  
		Last Modified: Thu, 11 May 2017 14:54:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:b59cf30137330859b9c5c94330559bd2d65694fa91d15bd9b10665b90ca63032
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7895757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8441991f70068c46476f590bdb0ff72ee4493914f73785712459bf121791c198`
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
# Wed, 10 May 2017 21:12:41 GMT
RUN apk add --no-cache --virtual .build-deps wget gnupg tar &&     gpg --keyserver hkp://ha.pool.sks-keyservers.net         --recv-keys 05CE15085FC09D18E99EFB22684A14CF2582E0C5 &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 10 May 2017 21:12:42 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 10 May 2017 21:12:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 10 May 2017 21:12:44 GMT
EXPOSE 8888/tcp
# Wed, 10 May 2017 21:12:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 10 May 2017 21:12:45 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Wed, 10 May 2017 21:12:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 21:12:47 GMT
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
	-	`sha256:3d41b053941b073af4aefd1d2893f4a78884af453f48521ed43e6c8fa86af859`  
		Last Modified: Thu, 11 May 2017 14:54:45 GMT  
		Size: 5.6 MB (5552748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5a353d794fa7f8d132d59648e48ae7793c591ad3db0b5ab71a765aa276e46`  
		Last Modified: Thu, 11 May 2017 14:54:43 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ab2cc35df444526e505ff2753f0e78a07a189f71debde52d0cd3010e569970`  
		Last Modified: Thu, 11 May 2017 14:54:43 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e435e0827666dde5a4b0624c8373467ba3e8d56fb330febdc3a2fb2163e60b`  
		Last Modified: Thu, 11 May 2017 14:54:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
