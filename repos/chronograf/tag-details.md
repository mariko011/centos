<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.3`](#chronograf13)
-	[`chronograf:1.3.1`](#chronograf131)
-	[`chronograf:1.3.1.0`](#chronograf1310)
-	[`chronograf:latest`](#chronograflatest)
-	[`chronograf:1.3-alpine`](#chronograf13-alpine)
-	[`chronograf:1.3.1-alpine`](#chronograf131-alpine)
-	[`chronograf:1.3.1.0-alpine`](#chronograf1310-alpine)
-	[`chronograf:alpine`](#chronografalpine)

## `chronograf:1.3`

```console
$ docker pull chronograf@sha256:3c1be12da6e9ad73976dbfcde9956e112bf2e69730f0a190b00da0cab47f634c
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41502321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48f560c2331b551f3102084b82c03a99a212b9fdbe92511756db253e3a7e059`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 16 May 2017 20:05:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 22 May 2017 21:23:54 GMT
ENV CHRONOGRAF_VERSION=1.3.1.0
# Mon, 22 May 2017 21:24:16 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 22 May 2017 21:24:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 22 May 2017 21:24:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 22 May 2017 21:24:19 GMT
EXPOSE 8888/tcp
# Mon, 22 May 2017 21:24:20 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 May 2017 21:24:21 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Mon, 22 May 2017 21:24:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 21:24:22 GMT
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
	-	`sha256:b63ad93de0e978df3dc09dde015bd15a98ad290aa069dfaf15d557aca3512aa2`  
		Last Modified: Mon, 22 May 2017 21:25:26 GMT  
		Size: 10.8 MB (10834559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16163b8d0c56cf4a7579d4f7c567339e9be384368c0a5339aac7bf0f5977cdfc`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6c3aa4829af091298699fae4c1f0adaf31105b62cf989defb964c8c886be67`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c832c302afe999a3ae65de2efc66fdc42d2c39ae41c51af816e6b43c63631ba`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.1`

```console
$ docker pull chronograf@sha256:3c1be12da6e9ad73976dbfcde9956e112bf2e69730f0a190b00da0cab47f634c
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41502321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48f560c2331b551f3102084b82c03a99a212b9fdbe92511756db253e3a7e059`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 16 May 2017 20:05:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 22 May 2017 21:23:54 GMT
ENV CHRONOGRAF_VERSION=1.3.1.0
# Mon, 22 May 2017 21:24:16 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 22 May 2017 21:24:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 22 May 2017 21:24:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 22 May 2017 21:24:19 GMT
EXPOSE 8888/tcp
# Mon, 22 May 2017 21:24:20 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 May 2017 21:24:21 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Mon, 22 May 2017 21:24:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 21:24:22 GMT
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
	-	`sha256:b63ad93de0e978df3dc09dde015bd15a98ad290aa069dfaf15d557aca3512aa2`  
		Last Modified: Mon, 22 May 2017 21:25:26 GMT  
		Size: 10.8 MB (10834559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16163b8d0c56cf4a7579d4f7c567339e9be384368c0a5339aac7bf0f5977cdfc`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6c3aa4829af091298699fae4c1f0adaf31105b62cf989defb964c8c886be67`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c832c302afe999a3ae65de2efc66fdc42d2c39ae41c51af816e6b43c63631ba`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.1.0`

```console
$ docker pull chronograf@sha256:3c1be12da6e9ad73976dbfcde9956e112bf2e69730f0a190b00da0cab47f634c
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.1.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41502321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48f560c2331b551f3102084b82c03a99a212b9fdbe92511756db253e3a7e059`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 16 May 2017 20:05:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 22 May 2017 21:23:54 GMT
ENV CHRONOGRAF_VERSION=1.3.1.0
# Mon, 22 May 2017 21:24:16 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 22 May 2017 21:24:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 22 May 2017 21:24:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 22 May 2017 21:24:19 GMT
EXPOSE 8888/tcp
# Mon, 22 May 2017 21:24:20 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 May 2017 21:24:21 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Mon, 22 May 2017 21:24:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 21:24:22 GMT
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
	-	`sha256:b63ad93de0e978df3dc09dde015bd15a98ad290aa069dfaf15d557aca3512aa2`  
		Last Modified: Mon, 22 May 2017 21:25:26 GMT  
		Size: 10.8 MB (10834559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16163b8d0c56cf4a7579d4f7c567339e9be384368c0a5339aac7bf0f5977cdfc`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6c3aa4829af091298699fae4c1f0adaf31105b62cf989defb964c8c886be67`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c832c302afe999a3ae65de2efc66fdc42d2c39ae41c51af816e6b43c63631ba`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:3c1be12da6e9ad73976dbfcde9956e112bf2e69730f0a190b00da0cab47f634c
```

-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41502321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48f560c2331b551f3102084b82c03a99a212b9fdbe92511756db253e3a7e059`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 16 May 2017 20:05:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 22 May 2017 21:23:54 GMT
ENV CHRONOGRAF_VERSION=1.3.1.0
# Mon, 22 May 2017 21:24:16 GMT
RUN buildDeps='curl'     set -x &&     apt-get update && apt-get install -y ca-certificates $buildDeps --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_amd64.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_amd64.deb.asc chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_amd64.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 22 May 2017 21:24:17 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 22 May 2017 21:24:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 22 May 2017 21:24:19 GMT
EXPOSE 8888/tcp
# Mon, 22 May 2017 21:24:20 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 May 2017 21:24:21 GMT
COPY file:fc95049005144e726efe031fc5e003a8eedf95c50f0041c41c3161e64cf9dbbe in /entrypoint.sh 
# Mon, 22 May 2017 21:24:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 21:24:22 GMT
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
	-	`sha256:b63ad93de0e978df3dc09dde015bd15a98ad290aa069dfaf15d557aca3512aa2`  
		Last Modified: Mon, 22 May 2017 21:25:26 GMT  
		Size: 10.8 MB (10834559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16163b8d0c56cf4a7579d4f7c567339e9be384368c0a5339aac7bf0f5977cdfc`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 12.2 KB (12234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6c3aa4829af091298699fae4c1f0adaf31105b62cf989defb964c8c886be67`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c832c302afe999a3ae65de2efc66fdc42d2c39ae41c51af816e6b43c63631ba`  
		Last Modified: Mon, 22 May 2017 21:25:23 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3-alpine`

```console
$ docker pull chronograf@sha256:cc322cb2304fc86b8fde390c8d23cc40c0e6c8140f2a82471899fbc7dc605001
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8019677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc368d1a70665c9c15953c607e4e0b3ec5ad3dbea161afb5636ddd960845af4c`
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
# Mon, 22 May 2017 21:24:44 GMT
ENV CHRONOGRAF_VERSION=1.3.1.0
# Mon, 22 May 2017 21:24:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 22 May 2017 21:24:53 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 22 May 2017 21:24:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 22 May 2017 21:24:55 GMT
EXPOSE 8888/tcp
# Mon, 22 May 2017 21:24:56 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 May 2017 21:24:57 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Mon, 22 May 2017 21:24:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 21:24:58 GMT
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
	-	`sha256:350ce8c2019bca870f31a15c8b1eda0416ae3fa9dd31739a9cec20b73ea5818d`  
		Last Modified: Mon, 22 May 2017 21:27:00 GMT  
		Size: 5.7 MB (5676666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5cdd5015957f9b917cc04186531151be4e07d12c6e5d69fcce80b21e2452b4`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff7e3a53b138dfda86ef608271e5b6813812c5f9e1f934dfe72ebd70be3f20a`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db5acfba06f7e020dc9b2e8b862a79d81db579147c52ea4e4c13d8e5ced4c4`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.1-alpine`

```console
$ docker pull chronograf@sha256:cc322cb2304fc86b8fde390c8d23cc40c0e6c8140f2a82471899fbc7dc605001
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8019677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc368d1a70665c9c15953c607e4e0b3ec5ad3dbea161afb5636ddd960845af4c`
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
# Mon, 22 May 2017 21:24:44 GMT
ENV CHRONOGRAF_VERSION=1.3.1.0
# Mon, 22 May 2017 21:24:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 22 May 2017 21:24:53 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 22 May 2017 21:24:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 22 May 2017 21:24:55 GMT
EXPOSE 8888/tcp
# Mon, 22 May 2017 21:24:56 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 May 2017 21:24:57 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Mon, 22 May 2017 21:24:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 21:24:58 GMT
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
	-	`sha256:350ce8c2019bca870f31a15c8b1eda0416ae3fa9dd31739a9cec20b73ea5818d`  
		Last Modified: Mon, 22 May 2017 21:27:00 GMT  
		Size: 5.7 MB (5676666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5cdd5015957f9b917cc04186531151be4e07d12c6e5d69fcce80b21e2452b4`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff7e3a53b138dfda86ef608271e5b6813812c5f9e1f934dfe72ebd70be3f20a`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db5acfba06f7e020dc9b2e8b862a79d81db579147c52ea4e4c13d8e5ced4c4`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.3.1.0-alpine`

```console
$ docker pull chronograf@sha256:cc322cb2304fc86b8fde390c8d23cc40c0e6c8140f2a82471899fbc7dc605001
```

-	Platforms:
	-	linux; amd64

### `chronograf:1.3.1.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8019677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc368d1a70665c9c15953c607e4e0b3ec5ad3dbea161afb5636ddd960845af4c`
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
# Mon, 22 May 2017 21:24:44 GMT
ENV CHRONOGRAF_VERSION=1.3.1.0
# Mon, 22 May 2017 21:24:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 22 May 2017 21:24:53 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 22 May 2017 21:24:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 22 May 2017 21:24:55 GMT
EXPOSE 8888/tcp
# Mon, 22 May 2017 21:24:56 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 May 2017 21:24:57 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Mon, 22 May 2017 21:24:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 21:24:58 GMT
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
	-	`sha256:350ce8c2019bca870f31a15c8b1eda0416ae3fa9dd31739a9cec20b73ea5818d`  
		Last Modified: Mon, 22 May 2017 21:27:00 GMT  
		Size: 5.7 MB (5676666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5cdd5015957f9b917cc04186531151be4e07d12c6e5d69fcce80b21e2452b4`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff7e3a53b138dfda86ef608271e5b6813812c5f9e1f934dfe72ebd70be3f20a`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db5acfba06f7e020dc9b2e8b862a79d81db579147c52ea4e4c13d8e5ced4c4`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:cc322cb2304fc86b8fde390c8d23cc40c0e6c8140f2a82471899fbc7dc605001
```

-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8019677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc368d1a70665c9c15953c607e4e0b3ec5ad3dbea161afb5636ddd960845af4c`
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
# Mon, 22 May 2017 21:24:44 GMT
ENV CHRONOGRAF_VERSION=1.3.1.0
# Mon, 22 May 2017 21:24:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 22 May 2017 21:24:53 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Mon, 22 May 2017 21:24:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 22 May 2017 21:24:55 GMT
EXPOSE 8888/tcp
# Mon, 22 May 2017 21:24:56 GMT
VOLUME [/var/lib/chronograf]
# Mon, 22 May 2017 21:24:57 GMT
COPY file:e80544d3968a14563170636bcb18d09f20de2940dee8d16c52668d53d6d6b8ec in /entrypoint.sh 
# Mon, 22 May 2017 21:24:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 21:24:58 GMT
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
	-	`sha256:350ce8c2019bca870f31a15c8b1eda0416ae3fa9dd31739a9cec20b73ea5818d`  
		Last Modified: Mon, 22 May 2017 21:27:00 GMT  
		Size: 5.7 MB (5676666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5cdd5015957f9b917cc04186531151be4e07d12c6e5d69fcce80b21e2452b4`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 12.2 KB (12237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff7e3a53b138dfda86ef608271e5b6813812c5f9e1f934dfe72ebd70be3f20a`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db5acfba06f7e020dc9b2e8b862a79d81db579147c52ea4e4c13d8e5ced4c4`  
		Last Modified: Mon, 22 May 2017 21:26:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
